// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MediaModel _$MediaModelFromJson(Map<String, dynamic> json) => _MediaModel(
  id: (json['id'] as num).toInt(),
  title: json['title'] == null
      ? null
      : Title.fromJson(json['title'] as Map<String, dynamic>),
  coverImage: json['coverImage'] == null
      ? null
      : CoverImage.fromJson(json['coverImage'] as Map<String, dynamic>),
  episodes: (json['episodes'] as num?)?.toInt(),
  format: json['format'] as String?,
  seasonYear: (json['seasonYear'] as num?)?.toInt(),
  genres: (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$MediaModelToJson(_MediaModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'coverImage': instance.coverImage,
      'episodes': instance.episodes,
      'format': instance.format,
      'seasonYear': instance.seasonYear,
      'genres': instance.genres,
    };

_CoverImage _$CoverImageFromJson(Map<String, dynamic> json) => _CoverImage(
  extraLarge: json['extraLarge'] as String?,
  large: json['large'] as String?,
  medium: json['medium'] as String?,
  color: json['color'] as String?,
);

Map<String, dynamic> _$CoverImageToJson(_CoverImage instance) =>
    <String, dynamic>{
      'extraLarge': instance.extraLarge,
      'large': instance.large,
      'medium': instance.medium,
      'color': instance.color,
    };

_Title _$TitleFromJson(Map<String, dynamic> json) => _Title(
  romaji: json['romaji'] as String?,
  english: json['english'] as String?,
  native: json['native'] as String?,
  userPreferred: json['userPreferred'] as String?,
);

Map<String, dynamic> _$TitleToJson(_Title instance) => <String, dynamic>{
  'romaji': instance.romaji,
  'english': instance.english,
  'native': instance.native,
  'userPreferred': instance.userPreferred,
};
