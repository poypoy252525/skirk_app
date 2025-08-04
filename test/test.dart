// ignore_for_file: avoid_

import 'package:http/http.dart';
import 'package:skirk_app/extractors/vidwish_extractor.dart';

void main() async {
  Client client = Client();

  final vidwishExtractor = VidwishExtractor(client);
  final sources = await vidwishExtractor.extract(episodeId: '3303');

  print('Sources: ${sources.sources?[0].file}');

  client.close();
}
