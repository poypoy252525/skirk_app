// To parse this JSON data, do
//
//     final animepaheSourcesModel = animepaheSourcesModelFromJson(jsonString);

import 'dart:convert';

List<AnimepaheSourcesModel> animepaheSourcesModelFromJson(String str) =>
    List<AnimepaheSourcesModel>.from(
      json.decode(str).map((x) => AnimepaheSourcesModel.fromJson(x)),
    );

String animepaheSourcesModelToJson(List<AnimepaheSourcesModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AnimepaheSourcesModel {
  String? link;
  String? resolution;
  String? audio;

  AnimepaheSourcesModel({this.link, this.resolution, this.audio});

  factory AnimepaheSourcesModel.fromJson(Map<String, dynamic> json) =>
      AnimepaheSourcesModel(
        link: json["link"],
        resolution: json["resolution"],
        audio: json["audio"],
      );

  Map<String, dynamic> toJson() => {
    "link": link,
    "resolution": resolution,
    "audio": audio,
  };
}
