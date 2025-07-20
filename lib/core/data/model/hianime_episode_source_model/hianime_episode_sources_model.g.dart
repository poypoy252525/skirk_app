// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hianime_episode_sources_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HianimeEpisodeSourcesModel _$HianimeEpisodeSourcesModelFromJson(
  Map<String, dynamic> json,
) => _HianimeEpisodeSourcesModel(
  sources: json['sources'] == null
      ? null
      : Sources.fromJson(json['sources'] as Map<String, dynamic>),
  tracks: (json['tracks'] as List<dynamic>?)
      ?.map((e) => TrackModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  intro: json['intro'] == null
      ? null
      : TimeSkipModel.fromJson(json['intro'] as Map<String, dynamic>),
  outro: json['outro'] == null
      ? null
      : TimeSkipModel.fromJson(json['outro'] as Map<String, dynamic>),
  server: (json['server'] as num?)?.toInt(),
);

Map<String, dynamic> _$HianimeEpisodeSourcesModelToJson(
  _HianimeEpisodeSourcesModel instance,
) => <String, dynamic>{
  'sources': instance.sources,
  'tracks': instance.tracks,
  'intro': instance.intro,
  'outro': instance.outro,
  'server': instance.server,
};

_TimeSkipModel _$TimeSkipModelFromJson(Map<String, dynamic> json) =>
    _TimeSkipModel(
      start: (json['start'] as num?)?.toInt(),
      end: (json['end'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TimeSkipModelToJson(_TimeSkipModel instance) =>
    <String, dynamic>{'start': instance.start, 'end': instance.end};

_Sources _$SourcesFromJson(Map<String, dynamic> json) =>
    _Sources(file: json['file'] as String?, isM3U8: json['isM3U8'] as bool?);

Map<String, dynamic> _$SourcesToJson(_Sources instance) => <String, dynamic>{
  'file': instance.file,
  'isM3U8': instance.isM3U8,
};

_TrackModel _$TrackModelFromJson(Map<String, dynamic> json) => _TrackModel(
  file: json['file'] as String?,
  label: json['label'] as String?,
  kind: json['kind'] as String?,
  trackDefault: json['trackDefault'] as bool?,
);

Map<String, dynamic> _$TrackModelToJson(_TrackModel instance) =>
    <String, dynamic>{
      'file': instance.file,
      'label': instance.label,
      'kind': instance.kind,
      'trackDefault': instance.trackDefault,
    };
