// To parse this JSON data, do
//
//     final mediaModel = mediaModelFromJson(jsonString);

import 'dart:convert';

MediaModel mediaModelFromJson(String str) =>
    MediaModel.fromJson(json.decode(str));

String mediaModelToJson(MediaModel data) => json.encode(data.toJson());

class MediaModel {
  Title? title;
  CoverImageModel? coverImage;
  int? id;
  int? idMal;
  dynamic episodes;
  String? format;
  int? seasonYear;
  List<String>? genres;

  MediaModel({
    this.title,
    this.coverImage,
    this.id,
    this.idMal,
    this.episodes,
    this.format,
    this.seasonYear,
    this.genres,
  });

  factory MediaModel.fromJson(Map<String, dynamic> json) => MediaModel(
    title: json["title"] == null ? null : Title.fromJson(json["title"]),
    coverImage: json["coverImage"] == null
        ? null
        : CoverImageModel.fromJson(json["coverImage"]),
    id: json["id"],
    idMal: json["idMal"],
    episodes: json["episodes"],
    format: json["format"],
    seasonYear: json["seasonYear"],
    genres: json["genres"] == null
        ? []
        : List<String>.from(json["genres"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "title": title?.toJson(),
    "coverImage": coverImage?.toJson(),
    "id": id,
    "idMal": idMal,
    "episodes": episodes,
    "format": format,
    "seasonYear": seasonYear,
    "genres": genres == null ? [] : List<dynamic>.from(genres!.map((x) => x)),
  };
}

class CoverImageModel {
  String? extraLarge;
  String? large;
  String? medium;
  String? color;

  CoverImageModel({this.extraLarge, this.large, this.medium, this.color});

  factory CoverImageModel.fromJson(Map<String, dynamic> json) =>
      CoverImageModel(
        extraLarge: json["extraLarge"],
        large: json["large"],
        medium: json["medium"],
        color: json["color"],
      );

  Map<String, dynamic> toJson() => {
    "extraLarge": extraLarge,
    "large": large,
    "medium": medium,
    "color": color,
  };
}

class Title {
  String? romaji;
  dynamic english;
  String? native;
  String? userPreferred;

  Title({this.romaji, this.english, this.native, this.userPreferred});

  factory Title.fromJson(Map<String, dynamic> json) => Title(
    romaji: json["romaji"],
    english: json["english"],
    native: json["native"],
    userPreferred: json["userPreferred"],
  );

  Map<String, dynamic> toJson() => {
    "romaji": romaji,
    "english": english,
    "native": native,
    "userPreferred": userPreferred,
  };
}
