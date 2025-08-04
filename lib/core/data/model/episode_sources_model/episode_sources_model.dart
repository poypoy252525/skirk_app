// To parse this JSON data, do
//
//     final episodeSourcesModel = episodeSourcesModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'episode_sources_model.freezed.dart';
part 'episode_sources_model.g.dart';

EpisodeSourcesModel episodeSourcesModelFromJson(String str) =>
    EpisodeSourcesModel.fromJson(json.decode(str));

String episodeSourcesModelToJson(EpisodeSourcesModel data) =>
    json.encode(data.toJson());

@freezed
sealed class EpisodeSourcesModel with _$EpisodeSourcesModel {
  const factory EpisodeSourcesModel({
    required String referer,
    List<SourceModel>? sources,
    List<TrackModel>? tracks,
    bool? encrypted,
    TimeSkipModel? intro,
    TimeSkipModel? outro,
    int? server,
  }) = _EpisodeSourcesModel;

  factory EpisodeSourcesModel.fromJson(Map<String, dynamic> json) =>
      _$EpisodeSourcesModelFromJson(json);
}

@freezed
sealed class TimeSkipModel with _$TimeSkipModel {
  const factory TimeSkipModel({int? start, int? end}) = _TimeSkipModel;

  factory TimeSkipModel.fromJson(Map<String, dynamic> json) =>
      _$TimeSkipModelFromJson(json);
}

@freezed
sealed class SourceModel with _$SourceModel {
  const factory SourceModel({String? file, String? type}) = _SourceModel;

  factory SourceModel.fromJson(Map<String, dynamic> json) =>
      _$SourceModelFromJson(json);
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
