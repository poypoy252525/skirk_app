// To parse this JSON data, do
//
//     final episodeModel = episodeModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:skirk_app/features/anime_details/domain/entities/episode.dart';

part 'episode_model.freezed.dart';
part 'episode_model.g.dart';

EpisodeModel episodeModelFromJson(String str) =>
    EpisodeModel.fromJson(json.decode(str));

String episodeModelToJson(EpisodeModel data) => json.encode(data.toJson());

@freezed
sealed class EpisodeModel with _$EpisodeModel {
  const factory EpisodeModel({
    required String id,
    String? title,
    String? image,
    String? imageHash,
    required int number,
    dynamic createdAt,
    String? description,
    String? url,
  }) = _EpisodeModel;

  factory EpisodeModel.fromJson(Map<String, dynamic> json) =>
      _$EpisodeModelFromJson(json);
}

extension EpisodeModelMapper on EpisodeModel {
  Episode toEntity() {
    return Episode(
      id: id,
      number: number,
      createdAt: createdAt,
      description: description,
      image: image,
      imageHash: imageHash,
      title: title,
      url: url,
    );
  }
}
