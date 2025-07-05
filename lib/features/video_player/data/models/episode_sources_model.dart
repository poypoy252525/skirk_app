// To parse this JSON data, do
//
//     final episodeSourcesModel = episodeSourcesModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
import 'package:skirk_app/features/video_player/domain/entities/episode_sources.dart'
    as EpisodeSources;

part 'episode_sources_model.freezed.dart';
part 'episode_sources_model.g.dart';

EpisodeSourcesModel episodeSourcesModelFromJson(String str) =>
    EpisodeSourcesModel.fromJson(json.decode(str));

String episodeSourcesModelToJson(EpisodeSourcesModel data) =>
    json.encode(data.toJson());

@freezed
sealed class EpisodeSourcesModel with _$EpisodeSourcesModel {
  const factory EpisodeSourcesModel({
    Headers? headers,
    List<Track>? tracks,
    Tro? intro,
    Tro? outro,
    required List<Source> sources,
    int? anilistId,
    int? malId,
  }) = _EpisodeSourcesModel;

  factory EpisodeSourcesModel.fromJson(Map<String, dynamic> json) =>
      _$EpisodeSourcesModelFromJson(json);
}

@freezed
sealed class Headers with _$Headers {
  const factory Headers({String? referer}) = _Headers;

  factory Headers.fromJson(Map<String, dynamic> json) =>
      _$HeadersFromJson(json);
}

@freezed
sealed class Tro with _$Tro {
  const factory Tro({int? start, int? end}) = _Tro;

  factory Tro.fromJson(Map<String, dynamic> json) => _$TroFromJson(json);
}

@freezed
sealed class Source with _$Source {
  const factory Source({String? url, bool? isM3U8, String? type}) = _Source;

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);
}

@freezed
sealed class Track with _$Track {
  const factory Track({String? url, String? lang}) = _Track;

  factory Track.fromJson(Map<String, dynamic> json) => _$TrackFromJson(json);
}

extension EpisodeSourcesMapper on EpisodeSourcesModel {
  EpisodeSources.EpisodeSources toEntity() {
    return EpisodeSources.EpisodeSources(
      sources: sources
          .map(
            (element) => EpisodeSources.Source(
              isM3U8: element.isM3U8,
              type: element.type,
              url: element.url,
            ),
          )
          .toList(),
      tracks: tracks
          ?.map(
            (element) =>
                EpisodeSources.Track(lang: element.lang, url: element.url),
          )
          .toList(),
    );
  }
}
