import 'dart:convert';

AnimepaheEpisodeResponseModel animepaheEpisodeModelFromJson(String str) =>
    AnimepaheEpisodeResponseModel.fromJson(json.decode(str));

String animepaheEpisodeModelToJson(AnimepaheEpisodeResponseModel data) =>
    json.encode(data.toJson());

class AnimepaheEpisodeResponseModel {
  int? total;
  int? perPage;
  int? currentPage;
  int? lastPage;
  String? nextPageUrl;
  String? prevPageUrl;
  int? from;
  int? to;
  List<AnimepaheEpisodeModel>? data;

  AnimepaheEpisodeResponseModel({
    this.total,
    this.perPage,
    this.currentPage,
    this.lastPage,
    this.nextPageUrl,
    this.prevPageUrl,
    this.from,
    this.to,
    this.data,
  });

  factory AnimepaheEpisodeResponseModel.fromJson(Map<String, dynamic> json) =>
      AnimepaheEpisodeResponseModel(
        total: json["total"],
        perPage: json["per_page"],
        currentPage: json["current_page"],
        lastPage: json["last_page"],
        nextPageUrl: json["next_page_url"],
        prevPageUrl: json["prev_page_url"],
        from: json["from"],
        to: json["to"],
        data: json["data"] == null
            ? []
            : List<AnimepaheEpisodeModel>.from(
                json["data"]!.map((x) => AnimepaheEpisodeModel.fromJson(x)),
              ),
      );

  Map<String, dynamic> toJson() => {
    "total": total,
    "per_page": perPage,
    "current_page": currentPage,
    "last_page": lastPage,
    "next_page_url": nextPageUrl,
    "prev_page_url": prevPageUrl,
    "from": from,
    "to": to,
    "data": data == null
        ? []
        : List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class AnimepaheEpisodeModel {
  int? id;
  int? animeId;
  int? episode;
  int? episode2;
  String? edition;
  String? title;
  String? snapshot;
  String? disc;
  String? audio;
  String? duration;
  String? session;
  int? filler;
  DateTime? createdAt;

  AnimepaheEpisodeModel({
    this.id,
    this.animeId,
    this.episode,
    this.episode2,
    this.edition,
    this.title,
    this.snapshot,
    this.disc,
    this.audio,
    this.duration,
    this.session,
    this.filler,
    this.createdAt,
  });

  factory AnimepaheEpisodeModel.fromJson(Map<String, dynamic> json) =>
      AnimepaheEpisodeModel(
        id: json["id"],
        animeId: json["anime_id"],
        episode: json["episode"],
        episode2: json["episode2"],
        edition: json["edition"],
        title: json["title"],
        snapshot: json["snapshot"],
        disc: json["disc"],
        audio: json["audio"],
        duration: json["duration"],
        session: json["session"],
        filler: json["filler"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.tryParse(json["created_at"]),
      );

  Map<String, dynamic> toJson() => {
    "id": id,
    "anime_id": animeId,
    "episode": episode,
    "episode2": episode2,
    "edition": edition,
    "title": title,
    "snapshot": snapshot,
    "disc": disc,
    "audio": audio,
    "duration": duration,
    "session": session,
    "filler": filler,
    "created_at": createdAt?.toIso8601String(),
  };
}
