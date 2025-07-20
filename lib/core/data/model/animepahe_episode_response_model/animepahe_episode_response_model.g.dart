// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animepahe_episode_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AnimepaheEpisodeResponseModel _$AnimepaheEpisodeResponseModelFromJson(
  Map<String, dynamic> json,
) => _AnimepaheEpisodeResponseModel(
  total: (json['total'] as num).toInt(),
  perPage: (json['per_page'] as num).toInt(),
  currentPage: (json['current_page'] as num).toInt(),
  lastPage: (json['last_page'] as num).toInt(),
  nextPageUrl: json['next_page_url'],
  prevPageUrl: json['prev_page_url'],
  from: (json['from'] as num).toInt(),
  to: (json['to'] as num).toInt(),
  data: (json['data'] as List<dynamic>)
      .map((e) => EpisodeModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$AnimepaheEpisodeResponseModelToJson(
  _AnimepaheEpisodeResponseModel instance,
) => <String, dynamic>{
  'total': instance.total,
  'per_page': instance.perPage,
  'current_page': instance.currentPage,
  'last_page': instance.lastPage,
  'next_page_url': instance.nextPageUrl,
  'prev_page_url': instance.prevPageUrl,
  'from': instance.from,
  'to': instance.to,
  'data': instance.data,
};

_EpisodeModel _$EpisodeModelFromJson(Map<String, dynamic> json) =>
    _EpisodeModel(
      id: (json['id'] as num).toInt(),
      animeId: (json['anime_id'] as num).toInt(),
      episode: (json['episode'] as num).toInt(),
      episode2: (json['episode2'] as num).toInt(),
      edition: json['edition'] as String,
      title: json['title'] as String,
      snapshot: json['snapshot'] as String,
      disc: json['disc'] as String,
      audio: json['audio'] as String,
      duration: json['duration'] as String,
      session: json['session'] as String,
      filler: (json['filler'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$EpisodeModelToJson(_EpisodeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'anime_id': instance.animeId,
      'episode': instance.episode,
      'episode2': instance.episode2,
      'edition': instance.edition,
      'title': instance.title,
      'snapshot': instance.snapshot,
      'disc': instance.disc,
      'audio': instance.audio,
      'duration': instance.duration,
      'session': instance.session,
      'filler': instance.filler,
      'created_at': instance.createdAt.toIso8601String(),
    };
