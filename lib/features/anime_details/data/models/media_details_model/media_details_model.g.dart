// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MediaDetailsModel _$MediaDetailsModelFromJson(
  Map<String, dynamic> json,
) => _MediaDetailsModel(
  id: (json['id'] as num).toInt(),
  idMal: (json['idMal'] as num?)?.toInt(),
  title: json['title'] == null
      ? null
      : Title.fromJson(json['title'] as Map<String, dynamic>),
  type: json['type'] as String?,
  format: json['format'] as String?,
  status: json['status'] as String?,
  description: json['description'] as String?,
  startDate: json['startDate'] == null
      ? null
      : EndDate.fromJson(json['startDate'] as Map<String, dynamic>),
  endDate: json['endDate'] == null
      ? null
      : EndDate.fromJson(json['endDate'] as Map<String, dynamic>),
  season: json['season'] as String?,
  seasonYear: (json['seasonYear'] as num?)?.toInt(),
  episodes: (json['episodes'] as num?)?.toInt(),
  duration: (json['duration'] as num?)?.toInt(),
  chapters: json['chapters'],
  volumes: json['volumes'],
  countryOfOrigin: json['countryOfOrigin'] as String?,
  isLicensed: json['isLicensed'] as bool?,
  source: json['source'] as String?,
  hashtag: json['hashtag'],
  trailer: json['trailer'] == null
      ? null
      : Trailer.fromJson(json['trailer'] as Map<String, dynamic>),
  updatedAt: (json['updatedAt'] as num?)?.toInt(),
  coverImage: json['coverImage'] == null
      ? null
      : CoverImage.fromJson(json['coverImage'] as Map<String, dynamic>),
  bannerImage: json['bannerImage'] as String?,
  genres: (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
  synonyms: (json['synonyms'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  averageScore: (json['averageScore'] as num?)?.toInt(),
  meanScore: (json['meanScore'] as num?)?.toInt(),
  popularity: (json['popularity'] as num?)?.toInt(),
  isLocked: json['isLocked'] as bool?,
  trending: (json['trending'] as num?)?.toInt(),
  favourites: (json['favourites'] as num?)?.toInt(),
  tags: (json['tags'] as List<dynamic>?)
      ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
      .toList(),
  relations: json['relations'] == null
      ? null
      : Relations.fromJson(json['relations'] as Map<String, dynamic>),
  characters: json['characters'] == null
      ? null
      : AiringSchedule.fromJson(json['characters'] as Map<String, dynamic>),
  staff: json['staff'] == null
      ? null
      : AiringSchedule.fromJson(json['staff'] as Map<String, dynamic>),
  studios: json['studios'] == null
      ? null
      : AiringSchedule.fromJson(json['studios'] as Map<String, dynamic>),
  isFavourite: json['isFavourite'] as bool?,
  isFavouriteBlocked: json['isFavouriteBlocked'] as bool?,
  isAdult: json['isAdult'] as bool?,
  nextAiringEpisode: json['nextAiringEpisode'],
  airingSchedule: json['airingSchedule'] == null
      ? null
      : AiringSchedule.fromJson(json['airingSchedule'] as Map<String, dynamic>),
  streamingEpisodes: (json['streamingEpisodes'] as List<dynamic>?)
      ?.map((e) => StreamingEpisode.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$MediaDetailsModelToJson(_MediaDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'idMal': instance.idMal,
      'title': instance.title,
      'type': instance.type,
      'format': instance.format,
      'status': instance.status,
      'description': instance.description,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'season': instance.season,
      'seasonYear': instance.seasonYear,
      'episodes': instance.episodes,
      'duration': instance.duration,
      'chapters': instance.chapters,
      'volumes': instance.volumes,
      'countryOfOrigin': instance.countryOfOrigin,
      'isLicensed': instance.isLicensed,
      'source': instance.source,
      'hashtag': instance.hashtag,
      'trailer': instance.trailer,
      'updatedAt': instance.updatedAt,
      'coverImage': instance.coverImage,
      'bannerImage': instance.bannerImage,
      'genres': instance.genres,
      'synonyms': instance.synonyms,
      'averageScore': instance.averageScore,
      'meanScore': instance.meanScore,
      'popularity': instance.popularity,
      'isLocked': instance.isLocked,
      'trending': instance.trending,
      'favourites': instance.favourites,
      'tags': instance.tags,
      'relations': instance.relations,
      'characters': instance.characters,
      'staff': instance.staff,
      'studios': instance.studios,
      'isFavourite': instance.isFavourite,
      'isFavouriteBlocked': instance.isFavouriteBlocked,
      'isAdult': instance.isAdult,
      'nextAiringEpisode': instance.nextAiringEpisode,
      'airingSchedule': instance.airingSchedule,
      'streamingEpisodes': instance.streamingEpisodes,
    };

_AiringSchedule _$AiringScheduleFromJson(Map<String, dynamic> json) =>
    _AiringSchedule(
      nodes: (json['nodes'] as List<dynamic>?)
          ?.map((e) => NodeElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AiringScheduleToJson(_AiringSchedule instance) =>
    <String, dynamic>{'nodes': instance.nodes};

_NodeElement _$NodeElementFromJson(Map<String, dynamic> json) => _NodeElement(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'],
  image: json['image'] == null
      ? null
      : Image.fromJson(json['image'] as Map<String, dynamic>),
  description: json['description'] as String?,
  gender: json['gender'] as String?,
  dateOfBirth: json['dateOfBirth'] == null
      ? null
      : EndDate.fromJson(json['dateOfBirth'] as Map<String, dynamic>),
  age: json['age'],
  isAnimationStudio: json['isAnimationStudio'] as bool?,
);

Map<String, dynamic> _$NodeElementToJson(_NodeElement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'description': instance.description,
      'gender': instance.gender,
      'dateOfBirth': instance.dateOfBirth,
      'age': instance.age,
      'isAnimationStudio': instance.isAnimationStudio,
    };

_EndDate _$EndDateFromJson(Map<String, dynamic> json) => _EndDate(
  year: (json['year'] as num?)?.toInt(),
  month: (json['month'] as num?)?.toInt(),
  day: (json['day'] as num?)?.toInt(),
);

Map<String, dynamic> _$EndDateToJson(_EndDate instance) => <String, dynamic>{
  'year': instance.year,
  'month': instance.month,
  'day': instance.day,
};

_Image _$ImageFromJson(Map<String, dynamic> json) =>
    _Image(large: json['large'] as String?, medium: json['medium'] as String?);

Map<String, dynamic> _$ImageToJson(_Image instance) => <String, dynamic>{
  'large': instance.large,
  'medium': instance.medium,
};

_NameClass _$NameClassFromJson(Map<String, dynamic> json) => _NameClass(
  first: json['first'] as String?,
  middle: json['middle'],
  last: json['last'] as String?,
  full: json['full'] as String?,
  native: json['native'] as String?,
  alternative: (json['alternative'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  alternativeSpoiler: (json['alternativeSpoiler'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  userPreferred: json['userPreferred'] as String?,
);

Map<String, dynamic> _$NameClassToJson(_NameClass instance) =>
    <String, dynamic>{
      'first': instance.first,
      'middle': instance.middle,
      'last': instance.last,
      'full': instance.full,
      'native': instance.native,
      'alternative': instance.alternative,
      'alternativeSpoiler': instance.alternativeSpoiler,
      'userPreferred': instance.userPreferred,
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

_Relations _$RelationsFromJson(Map<String, dynamic> json) => _Relations(
  edges: (json['edges'] as List<dynamic>?)
      ?.map((e) => Edge.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$RelationsToJson(_Relations instance) =>
    <String, dynamic>{'edges': instance.edges};

_Edge _$EdgeFromJson(Map<String, dynamic> json) => _Edge(
  relationType: json['relationType'] as String?,
  node: json['node'] == null
      ? null
      : EdgeNode.fromJson(json['node'] as Map<String, dynamic>),
);

Map<String, dynamic> _$EdgeToJson(_Edge instance) => <String, dynamic>{
  'relationType': instance.relationType,
  'node': instance.node,
};

_EdgeNode _$EdgeNodeFromJson(Map<String, dynamic> json) => _EdgeNode(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] == null
      ? null
      : Title.fromJson(json['title'] as Map<String, dynamic>),
  coverImage: json['coverImage'] == null
      ? null
      : CoverImage.fromJson(json['coverImage'] as Map<String, dynamic>),
);

Map<String, dynamic> _$EdgeNodeToJson(_EdgeNode instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'coverImage': instance.coverImage,
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

_StreamingEpisode _$StreamingEpisodeFromJson(Map<String, dynamic> json) =>
    _StreamingEpisode(
      thumbnail: json['thumbnail'] as String?,
      title: json['title'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$StreamingEpisodeToJson(_StreamingEpisode instance) =>
    <String, dynamic>{
      'thumbnail': instance.thumbnail,
      'title': instance.title,
      'url': instance.url,
    };

_Tag _$TagFromJson(Map<String, dynamic> json) =>
    _Tag(id: (json['id'] as num?)?.toInt(), name: json['name'] as String?);

Map<String, dynamic> _$TagToJson(_Tag instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};

_Trailer _$TrailerFromJson(Map<String, dynamic> json) => _Trailer(
  id: json['id'] as String?,
  site: json['site'] as String?,
  thumbnail: json['thumbnail'] as String?,
);

Map<String, dynamic> _$TrailerToJson(_Trailer instance) => <String, dynamic>{
  'id': instance.id,
  'site': instance.site,
  'thumbnail': instance.thumbnail,
};
