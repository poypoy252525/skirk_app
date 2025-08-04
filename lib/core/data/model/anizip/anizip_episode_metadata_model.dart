// To parse this JSON data, do
//
//     final anizipEpisodeMetadataModel = anizipEpisodeMetadataModelFromJson(jsonString);

import 'dart:convert';

AnizipEpisodeMetadataModel anizipEpisodeMetadataModelFromJson(String str) =>
    AnizipEpisodeMetadataModel.fromJson(json.decode(str));

String anizipEpisodeMetadataModelToJson(AnizipEpisodeMetadataModel data) =>
    json.encode(data.toJson());

class AnizipEpisodeMetadataModel {
  int? tvdbShowId;
  int? tvdbId;
  int? seasonNumber;
  int? episodeNumber;
  int? absoluteEpisodeNumber;
  Title? title;
  DateTime? airDate;
  DateTime? airDateUtc;
  int? runtime;
  String? overview;
  String? image;
  String? episode;
  int? anidbEid;
  int? length;
  DateTime? airdate;
  String? rating;
  String? summary;

  AnizipEpisodeMetadataModel({
    this.tvdbShowId,
    this.tvdbId,
    this.seasonNumber,
    this.episodeNumber,
    this.absoluteEpisodeNumber,
    this.title,
    this.airDate,
    this.airDateUtc,
    this.runtime,
    this.overview,
    this.image,
    this.episode,
    this.anidbEid,
    this.length,
    this.airdate,
    this.rating,
    this.summary,
  });

  factory AnizipEpisodeMetadataModel.fromJson(Map<String, dynamic> json) =>
      AnizipEpisodeMetadataModel(
        tvdbShowId: json["tvdbShowId"],
        tvdbId: json["tvdbId"],
        seasonNumber: json["seasonNumber"],
        episodeNumber: json["episodeNumber"],
        absoluteEpisodeNumber: json["absoluteEpisodeNumber"],
        title: json["title"] == null ? null : Title.fromJson(json["title"]),
        airDate: json["airDate"] == null
            ? null
            : DateTime.tryParse(json["airDate"]),
        airDateUtc: json["airDateUtc"] == null
            ? null
            : DateTime.tryParse(json["airDateUtc"]),
        runtime: json["runtime"],
        overview: json["overview"],
        image: json["image"],
        episode: json["episode"],
        anidbEid: json["anidbEid"],
        length: json["length"],
        airdate: json["airdate"] == null
            ? null
            : DateTime.tryParse(json["airdate"]),
        rating: json["rating"],
        summary: json["summary"],
      );

  Map<String, dynamic> toJson() => {
    "tvdbShowId": tvdbShowId,
    "tvdbId": tvdbId,
    "seasonNumber": seasonNumber,
    "episodeNumber": episodeNumber,
    "absoluteEpisodeNumber": absoluteEpisodeNumber,
    "title": title?.toJson(),
    "airDate":
        "${airDate!.year.toString().padLeft(4, '0')}-${airDate!.month.toString().padLeft(2, '0')}-${airDate!.day.toString().padLeft(2, '0')}",
    "airDateUtc": airDateUtc?.toIso8601String(),
    "runtime": runtime,
    "overview": overview,
    "image": image,
    "episode": episode,
    "anidbEid": anidbEid,
    "length": length,
    "airdate":
        "${airdate!.year.toString().padLeft(4, '0')}-${airdate!.month.toString().padLeft(2, '0')}-${airdate!.day.toString().padLeft(2, '0')}",
    "rating": rating,
    "summary": summary,
  };
}

class Title {
  String? ja;
  String? en;
  String? de;
  String? fr;
  String? xJat;

  Title({this.ja, this.en, this.de, this.fr, this.xJat});

  factory Title.fromJson(Map<String, dynamic> json) => Title(
    ja: json["ja"],
    en: json["en"],
    de: json["de"],
    fr: json["fr"],
    xJat: json["x-jat"],
  );

  Map<String, dynamic> toJson() => {
    "ja": ja,
    "en": en,
    "de": de,
    "fr": fr,
    "x-jat": xJat,
  };
}
