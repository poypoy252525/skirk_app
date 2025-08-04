import 'package:flutter_js/flutter_js.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart';

class KwikExtractor {
  final Client client;
  final Map<String, String> _headers = {'Cookie': '__ddg2_=;'};

  KwikExtractor(this.client);

  final JavascriptRuntime _javascriptRuntime = getJavascriptRuntime(
    forceJavascriptCoreOnAndroid: false,
  );

  // String decrypt(String p, int a, int c, List<dynamic> k, int e, Map<String, dynamic> d) {
  //   e = (c < a ? "" : e(int.parse((c / a).toString()))) +
  //     ((c = c % a) > 35 ? String.fromCharCode(c + 29) : c.toString(36));

  //   return '';
  // }

  Future<List<Map<String, dynamic>>?> _getEmbedLinks({
    required String id,
  }) async {
    final response = await client.get(
      Uri.parse('https://animepahe.ru/play/$id'),
      headers: _headers,
    );

    final document = parse(response.body);

    final menu = document.getElementById('resolutionMenu');

    final resolutions = menu?.children.map((item) {
      return {
        'link': item.attributes['data-src'],
        'resolution': item.attributes['data-resolution'],
        'audio': item.attributes['data-audio'],
      };
    }).toList();

    return resolutions;
  }

  // String unpack(
  //   String p,
  //   int a,
  //   int c,
  //   List<String> k, [
  //   dynamic e,
  //   Map<String, String>? d,
  // ]) {
  //   d ??= {};

  //   String eFn(int c) {
  //     return (c < a ? '' : eFn(c ~/ a)) +
  //         (((c = c % a) > 35)
  //             ? String.fromCharCode(c + 29)
  //             : c.toRadixString(36));
  //   }

  //   while (c-- > 0) {
  //     d[eFn(c)] = (k.length > c && k[c].isNotEmpty) ? k[c] : eFn(c);
  //   }

  //   for (final entry in d.entries) {
  //     p = p.replaceAllMapped(
  //       RegExp(r'\b' + RegExp.escape(entry.key) + r'\b'),
  //       (_) => entry.value,
  //     );
  //   }

  //   return p;
  // }

  Future<List<Map<String, dynamic>>> extract({required String id}) async {
    final embedLinks = await _getEmbedLinks(id: id);

    final responses = await Future.wait(
      embedLinks!.map((item) {
        return client
            .get(
              Uri.parse(item['link']),
              headers: {'Referer': 'https://kwik.si/'},
            )
            .then(
              (response) => {
                'link': response.body,
                'resolution': item['resolution'],
                'audio': item['audio'],
              },
            );
      }),
    );

    List<Map<String, dynamic>> sources = [];

    for (final response in responses) {
      var regex = RegExp(r'eval.*?eval(.*)');

      final matches = regex.firstMatch(response['link']);

      final jscode = matches?.group(1);

      final result = await _javascriptRuntime.evaluateAsync(
        jscode ?? 'console.log("Invalid Javascript code")',
      );

      regex = RegExp(r"source.*?'(.*?)'");

      final decryptedLink = regex.firstMatch(result.stringResult)?.group(1);

      if (decryptedLink == null) break;

      response['link'] = decryptedLink;

      sources.add(response);
    }

    return sources;
  }
}
