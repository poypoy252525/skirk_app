// To parse this JSON data, do
//
//     final hianimeEpisodeSourcesModel = hianimeEpisodeSourcesModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'hianime_episode_sources_model.freezed.dart';
part 'hianime_episode_sources_model.g.dart';

HianimeEpisodeSourcesModel hianimeEpisodeSourcesModelFromJson(String str) =>
    HianimeEpisodeSourcesModel.fromJson(json.decode(str));

String hianimeEpisodeSourcesModelToJson(HianimeEpisodeSourcesModel data) =>
    json.encode(data.toJson());

@freezed
sealed class HianimeEpisodeSourcesModel with _$HianimeEpisodeSourcesModel {
  const factory HianimeEpisodeSourcesModel({
    Sources? sources,
    List<TrackModel>? tracks,
    TimeSkipModel? intro,
    TimeSkipModel? outro,
    int? server,
  }) = _HianimeEpisodeSourcesModel;

  factory HianimeEpisodeSourcesModel.fromJson(Map<String, dynamic> json) =>
      _$HianimeEpisodeSourcesModelFromJson(json);
}

@freezed
sealed class TimeSkipModel with _$TimeSkipModel {
  const factory TimeSkipModel({int? start, int? end}) = _TimeSkipModel;

  factory TimeSkipModel.fromJson(Map<String, dynamic> json) =>
      _$TimeSkipModelFromJson(json);
}

@freezed
sealed class Sources with _$Sources {
  const factory Sources({String? file, bool? isM3U8}) = _Sources;

  factory Sources.fromJson(Map<String, dynamic> json) =>
      _$SourcesFromJson(json);
}

@freezed
sealed class TrackModel with _$TrackModel {
  const factory TrackModel({
    String? file,
    String? label,
    String? kind,
    bool? trackDefault,
  }) = _TrackModel;

  factory TrackModel.fromJson(Map<String, dynamic> json) =>
      _$TrackModelFromJson(json);
}
