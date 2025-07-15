// To parse this JSON data, do
//
//     final mediaDetailsModel = mediaDetailsModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:skirk_app/features/anime_details/domain/entities/media_details.dart'
    as entity;

part 'media_details_model.freezed.dart';
part 'media_details_model.g.dart';

MediaDetailsModel mediaDetailsModelFromJson(String str) =>
    MediaDetailsModel.fromJson(json.decode(str));

String mediaDetailsModelToJson(MediaDetailsModel data) =>
    json.encode(data.toJson());

@freezed
sealed class MediaDetailsModel with _$MediaDetailsModel {
  const factory MediaDetailsModel({
    required int id,
    int? idMal,
    Title? title,
    String? type,
    String? format,
    String? status,
    String? description,
    EndDate? startDate,
    EndDate? endDate,
    String? season,
    int? seasonYear,
    int? episodes,
    int? duration,
    dynamic chapters,
    dynamic volumes,
    String? countryOfOrigin,
    bool? isLicensed,
    String? source,
    dynamic hashtag,
    Trailer? trailer,
    int? updatedAt,
    CoverImage? coverImage,
    String? bannerImage,
    List<String>? genres,
    List<String>? synonyms,
    int? averageScore,
    int? meanScore,
    int? popularity,
    bool? isLocked,
    int? trending,
    int? favourites,
    List<Tag>? tags,
    Relations? relations,
    AiringSchedule? characters,
    AiringSchedule? staff,
    AiringSchedule? studios,
    bool? isFavourite,
    bool? isFavouriteBlocked,
    bool? isAdult,
    dynamic nextAiringEpisode,
    AiringSchedule? airingSchedule,
    List<StreamingEpisode>? streamingEpisodes,
  }) = _MediaDetailsModel;

  factory MediaDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$MediaDetailsModelFromJson(json);
}

@freezed
sealed class AiringSchedule with _$AiringSchedule {
  const factory AiringSchedule({List<NodeElement>? nodes}) = _AiringSchedule;

  factory AiringSchedule.fromJson(Map<String, dynamic> json) =>
      _$AiringScheduleFromJson(json);
}

@freezed
sealed class NodeElement with _$NodeElement {
  const factory NodeElement({
    int? id,
    dynamic name,
    Image? image,
    String? description,
    String? gender,
    EndDate? dateOfBirth,
    dynamic age,
    bool? isAnimationStudio,
  }) = _NodeElement;

  factory NodeElement.fromJson(Map<String, dynamic> json) =>
      _$NodeElementFromJson(json);
}

@freezed
sealed class EndDate with _$EndDate {
  const factory EndDate({int? year, int? month, int? day}) = _EndDate;

  factory EndDate.fromJson(Map<String, dynamic> json) =>
      _$EndDateFromJson(json);
}

// ignore: constant_identifier_names
enum Gender { FEMALE, MALE }

final genderValues = EnumValues({"Female": Gender.FEMALE, "Male": Gender.MALE});

@freezed
sealed class Image with _$Image {
  const factory Image({String? large, String? medium}) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}

@freezed
sealed class NameClass with _$NameClass {
  const factory NameClass({
    String? first,
    dynamic middle,
    String? last,
    String? full,
    String? native,
    List<String>? alternative,
    List<String>? alternativeSpoiler,
    String? userPreferred,
  }) = _NameClass;

  factory NameClass.fromJson(Map<String, dynamic> json) =>
      _$NameClassFromJson(json);
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
sealed class Relations with _$Relations {
  const factory Relations({List<Edge>? edges}) = _Relations;

  factory Relations.fromJson(Map<String, dynamic> json) =>
      _$RelationsFromJson(json);
}

@freezed
sealed class Edge with _$Edge {
  const factory Edge({String? relationType, EdgeNode? node}) = _Edge;

  factory Edge.fromJson(Map<String, dynamic> json) => _$EdgeFromJson(json);
}

@freezed
sealed class EdgeNode with _$EdgeNode {
  const factory EdgeNode({int? id, Title? title, CoverImage? coverImage}) =
      _EdgeNode;

  factory EdgeNode.fromJson(Map<String, dynamic> json) =>
      _$EdgeNodeFromJson(json);
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

@freezed
sealed class StreamingEpisode with _$StreamingEpisode {
  const factory StreamingEpisode({
    String? thumbnail,
    String? title,
    String? url,
  }) = _StreamingEpisode;

  factory StreamingEpisode.fromJson(Map<String, dynamic> json) =>
      _$StreamingEpisodeFromJson(json);
}

@freezed
sealed class Tag with _$Tag {
  const factory Tag({int? id, String? name}) = _Tag;

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);
}

@freezed
sealed class Trailer with _$Trailer {
  const factory Trailer({String? id, String? site, String? thumbnail}) =
      _Trailer;

  factory Trailer.fromJson(Map<String, dynamic> json) =>
      _$TrailerFromJson(json);
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}

extension MediaDetailsMapper on MediaDetailsModel {
  entity.MediaDetails toEntity() {
    return entity.MediaDetails(
      id: id,
      title: title?.english ?? title?.romaji ?? title?.native ?? '--No title--',
      description: description ?? 'No description.',
      status: status ?? '--Not defined--',
      bannerImage: bannerImage,
      coverImage: CoverImage(
        color: coverImage?.color,
        extraLarge: coverImage?.extraLarge,
        large: coverImage?.large,
        medium: coverImage?.medium,
      ),
      format: format,
      score: averageScore,
    );
  }
}
