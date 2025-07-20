class EpisodeSources {
  Sources? sources;
  List<Track>? tracks;
  TimeSkip? intro;
  TimeSkip? outro;
  int? server;

  EpisodeSources({
    this.sources,
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

class Sources {
  String? file;
  bool? isM3U8;

  Sources({this.file, this.isM3U8});
}

class Track {
  String? file;
  String? label;
  String? kind;
  bool? trackDefault;

  Track({this.file, this.label, this.kind, this.trackDefault});
}
