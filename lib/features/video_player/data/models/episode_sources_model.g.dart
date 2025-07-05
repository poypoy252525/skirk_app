// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_sources_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EpisodeSourcesModel _$EpisodeSourcesModelFromJson(Map<String, dynamic> json) =>
    _EpisodeSourcesModel(
      headers: json['headers'] == null
          ? null
          : Headers.fromJson(json['headers'] as Map<String, dynamic>),
      tracks: (json['tracks'] as List<dynamic>?)
          ?.map((e) => Track.fromJson(e as Map<String, dynamic>))
          .toList(),
      intro: json['intro'] == null
          ? null
          : Tro.fromJson(json['intro'] as Map<String, dynamic>),
      outro: json['outro'] == null
          ? null
          : Tro.fromJson(json['outro'] as Map<String, dynamic>),
      sources: (json['sources'] as List<dynamic>)
          .map((e) => Source.fromJson(e as Map<String, dynamic>))
          .toList(),
      anilistId: (json['anilistId'] as num?)?.toInt(),
      malId: (json['malId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$EpisodeSourcesModelToJson(
  _EpisodeSourcesModel instance,
) => <String, dynamic>{
  'headers': instance.headers,
  'tracks': instance.tracks,
  'intro': instance.intro,
  'outro': instance.outro,
  'sources': instance.sources,
  'anilistId': instance.anilistId,
  'malId': instance.malId,
};

_Headers _$HeadersFromJson(Map<String, dynamic> json) =>
    _Headers(referer: json['referer'] as String?);

Map<String, dynamic> _$HeadersToJson(_Headers instance) => <String, dynamic>{
  'referer': instance.referer,
};

_Tro _$TroFromJson(Map<String, dynamic> json) => _Tro(
  start: (json['start'] as num?)?.toInt(),
  end: (json['end'] as num?)?.toInt(),
);

Map<String, dynamic> _$TroToJson(_Tro instance) => <String, dynamic>{
  'start': instance.start,
  'end': instance.end,
};

_Source _$SourceFromJson(Map<String, dynamic> json) => _Source(
  url: json['url'] as String?,
  isM3U8: json['isM3U8'] as bool?,
  type: json['type'] as String?,
);

Map<String, dynamic> _$SourceToJson(_Source instance) => <String, dynamic>{
  'url': instance.url,
  'isM3U8': instance.isM3U8,
  'type': instance.type,
};

_Track _$TrackFromJson(Map<String, dynamic> json) =>
    _Track(url: json['url'] as String?, lang: json['lang'] as String?);

Map<String, dynamic> _$TrackToJson(_Track instance) => <String, dynamic>{
  'url': instance.url,
  'lang': instance.lang,
};
