// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_sources_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EpisodeSourcesModel _$EpisodeSourcesModelFromJson(Map<String, dynamic> json) =>
    _EpisodeSourcesModel(
      referer: json['referer'] as String,
      sources: (json['sources'] as List<dynamic>?)
          ?.map((e) => SourceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      tracks: (json['tracks'] as List<dynamic>?)
          ?.map((e) => TrackModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      encrypted: json['encrypted'] as bool?,
      intro: json['intro'] == null
          ? null
          : TimeSkipModel.fromJson(json['intro'] as Map<String, dynamic>),
      outro: json['outro'] == null
          ? null
          : TimeSkipModel.fromJson(json['outro'] as Map<String, dynamic>),
      server: (json['server'] as num?)?.toInt(),
    );

Map<String, dynamic> _$EpisodeSourcesModelToJson(
  _EpisodeSourcesModel instance,
) => <String, dynamic>{
  'referer': instance.referer,
  'sources': instance.sources,
  'tracks': instance.tracks,
  'encrypted': instance.encrypted,
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

_SourceModel _$SourceModelFromJson(Map<String, dynamic> json) =>
    _SourceModel(file: json['file'] as String?, type: json['type'] as String?);

Map<String, dynamic> _$SourceModelToJson(_SourceModel instance) =>
    <String, dynamic>{'file': instance.file, 'type': instance.type};

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
