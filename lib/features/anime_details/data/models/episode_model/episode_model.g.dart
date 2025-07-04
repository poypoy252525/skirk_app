// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EpisodeModel _$EpisodeModelFromJson(Map<String, dynamic> json) =>
    _EpisodeModel(
      id: json['id'] as String,
      title: json['title'] as String?,
      image: json['image'] as String?,
      imageHash: json['imageHash'] as String?,
      number: (json['number'] as num).toInt(),
      createdAt: json['createdAt'],
      description: json['description'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$EpisodeModelToJson(_EpisodeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'imageHash': instance.imageHash,
      'number': instance.number,
      'createdAt': instance.createdAt,
      'description': instance.description,
      'url': instance.url,
    };
