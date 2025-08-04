class EpisodeSources {
  List<Source?> sources;
  List<Track>? tracks;
  TimeSkip? intro;
  TimeSkip? outro;
  int? server;
  String referer;

  EpisodeSources({
    required this.sources,
    required this.referer,
    this.tracks,
    this.intro,
    this.outro,
    this.server,
  });
}

class TimeSkip {
  int? start;
  int? end;

  TimeSkip({this.start, this.end});
}

class Source {
  String? file;
  bool? isM3U8;

  Source({this.file, this.isM3U8});
}

class Track {
  String? file;
  String? label;
  String? kind;
  bool? trackDefault;
  String? origin;

  Track({this.file, this.label, this.kind, this.trackDefault, this.origin});
}
