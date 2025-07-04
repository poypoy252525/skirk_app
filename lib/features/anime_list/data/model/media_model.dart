// To parse this JSON data, do
//
//     final mediaModel = mediaModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:skirk_app/features/anime_list/domain/entities/media.dart';

part 'media_model.freezed.dart';
part 'media_model.g.dart';

MediaModel mediaModelFromJson(String str) =>
    MediaModel.fromJson(json.decode(str));

String mediaModelToJson(MediaModel data) => json.encode(data.toJson());

@freezed
sealed class MediaModel with _$MediaModel {
  const factory MediaModel({
    required int id,
    Title? title,
    CoverImage? coverImage,
    int? episodes,
    String? format,
    int? seasonYear,
    List<String>? genres,
  }) = _MediaModel;

  factory MediaModel.fromJson(Map<String, dynamic> json) =>
      _$MediaModelFromJson(json);
}

@freezed
sealed class CoverImage with _$CoverImage {
  const factory CoverImage({
    String? extraLarge,
    String? large,
    String? medium,
    String? color,
  }) = _CoverImage;

  factory CoverImage.fromJson(Map<String, dynamic> json) =>
      _$CoverImageFromJson(json);
}

@freezed
sealed class Title with _$Title {
  const factory Title({
    String? romaji,
    String? english,
    String? native,
    String? userPreferred,
  }) = _Title;

  factory Title.fromJson(Map<String, dynamic> json) => _$TitleFromJson(json);
}

extension MediaMapper on MediaModel {
  Media toEntity() {
    return Media(
      id: id,
      title: title?.english ?? title?.romaji ?? title?.native,
      coverImage: coverImage?.extraLarge,
      format: format,
      year: seasonYear,
      genres: genres,
    );
  }
}
