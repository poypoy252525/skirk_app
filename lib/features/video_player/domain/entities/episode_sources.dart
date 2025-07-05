class EpisodeSources {
  Headers? headers;
  List<Track>? tracks;
  Tro? intro;
  Tro? outro;
  List<Source> sources;
  int? anilistId;
  int? malId;

  EpisodeSources({
    this.headers,
    this.tracks,
    this.intro,
    this.outro,
    required this.sources,
    this.anilistId,
    this.malId,
  });
}

class Headers {
  String? referer;

  Headers({this.referer});
}

class Tro {
  int? start;
  int? end;

  Tro({this.start, this.end});
}

class Source {
  String? url;
  bool? isM3U8;
  String? type;

  Source({this.url, this.isM3U8, this.type});
}

class Track {
  String? url;
  String? lang;

  Track({this.url, this.lang});
}
