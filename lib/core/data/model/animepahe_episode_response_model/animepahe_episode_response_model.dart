// To parse this JSON data, do
//
//     final animepaheEpisodeResponseModel = animepaheEpisodeResponseModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'animepahe_episode_response_model.freezed.dart';
part 'animepahe_episode_response_model.g.dart';

AnimepaheEpisodeResponseModel animepaheEpisodeResponseModelFromJson(
  String str,
) => AnimepaheEpisodeResponseModel.fromJson(json.decode(str));

String animepaheEpisodeResponseModelToJson(
  AnimepaheEpisodeResponseModel data,
) => json.encode(data.toJson());

@freezed
sealed class AnimepaheEpisodeResponseModel
    with _$AnimepaheEpisodeResponseModel {
  const factory AnimepaheEpisodeResponseModel({
    required int total,
    @JsonKey(name: "per_page") required int perPage,
    @JsonKey(name: "current_page") required int currentPage,
    @JsonKey(name: "last_page") required int lastPage,
    @JsonKey(name: "next_page_url") required dynamic nextPageUrl,
    @JsonKey(name: "prev_page_url") required dynamic prevPageUrl,
    @JsonKey(name: "from") required int from,
    @JsonKey(name: "to") required int to,
    @JsonKey(name: "data") required List<EpisodeModel> data,
  }) = _AnimepaheEpisodeResponseModel;

  factory AnimepaheEpisodeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AnimepaheEpisodeResponseModelFromJson(json);
}

@freezed
sealed class EpisodeModel with _$EpisodeModel {
  const factory EpisodeModel({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "anime_id") required int animeId,
    @JsonKey(name: "episode") required int episode,
    @JsonKey(name: "episode2") required int episode2,
    @JsonKey(name: "edition") required String edition,
    @JsonKey(name: "title") required String title,
    @JsonKey(name: "snapshot") required String snapshot,
    @JsonKey(name: "disc") required String disc,
    @JsonKey(name: "audio") required String audio,
    @JsonKey(name: "duration") required String duration,
    @JsonKey(name: "session") required String session,
    @JsonKey(name: "filler") required int filler,
    @JsonKey(name: "created_at") required DateTime createdAt,
  }) = _EpisodeModel;

  factory EpisodeModel.fromJson(Map<String, dynamic> json) =>
      _$EpisodeModelFromJson(json);
}
