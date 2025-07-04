// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MediaDetailsModel {

 int get id; int? get idMal; Title? get title; String? get type; String? get format; String? get status; String? get description; EndDate? get startDate; EndDate? get endDate; String? get season; int? get seasonYear; int? get episodes; int? get duration; dynamic get chapters; dynamic get volumes; String? get countryOfOrigin; bool? get isLicensed; String? get source; dynamic get hashtag; Trailer? get trailer; int? get updatedAt; CoverImage? get coverImage; String? get bannerImage; List<String>? get genres; List<String>? get synonyms; int? get averageScore; int? get meanScore; int? get popularity; bool? get isLocked; int? get trending; int? get favourites; List<Tag>? get tags; Relations? get relations; AiringSchedule? get characters; AiringSchedule? get staff; AiringSchedule? get studios; bool? get isFavourite; bool? get isFavouriteBlocked; bool? get isAdult; dynamic get nextAiringEpisode; AiringSchedule? get airingSchedule; List<StreamingEpisode>? get streamingEpisodes;
/// Create a copy of MediaDetailsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaDetailsModelCopyWith<MediaDetailsModel> get copyWith => _$MediaDetailsModelCopyWithImpl<MediaDetailsModel>(this as MediaDetailsModel, _$identity);

  /// Serializes this MediaDetailsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaDetailsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.idMal, idMal) || other.idMal == idMal)&&(identical(other.title, title) || other.title == title)&&(identical(other.type, type) || other.type == type)&&(identical(other.format, format) || other.format == format)&&(identical(other.status, status) || other.status == status)&&(identical(other.description, description) || other.description == description)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.season, season) || other.season == season)&&(identical(other.seasonYear, seasonYear) || other.seasonYear == seasonYear)&&(identical(other.episodes, episodes) || other.episodes == episodes)&&(identical(other.duration, duration) || other.duration == duration)&&const DeepCollectionEquality().equals(other.chapters, chapters)&&const DeepCollectionEquality().equals(other.volumes, volumes)&&(identical(other.countryOfOrigin, countryOfOrigin) || other.countryOfOrigin == countryOfOrigin)&&(identical(other.isLicensed, isLicensed) || other.isLicensed == isLicensed)&&(identical(other.source, source) || other.source == source)&&const DeepCollectionEquality().equals(other.hashtag, hashtag)&&(identical(other.trailer, trailer) || other.trailer == trailer)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.coverImage, coverImage) || other.coverImage == coverImage)&&(identical(other.bannerImage, bannerImage) || other.bannerImage == bannerImage)&&const DeepCollectionEquality().equals(other.genres, genres)&&const DeepCollectionEquality().equals(other.synonyms, synonyms)&&(identical(other.averageScore, averageScore) || other.averageScore == averageScore)&&(identical(other.meanScore, meanScore) || other.meanScore == meanScore)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.isLocked, isLocked) || other.isLocked == isLocked)&&(identical(other.trending, trending) || other.trending == trending)&&(identical(other.favourites, favourites) || other.favourites == favourites)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.relations, relations) || other.relations == relations)&&(identical(other.characters, characters) || other.characters == characters)&&(identical(other.staff, staff) || other.staff == staff)&&(identical(other.studios, studios) || other.studios == studios)&&(identical(other.isFavourite, isFavourite) || other.isFavourite == isFavourite)&&(identical(other.isFavouriteBlocked, isFavouriteBlocked) || other.isFavouriteBlocked == isFavouriteBlocked)&&(identical(other.isAdult, isAdult) || other.isAdult == isAdult)&&const DeepCollectionEquality().equals(other.nextAiringEpisode, nextAiringEpisode)&&(identical(other.airingSchedule, airingSchedule) || other.airingSchedule == airingSchedule)&&const DeepCollectionEquality().equals(other.streamingEpisodes, streamingEpisodes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,idMal,title,type,format,status,description,startDate,endDate,season,seasonYear,episodes,duration,const DeepCollectionEquality().hash(chapters),const DeepCollectionEquality().hash(volumes),countryOfOrigin,isLicensed,source,const DeepCollectionEquality().hash(hashtag),trailer,updatedAt,coverImage,bannerImage,const DeepCollectionEquality().hash(genres),const DeepCollectionEquality().hash(synonyms),averageScore,meanScore,popularity,isLocked,trending,favourites,const DeepCollectionEquality().hash(tags),relations,characters,staff,studios,isFavourite,isFavouriteBlocked,isAdult,const DeepCollectionEquality().hash(nextAiringEpisode),airingSchedule,const DeepCollectionEquality().hash(streamingEpisodes)]);

@override
String toString() {
  return 'MediaDetailsModel(id: $id, idMal: $idMal, title: $title, type: $type, format: $format, status: $status, description: $description, startDate: $startDate, endDate: $endDate, season: $season, seasonYear: $seasonYear, episodes: $episodes, duration: $duration, chapters: $chapters, volumes: $volumes, countryOfOrigin: $countryOfOrigin, isLicensed: $isLicensed, source: $source, hashtag: $hashtag, trailer: $trailer, updatedAt: $updatedAt, coverImage: $coverImage, bannerImage: $bannerImage, genres: $genres, synonyms: $synonyms, averageScore: $averageScore, meanScore: $meanScore, popularity: $popularity, isLocked: $isLocked, trending: $trending, favourites: $favourites, tags: $tags, relations: $relations, characters: $characters, staff: $staff, studios: $studios, isFavourite: $isFavourite, isFavouriteBlocked: $isFavouriteBlocked, isAdult: $isAdult, nextAiringEpisode: $nextAiringEpisode, airingSchedule: $airingSchedule, streamingEpisodes: $streamingEpisodes)';
}


}

/// @nodoc
abstract mixin class $MediaDetailsModelCopyWith<$Res>  {
  factory $MediaDetailsModelCopyWith(MediaDetailsModel value, $Res Function(MediaDetailsModel) _then) = _$MediaDetailsModelCopyWithImpl;
@useResult
$Res call({
 int id, int? idMal, Title? title, String? type, String? format, String? status, String? description, EndDate? startDate, EndDate? endDate, String? season, int? seasonYear, int? episodes, int? duration, dynamic chapters, dynamic volumes, String? countryOfOrigin, bool? isLicensed, String? source, dynamic hashtag, Trailer? trailer, int? updatedAt, CoverImage? coverImage, String? bannerImage, List<String>? genres, List<String>? synonyms, int? averageScore, int? meanScore, int? popularity, bool? isLocked, int? trending, int? favourites, List<Tag>? tags, Relations? relations, AiringSchedule? characters, AiringSchedule? staff, AiringSchedule? studios, bool? isFavourite, bool? isFavouriteBlocked, bool? isAdult, dynamic nextAiringEpisode, AiringSchedule? airingSchedule, List<StreamingEpisode>? streamingEpisodes
});


$TitleCopyWith<$Res>? get title;$EndDateCopyWith<$Res>? get startDate;$EndDateCopyWith<$Res>? get endDate;$TrailerCopyWith<$Res>? get trailer;$CoverImageCopyWith<$Res>? get coverImage;$RelationsCopyWith<$Res>? get relations;$AiringScheduleCopyWith<$Res>? get characters;$AiringScheduleCopyWith<$Res>? get staff;$AiringScheduleCopyWith<$Res>? get studios;$AiringScheduleCopyWith<$Res>? get airingSchedule;

}
/// @nodoc
class _$MediaDetailsModelCopyWithImpl<$Res>
    implements $MediaDetailsModelCopyWith<$Res> {
  _$MediaDetailsModelCopyWithImpl(this._self, this._then);

  final MediaDetailsModel _self;
  final $Res Function(MediaDetailsModel) _then;

/// Create a copy of MediaDetailsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? idMal = freezed,Object? title = freezed,Object? type = freezed,Object? format = freezed,Object? status = freezed,Object? description = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? season = freezed,Object? seasonYear = freezed,Object? episodes = freezed,Object? duration = freezed,Object? chapters = freezed,Object? volumes = freezed,Object? countryOfOrigin = freezed,Object? isLicensed = freezed,Object? source = freezed,Object? hashtag = freezed,Object? trailer = freezed,Object? updatedAt = freezed,Object? coverImage = freezed,Object? bannerImage = freezed,Object? genres = freezed,Object? synonyms = freezed,Object? averageScore = freezed,Object? meanScore = freezed,Object? popularity = freezed,Object? isLocked = freezed,Object? trending = freezed,Object? favourites = freezed,Object? tags = freezed,Object? relations = freezed,Object? characters = freezed,Object? staff = freezed,Object? studios = freezed,Object? isFavourite = freezed,Object? isFavouriteBlocked = freezed,Object? isAdult = freezed,Object? nextAiringEpisode = freezed,Object? airingSchedule = freezed,Object? streamingEpisodes = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,idMal: freezed == idMal ? _self.idMal : idMal // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as Title?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,format: freezed == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as EndDate?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as EndDate?,season: freezed == season ? _self.season : season // ignore: cast_nullable_to_non_nullable
as String?,seasonYear: freezed == seasonYear ? _self.seasonYear : seasonYear // ignore: cast_nullable_to_non_nullable
as int?,episodes: freezed == episodes ? _self.episodes : episodes // ignore: cast_nullable_to_non_nullable
as int?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int?,chapters: freezed == chapters ? _self.chapters : chapters // ignore: cast_nullable_to_non_nullable
as dynamic,volumes: freezed == volumes ? _self.volumes : volumes // ignore: cast_nullable_to_non_nullable
as dynamic,countryOfOrigin: freezed == countryOfOrigin ? _self.countryOfOrigin : countryOfOrigin // ignore: cast_nullable_to_non_nullable
as String?,isLicensed: freezed == isLicensed ? _self.isLicensed : isLicensed // ignore: cast_nullable_to_non_nullable
as bool?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,hashtag: freezed == hashtag ? _self.hashtag : hashtag // ignore: cast_nullable_to_non_nullable
as dynamic,trailer: freezed == trailer ? _self.trailer : trailer // ignore: cast_nullable_to_non_nullable
as Trailer?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as int?,coverImage: freezed == coverImage ? _self.coverImage : coverImage // ignore: cast_nullable_to_non_nullable
as CoverImage?,bannerImage: freezed == bannerImage ? _self.bannerImage : bannerImage // ignore: cast_nullable_to_non_nullable
as String?,genres: freezed == genres ? _self.genres : genres // ignore: cast_nullable_to_non_nullable
as List<String>?,synonyms: freezed == synonyms ? _self.synonyms : synonyms // ignore: cast_nullable_to_non_nullable
as List<String>?,averageScore: freezed == averageScore ? _self.averageScore : averageScore // ignore: cast_nullable_to_non_nullable
as int?,meanScore: freezed == meanScore ? _self.meanScore : meanScore // ignore: cast_nullable_to_non_nullable
as int?,popularity: freezed == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as int?,isLocked: freezed == isLocked ? _self.isLocked : isLocked // ignore: cast_nullable_to_non_nullable
as bool?,trending: freezed == trending ? _self.trending : trending // ignore: cast_nullable_to_non_nullable
as int?,favourites: freezed == favourites ? _self.favourites : favourites // ignore: cast_nullable_to_non_nullable
as int?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<Tag>?,relations: freezed == relations ? _self.relations : relations // ignore: cast_nullable_to_non_nullable
as Relations?,characters: freezed == characters ? _self.characters : characters // ignore: cast_nullable_to_non_nullable
as AiringSchedule?,staff: freezed == staff ? _self.staff : staff // ignore: cast_nullable_to_non_nullable
as AiringSchedule?,studios: freezed == studios ? _self.studios : studios // ignore: cast_nullable_to_non_nullable
as AiringSchedule?,isFavourite: freezed == isFavourite ? _self.isFavourite : isFavourite // ignore: cast_nullable_to_non_nullable
as bool?,isFavouriteBlocked: freezed == isFavouriteBlocked ? _self.isFavouriteBlocked : isFavouriteBlocked // ignore: cast_nullable_to_non_nullable
as bool?,isAdult: freezed == isAdult ? _self.isAdult : isAdult // ignore: cast_nullable_to_non_nullable
as bool?,nextAiringEpisode: freezed == nextAiringEpisode ? _self.nextAiringEpisode : nextAiringEpisode // ignore: cast_nullable_to_non_nullable
as dynamic,airingSchedule: freezed == airingSchedule ? _self.airingSchedule : airingSchedule // ignore: cast_nullable_to_non_nullable
as AiringSchedule?,streamingEpisodes: freezed == streamingEpisodes ? _self.streamingEpisodes : streamingEpisodes // ignore: cast_nullable_to_non_nullable
as List<StreamingEpisode>?,
  ));
}
/// Create a copy of MediaDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TitleCopyWith<$Res>? get title {
    if (_self.title == null) {
    return null;
  }

  return $TitleCopyWith<$Res>(_self.title!, (value) {
    return _then(_self.copyWith(title: value));
  });
}/// Create a copy of MediaDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EndDateCopyWith<$Res>? get startDate {
    if (_self.startDate == null) {
    return null;
  }

  return $EndDateCopyWith<$Res>(_self.startDate!, (value) {
    return _then(_self.copyWith(startDate: value));
  });
}/// Create a copy of MediaDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EndDateCopyWith<$Res>? get endDate {
    if (_self.endDate == null) {
    return null;
  }

  return $EndDateCopyWith<$Res>(_self.endDate!, (value) {
    return _then(_self.copyWith(endDate: value));
  });
}/// Create a copy of MediaDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TrailerCopyWith<$Res>? get trailer {
    if (_self.trailer == null) {
    return null;
  }

  return $TrailerCopyWith<$Res>(_self.trailer!, (value) {
    return _then(_self.copyWith(trailer: value));
  });
}/// Create a copy of MediaDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoverImageCopyWith<$Res>? get coverImage {
    if (_self.coverImage == null) {
    return null;
  }

  return $CoverImageCopyWith<$Res>(_self.coverImage!, (value) {
    return _then(_self.copyWith(coverImage: value));
  });
}/// Create a copy of MediaDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RelationsCopyWith<$Res>? get relations {
    if (_self.relations == null) {
    return null;
  }

  return $RelationsCopyWith<$Res>(_self.relations!, (value) {
    return _then(_self.copyWith(relations: value));
  });
}/// Create a copy of MediaDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiringScheduleCopyWith<$Res>? get characters {
    if (_self.characters == null) {
    return null;
  }

  return $AiringScheduleCopyWith<$Res>(_self.characters!, (value) {
    return _then(_self.copyWith(characters: value));
  });
}/// Create a copy of MediaDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiringScheduleCopyWith<$Res>? get staff {
    if (_self.staff == null) {
    return null;
  }

  return $AiringScheduleCopyWith<$Res>(_self.staff!, (value) {
    return _then(_self.copyWith(staff: value));
  });
}/// Create a copy of MediaDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiringScheduleCopyWith<$Res>? get studios {
    if (_self.studios == null) {
    return null;
  }

  return $AiringScheduleCopyWith<$Res>(_self.studios!, (value) {
    return _then(_self.copyWith(studios: value));
  });
}/// Create a copy of MediaDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiringScheduleCopyWith<$Res>? get airingSchedule {
    if (_self.airingSchedule == null) {
    return null;
  }

  return $AiringScheduleCopyWith<$Res>(_self.airingSchedule!, (value) {
    return _then(_self.copyWith(airingSchedule: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _MediaDetailsModel implements MediaDetailsModel {
  const _MediaDetailsModel({required this.id, this.idMal, this.title, this.type, this.format, this.status, this.description, this.startDate, this.endDate, this.season, this.seasonYear, this.episodes, this.duration, this.chapters, this.volumes, this.countryOfOrigin, this.isLicensed, this.source, this.hashtag, this.trailer, this.updatedAt, this.coverImage, this.bannerImage, final  List<String>? genres, final  List<String>? synonyms, this.averageScore, this.meanScore, this.popularity, this.isLocked, this.trending, this.favourites, final  List<Tag>? tags, this.relations, this.characters, this.staff, this.studios, this.isFavourite, this.isFavouriteBlocked, this.isAdult, this.nextAiringEpisode, this.airingSchedule, final  List<StreamingEpisode>? streamingEpisodes}): _genres = genres,_synonyms = synonyms,_tags = tags,_streamingEpisodes = streamingEpisodes;
  factory _MediaDetailsModel.fromJson(Map<String, dynamic> json) => _$MediaDetailsModelFromJson(json);

@override final  int id;
@override final  int? idMal;
@override final  Title? title;
@override final  String? type;
@override final  String? format;
@override final  String? status;
@override final  String? description;
@override final  EndDate? startDate;
@override final  EndDate? endDate;
@override final  String? season;
@override final  int? seasonYear;
@override final  int? episodes;
@override final  int? duration;
@override final  dynamic chapters;
@override final  dynamic volumes;
@override final  String? countryOfOrigin;
@override final  bool? isLicensed;
@override final  String? source;
@override final  dynamic hashtag;
@override final  Trailer? trailer;
@override final  int? updatedAt;
@override final  CoverImage? coverImage;
@override final  String? bannerImage;
 final  List<String>? _genres;
@override List<String>? get genres {
  final value = _genres;
  if (value == null) return null;
  if (_genres is EqualUnmodifiableListView) return _genres;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _synonyms;
@override List<String>? get synonyms {
  final value = _synonyms;
  if (value == null) return null;
  if (_synonyms is EqualUnmodifiableListView) return _synonyms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? averageScore;
@override final  int? meanScore;
@override final  int? popularity;
@override final  bool? isLocked;
@override final  int? trending;
@override final  int? favourites;
 final  List<Tag>? _tags;
@override List<Tag>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Relations? relations;
@override final  AiringSchedule? characters;
@override final  AiringSchedule? staff;
@override final  AiringSchedule? studios;
@override final  bool? isFavourite;
@override final  bool? isFavouriteBlocked;
@override final  bool? isAdult;
@override final  dynamic nextAiringEpisode;
@override final  AiringSchedule? airingSchedule;
 final  List<StreamingEpisode>? _streamingEpisodes;
@override List<StreamingEpisode>? get streamingEpisodes {
  final value = _streamingEpisodes;
  if (value == null) return null;
  if (_streamingEpisodes is EqualUnmodifiableListView) return _streamingEpisodes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of MediaDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaDetailsModelCopyWith<_MediaDetailsModel> get copyWith => __$MediaDetailsModelCopyWithImpl<_MediaDetailsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MediaDetailsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MediaDetailsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.idMal, idMal) || other.idMal == idMal)&&(identical(other.title, title) || other.title == title)&&(identical(other.type, type) || other.type == type)&&(identical(other.format, format) || other.format == format)&&(identical(other.status, status) || other.status == status)&&(identical(other.description, description) || other.description == description)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.season, season) || other.season == season)&&(identical(other.seasonYear, seasonYear) || other.seasonYear == seasonYear)&&(identical(other.episodes, episodes) || other.episodes == episodes)&&(identical(other.duration, duration) || other.duration == duration)&&const DeepCollectionEquality().equals(other.chapters, chapters)&&const DeepCollectionEquality().equals(other.volumes, volumes)&&(identical(other.countryOfOrigin, countryOfOrigin) || other.countryOfOrigin == countryOfOrigin)&&(identical(other.isLicensed, isLicensed) || other.isLicensed == isLicensed)&&(identical(other.source, source) || other.source == source)&&const DeepCollectionEquality().equals(other.hashtag, hashtag)&&(identical(other.trailer, trailer) || other.trailer == trailer)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.coverImage, coverImage) || other.coverImage == coverImage)&&(identical(other.bannerImage, bannerImage) || other.bannerImage == bannerImage)&&const DeepCollectionEquality().equals(other._genres, _genres)&&const DeepCollectionEquality().equals(other._synonyms, _synonyms)&&(identical(other.averageScore, averageScore) || other.averageScore == averageScore)&&(identical(other.meanScore, meanScore) || other.meanScore == meanScore)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.isLocked, isLocked) || other.isLocked == isLocked)&&(identical(other.trending, trending) || other.trending == trending)&&(identical(other.favourites, favourites) || other.favourites == favourites)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.relations, relations) || other.relations == relations)&&(identical(other.characters, characters) || other.characters == characters)&&(identical(other.staff, staff) || other.staff == staff)&&(identical(other.studios, studios) || other.studios == studios)&&(identical(other.isFavourite, isFavourite) || other.isFavourite == isFavourite)&&(identical(other.isFavouriteBlocked, isFavouriteBlocked) || other.isFavouriteBlocked == isFavouriteBlocked)&&(identical(other.isAdult, isAdult) || other.isAdult == isAdult)&&const DeepCollectionEquality().equals(other.nextAiringEpisode, nextAiringEpisode)&&(identical(other.airingSchedule, airingSchedule) || other.airingSchedule == airingSchedule)&&const DeepCollectionEquality().equals(other._streamingEpisodes, _streamingEpisodes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,idMal,title,type,format,status,description,startDate,endDate,season,seasonYear,episodes,duration,const DeepCollectionEquality().hash(chapters),const DeepCollectionEquality().hash(volumes),countryOfOrigin,isLicensed,source,const DeepCollectionEquality().hash(hashtag),trailer,updatedAt,coverImage,bannerImage,const DeepCollectionEquality().hash(_genres),const DeepCollectionEquality().hash(_synonyms),averageScore,meanScore,popularity,isLocked,trending,favourites,const DeepCollectionEquality().hash(_tags),relations,characters,staff,studios,isFavourite,isFavouriteBlocked,isAdult,const DeepCollectionEquality().hash(nextAiringEpisode),airingSchedule,const DeepCollectionEquality().hash(_streamingEpisodes)]);

@override
String toString() {
  return 'MediaDetailsModel(id: $id, idMal: $idMal, title: $title, type: $type, format: $format, status: $status, description: $description, startDate: $startDate, endDate: $endDate, season: $season, seasonYear: $seasonYear, episodes: $episodes, duration: $duration, chapters: $chapters, volumes: $volumes, countryOfOrigin: $countryOfOrigin, isLicensed: $isLicensed, source: $source, hashtag: $hashtag, trailer: $trailer, updatedAt: $updatedAt, coverImage: $coverImage, bannerImage: $bannerImage, genres: $genres, synonyms: $synonyms, averageScore: $averageScore, meanScore: $meanScore, popularity: $popularity, isLocked: $isLocked, trending: $trending, favourites: $favourites, tags: $tags, relations: $relations, characters: $characters, staff: $staff, studios: $studios, isFavourite: $isFavourite, isFavouriteBlocked: $isFavouriteBlocked, isAdult: $isAdult, nextAiringEpisode: $nextAiringEpisode, airingSchedule: $airingSchedule, streamingEpisodes: $streamingEpisodes)';
}


}

/// @nodoc
abstract mixin class _$MediaDetailsModelCopyWith<$Res> implements $MediaDetailsModelCopyWith<$Res> {
  factory _$MediaDetailsModelCopyWith(_MediaDetailsModel value, $Res Function(_MediaDetailsModel) _then) = __$MediaDetailsModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int? idMal, Title? title, String? type, String? format, String? status, String? description, EndDate? startDate, EndDate? endDate, String? season, int? seasonYear, int? episodes, int? duration, dynamic chapters, dynamic volumes, String? countryOfOrigin, bool? isLicensed, String? source, dynamic hashtag, Trailer? trailer, int? updatedAt, CoverImage? coverImage, String? bannerImage, List<String>? genres, List<String>? synonyms, int? averageScore, int? meanScore, int? popularity, bool? isLocked, int? trending, int? favourites, List<Tag>? tags, Relations? relations, AiringSchedule? characters, AiringSchedule? staff, AiringSchedule? studios, bool? isFavourite, bool? isFavouriteBlocked, bool? isAdult, dynamic nextAiringEpisode, AiringSchedule? airingSchedule, List<StreamingEpisode>? streamingEpisodes
});


@override $TitleCopyWith<$Res>? get title;@override $EndDateCopyWith<$Res>? get startDate;@override $EndDateCopyWith<$Res>? get endDate;@override $TrailerCopyWith<$Res>? get trailer;@override $CoverImageCopyWith<$Res>? get coverImage;@override $RelationsCopyWith<$Res>? get relations;@override $AiringScheduleCopyWith<$Res>? get characters;@override $AiringScheduleCopyWith<$Res>? get staff;@override $AiringScheduleCopyWith<$Res>? get studios;@override $AiringScheduleCopyWith<$Res>? get airingSchedule;

}
/// @nodoc
class __$MediaDetailsModelCopyWithImpl<$Res>
    implements _$MediaDetailsModelCopyWith<$Res> {
  __$MediaDetailsModelCopyWithImpl(this._self, this._then);

  final _MediaDetailsModel _self;
  final $Res Function(_MediaDetailsModel) _then;

/// Create a copy of MediaDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? idMal = freezed,Object? title = freezed,Object? type = freezed,Object? format = freezed,Object? status = freezed,Object? description = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? season = freezed,Object? seasonYear = freezed,Object? episodes = freezed,Object? duration = freezed,Object? chapters = freezed,Object? volumes = freezed,Object? countryOfOrigin = freezed,Object? isLicensed = freezed,Object? source = freezed,Object? hashtag = freezed,Object? trailer = freezed,Object? updatedAt = freezed,Object? coverImage = freezed,Object? bannerImage = freezed,Object? genres = freezed,Object? synonyms = freezed,Object? averageScore = freezed,Object? meanScore = freezed,Object? popularity = freezed,Object? isLocked = freezed,Object? trending = freezed,Object? favourites = freezed,Object? tags = freezed,Object? relations = freezed,Object? characters = freezed,Object? staff = freezed,Object? studios = freezed,Object? isFavourite = freezed,Object? isFavouriteBlocked = freezed,Object? isAdult = freezed,Object? nextAiringEpisode = freezed,Object? airingSchedule = freezed,Object? streamingEpisodes = freezed,}) {
  return _then(_MediaDetailsModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,idMal: freezed == idMal ? _self.idMal : idMal // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as Title?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,format: freezed == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as EndDate?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as EndDate?,season: freezed == season ? _self.season : season // ignore: cast_nullable_to_non_nullable
as String?,seasonYear: freezed == seasonYear ? _self.seasonYear : seasonYear // ignore: cast_nullable_to_non_nullable
as int?,episodes: freezed == episodes ? _self.episodes : episodes // ignore: cast_nullable_to_non_nullable
as int?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int?,chapters: freezed == chapters ? _self.chapters : chapters // ignore: cast_nullable_to_non_nullable
as dynamic,volumes: freezed == volumes ? _self.volumes : volumes // ignore: cast_nullable_to_non_nullable
as dynamic,countryOfOrigin: freezed == countryOfOrigin ? _self.countryOfOrigin : countryOfOrigin // ignore: cast_nullable_to_non_nullable
as String?,isLicensed: freezed == isLicensed ? _self.isLicensed : isLicensed // ignore: cast_nullable_to_non_nullable
as bool?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,hashtag: freezed == hashtag ? _self.hashtag : hashtag // ignore: cast_nullable_to_non_nullable
as dynamic,trailer: freezed == trailer ? _self.trailer : trailer // ignore: cast_nullable_to_non_nullable
as Trailer?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as int?,coverImage: freezed == coverImage ? _self.coverImage : coverImage // ignore: cast_nullable_to_non_nullable
as CoverImage?,bannerImage: freezed == bannerImage ? _self.bannerImage : bannerImage // ignore: cast_nullable_to_non_nullable
as String?,genres: freezed == genres ? _self._genres : genres // ignore: cast_nullable_to_non_nullable
as List<String>?,synonyms: freezed == synonyms ? _self._synonyms : synonyms // ignore: cast_nullable_to_non_nullable
as List<String>?,averageScore: freezed == averageScore ? _self.averageScore : averageScore // ignore: cast_nullable_to_non_nullable
as int?,meanScore: freezed == meanScore ? _self.meanScore : meanScore // ignore: cast_nullable_to_non_nullable
as int?,popularity: freezed == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as int?,isLocked: freezed == isLocked ? _self.isLocked : isLocked // ignore: cast_nullable_to_non_nullable
as bool?,trending: freezed == trending ? _self.trending : trending // ignore: cast_nullable_to_non_nullable
as int?,favourites: freezed == favourites ? _self.favourites : favourites // ignore: cast_nullable_to_non_nullable
as int?,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<Tag>?,relations: freezed == relations ? _self.relations : relations // ignore: cast_nullable_to_non_nullable
as Relations?,characters: freezed == characters ? _self.characters : characters // ignore: cast_nullable_to_non_nullable
as AiringSchedule?,staff: freezed == staff ? _self.staff : staff // ignore: cast_nullable_to_non_nullable
as AiringSchedule?,studios: freezed == studios ? _self.studios : studios // ignore: cast_nullable_to_non_nullable
as AiringSchedule?,isFavourite: freezed == isFavourite ? _self.isFavourite : isFavourite // ignore: cast_nullable_to_non_nullable
as bool?,isFavouriteBlocked: freezed == isFavouriteBlocked ? _self.isFavouriteBlocked : isFavouriteBlocked // ignore: cast_nullable_to_non_nullable
as bool?,isAdult: freezed == isAdult ? _self.isAdult : isAdult // ignore: cast_nullable_to_non_nullable
as bool?,nextAiringEpisode: freezed == nextAiringEpisode ? _self.nextAiringEpisode : nextAiringEpisode // ignore: cast_nullable_to_non_nullable
as dynamic,airingSchedule: freezed == airingSchedule ? _self.airingSchedule : airingSchedule // ignore: cast_nullable_to_non_nullable
as AiringSchedule?,streamingEpisodes: freezed == streamingEpisodes ? _self._streamingEpisodes : streamingEpisodes // ignore: cast_nullable_to_non_nullable
as List<StreamingEpisode>?,
  ));
}

/// Create a copy of MediaDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TitleCopyWith<$Res>? get title {
    if (_self.title == null) {
    return null;
  }

  return $TitleCopyWith<$Res>(_self.title!, (value) {
    return _then(_self.copyWith(title: value));
  });
}/// Create a copy of MediaDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EndDateCopyWith<$Res>? get startDate {
    if (_self.startDate == null) {
    return null;
  }

  return $EndDateCopyWith<$Res>(_self.startDate!, (value) {
    return _then(_self.copyWith(startDate: value));
  });
}/// Create a copy of MediaDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EndDateCopyWith<$Res>? get endDate {
    if (_self.endDate == null) {
    return null;
  }

  return $EndDateCopyWith<$Res>(_self.endDate!, (value) {
    return _then(_self.copyWith(endDate: value));
  });
}/// Create a copy of MediaDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TrailerCopyWith<$Res>? get trailer {
    if (_self.trailer == null) {
    return null;
  }

  return $TrailerCopyWith<$Res>(_self.trailer!, (value) {
    return _then(_self.copyWith(trailer: value));
  });
}/// Create a copy of MediaDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoverImageCopyWith<$Res>? get coverImage {
    if (_self.coverImage == null) {
    return null;
  }

  return $CoverImageCopyWith<$Res>(_self.coverImage!, (value) {
    return _then(_self.copyWith(coverImage: value));
  });
}/// Create a copy of MediaDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RelationsCopyWith<$Res>? get relations {
    if (_self.relations == null) {
    return null;
  }

  return $RelationsCopyWith<$Res>(_self.relations!, (value) {
    return _then(_self.copyWith(relations: value));
  });
}/// Create a copy of MediaDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiringScheduleCopyWith<$Res>? get characters {
    if (_self.characters == null) {
    return null;
  }

  return $AiringScheduleCopyWith<$Res>(_self.characters!, (value) {
    return _then(_self.copyWith(characters: value));
  });
}/// Create a copy of MediaDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiringScheduleCopyWith<$Res>? get staff {
    if (_self.staff == null) {
    return null;
  }

  return $AiringScheduleCopyWith<$Res>(_self.staff!, (value) {
    return _then(_self.copyWith(staff: value));
  });
}/// Create a copy of MediaDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiringScheduleCopyWith<$Res>? get studios {
    if (_self.studios == null) {
    return null;
  }

  return $AiringScheduleCopyWith<$Res>(_self.studios!, (value) {
    return _then(_self.copyWith(studios: value));
  });
}/// Create a copy of MediaDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiringScheduleCopyWith<$Res>? get airingSchedule {
    if (_self.airingSchedule == null) {
    return null;
  }

  return $AiringScheduleCopyWith<$Res>(_self.airingSchedule!, (value) {
    return _then(_self.copyWith(airingSchedule: value));
  });
}
}


/// @nodoc
mixin _$AiringSchedule {

 List<NodeElement>? get nodes;
/// Create a copy of AiringSchedule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiringScheduleCopyWith<AiringSchedule> get copyWith => _$AiringScheduleCopyWithImpl<AiringSchedule>(this as AiringSchedule, _$identity);

  /// Serializes this AiringSchedule to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiringSchedule&&const DeepCollectionEquality().equals(other.nodes, nodes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(nodes));

@override
String toString() {
  return 'AiringSchedule(nodes: $nodes)';
}


}

/// @nodoc
abstract mixin class $AiringScheduleCopyWith<$Res>  {
  factory $AiringScheduleCopyWith(AiringSchedule value, $Res Function(AiringSchedule) _then) = _$AiringScheduleCopyWithImpl;
@useResult
$Res call({
 List<NodeElement>? nodes
});




}
/// @nodoc
class _$AiringScheduleCopyWithImpl<$Res>
    implements $AiringScheduleCopyWith<$Res> {
  _$AiringScheduleCopyWithImpl(this._self, this._then);

  final AiringSchedule _self;
  final $Res Function(AiringSchedule) _then;

/// Create a copy of AiringSchedule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nodes = freezed,}) {
  return _then(_self.copyWith(
nodes: freezed == nodes ? _self.nodes : nodes // ignore: cast_nullable_to_non_nullable
as List<NodeElement>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AiringSchedule implements AiringSchedule {
  const _AiringSchedule({final  List<NodeElement>? nodes}): _nodes = nodes;
  factory _AiringSchedule.fromJson(Map<String, dynamic> json) => _$AiringScheduleFromJson(json);

 final  List<NodeElement>? _nodes;
@override List<NodeElement>? get nodes {
  final value = _nodes;
  if (value == null) return null;
  if (_nodes is EqualUnmodifiableListView) return _nodes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of AiringSchedule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AiringScheduleCopyWith<_AiringSchedule> get copyWith => __$AiringScheduleCopyWithImpl<_AiringSchedule>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AiringScheduleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AiringSchedule&&const DeepCollectionEquality().equals(other._nodes, _nodes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_nodes));

@override
String toString() {
  return 'AiringSchedule(nodes: $nodes)';
}


}

/// @nodoc
abstract mixin class _$AiringScheduleCopyWith<$Res> implements $AiringScheduleCopyWith<$Res> {
  factory _$AiringScheduleCopyWith(_AiringSchedule value, $Res Function(_AiringSchedule) _then) = __$AiringScheduleCopyWithImpl;
@override @useResult
$Res call({
 List<NodeElement>? nodes
});




}
/// @nodoc
class __$AiringScheduleCopyWithImpl<$Res>
    implements _$AiringScheduleCopyWith<$Res> {
  __$AiringScheduleCopyWithImpl(this._self, this._then);

  final _AiringSchedule _self;
  final $Res Function(_AiringSchedule) _then;

/// Create a copy of AiringSchedule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nodes = freezed,}) {
  return _then(_AiringSchedule(
nodes: freezed == nodes ? _self._nodes : nodes // ignore: cast_nullable_to_non_nullable
as List<NodeElement>?,
  ));
}


}


/// @nodoc
mixin _$NodeElement {

 int? get id; dynamic get name; Image? get image; String? get description; String? get gender; EndDate? get dateOfBirth; dynamic get age; bool? get isAnimationStudio;
/// Create a copy of NodeElement
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NodeElementCopyWith<NodeElement> get copyWith => _$NodeElementCopyWithImpl<NodeElement>(this as NodeElement, _$identity);

  /// Serializes this NodeElement to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NodeElement&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.name, name)&&(identical(other.image, image) || other.image == image)&&(identical(other.description, description) || other.description == description)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&const DeepCollectionEquality().equals(other.age, age)&&(identical(other.isAnimationStudio, isAnimationStudio) || other.isAnimationStudio == isAnimationStudio));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(name),image,description,gender,dateOfBirth,const DeepCollectionEquality().hash(age),isAnimationStudio);

@override
String toString() {
  return 'NodeElement(id: $id, name: $name, image: $image, description: $description, gender: $gender, dateOfBirth: $dateOfBirth, age: $age, isAnimationStudio: $isAnimationStudio)';
}


}

/// @nodoc
abstract mixin class $NodeElementCopyWith<$Res>  {
  factory $NodeElementCopyWith(NodeElement value, $Res Function(NodeElement) _then) = _$NodeElementCopyWithImpl;
@useResult
$Res call({
 int? id, dynamic name, Image? image, String? description, String? gender, EndDate? dateOfBirth, dynamic age, bool? isAnimationStudio
});


$ImageCopyWith<$Res>? get image;$EndDateCopyWith<$Res>? get dateOfBirth;

}
/// @nodoc
class _$NodeElementCopyWithImpl<$Res>
    implements $NodeElementCopyWith<$Res> {
  _$NodeElementCopyWithImpl(this._self, this._then);

  final NodeElement _self;
  final $Res Function(NodeElement) _then;

/// Create a copy of NodeElement
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? image = freezed,Object? description = freezed,Object? gender = freezed,Object? dateOfBirth = freezed,Object? age = freezed,Object? isAnimationStudio = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as dynamic,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as Image?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as EndDate?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as dynamic,isAnimationStudio: freezed == isAnimationStudio ? _self.isAnimationStudio : isAnimationStudio // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of NodeElement
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImageCopyWith<$Res>? get image {
    if (_self.image == null) {
    return null;
  }

  return $ImageCopyWith<$Res>(_self.image!, (value) {
    return _then(_self.copyWith(image: value));
  });
}/// Create a copy of NodeElement
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EndDateCopyWith<$Res>? get dateOfBirth {
    if (_self.dateOfBirth == null) {
    return null;
  }

  return $EndDateCopyWith<$Res>(_self.dateOfBirth!, (value) {
    return _then(_self.copyWith(dateOfBirth: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _NodeElement implements NodeElement {
  const _NodeElement({this.id, this.name, this.image, this.description, this.gender, this.dateOfBirth, this.age, this.isAnimationStudio});
  factory _NodeElement.fromJson(Map<String, dynamic> json) => _$NodeElementFromJson(json);

@override final  int? id;
@override final  dynamic name;
@override final  Image? image;
@override final  String? description;
@override final  String? gender;
@override final  EndDate? dateOfBirth;
@override final  dynamic age;
@override final  bool? isAnimationStudio;

/// Create a copy of NodeElement
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NodeElementCopyWith<_NodeElement> get copyWith => __$NodeElementCopyWithImpl<_NodeElement>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NodeElementToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NodeElement&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.name, name)&&(identical(other.image, image) || other.image == image)&&(identical(other.description, description) || other.description == description)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&const DeepCollectionEquality().equals(other.age, age)&&(identical(other.isAnimationStudio, isAnimationStudio) || other.isAnimationStudio == isAnimationStudio));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(name),image,description,gender,dateOfBirth,const DeepCollectionEquality().hash(age),isAnimationStudio);

@override
String toString() {
  return 'NodeElement(id: $id, name: $name, image: $image, description: $description, gender: $gender, dateOfBirth: $dateOfBirth, age: $age, isAnimationStudio: $isAnimationStudio)';
}


}

/// @nodoc
abstract mixin class _$NodeElementCopyWith<$Res> implements $NodeElementCopyWith<$Res> {
  factory _$NodeElementCopyWith(_NodeElement value, $Res Function(_NodeElement) _then) = __$NodeElementCopyWithImpl;
@override @useResult
$Res call({
 int? id, dynamic name, Image? image, String? description, String? gender, EndDate? dateOfBirth, dynamic age, bool? isAnimationStudio
});


@override $ImageCopyWith<$Res>? get image;@override $EndDateCopyWith<$Res>? get dateOfBirth;

}
/// @nodoc
class __$NodeElementCopyWithImpl<$Res>
    implements _$NodeElementCopyWith<$Res> {
  __$NodeElementCopyWithImpl(this._self, this._then);

  final _NodeElement _self;
  final $Res Function(_NodeElement) _then;

/// Create a copy of NodeElement
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? image = freezed,Object? description = freezed,Object? gender = freezed,Object? dateOfBirth = freezed,Object? age = freezed,Object? isAnimationStudio = freezed,}) {
  return _then(_NodeElement(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as dynamic,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as Image?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as EndDate?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as dynamic,isAnimationStudio: freezed == isAnimationStudio ? _self.isAnimationStudio : isAnimationStudio // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of NodeElement
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImageCopyWith<$Res>? get image {
    if (_self.image == null) {
    return null;
  }

  return $ImageCopyWith<$Res>(_self.image!, (value) {
    return _then(_self.copyWith(image: value));
  });
}/// Create a copy of NodeElement
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EndDateCopyWith<$Res>? get dateOfBirth {
    if (_self.dateOfBirth == null) {
    return null;
  }

  return $EndDateCopyWith<$Res>(_self.dateOfBirth!, (value) {
    return _then(_self.copyWith(dateOfBirth: value));
  });
}
}


/// @nodoc
mixin _$EndDate {

 int? get year; int? get month; int? get day;
/// Create a copy of EndDate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EndDateCopyWith<EndDate> get copyWith => _$EndDateCopyWithImpl<EndDate>(this as EndDate, _$identity);

  /// Serializes this EndDate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EndDate&&(identical(other.year, year) || other.year == year)&&(identical(other.month, month) || other.month == month)&&(identical(other.day, day) || other.day == day));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,year,month,day);

@override
String toString() {
  return 'EndDate(year: $year, month: $month, day: $day)';
}


}

/// @nodoc
abstract mixin class $EndDateCopyWith<$Res>  {
  factory $EndDateCopyWith(EndDate value, $Res Function(EndDate) _then) = _$EndDateCopyWithImpl;
@useResult
$Res call({
 int? year, int? month, int? day
});




}
/// @nodoc
class _$EndDateCopyWithImpl<$Res>
    implements $EndDateCopyWith<$Res> {
  _$EndDateCopyWithImpl(this._self, this._then);

  final EndDate _self;
  final $Res Function(EndDate) _then;

/// Create a copy of EndDate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? year = freezed,Object? month = freezed,Object? day = freezed,}) {
  return _then(_self.copyWith(
year: freezed == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int?,month: freezed == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int?,day: freezed == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _EndDate implements EndDate {
  const _EndDate({this.year, this.month, this.day});
  factory _EndDate.fromJson(Map<String, dynamic> json) => _$EndDateFromJson(json);

@override final  int? year;
@override final  int? month;
@override final  int? day;

/// Create a copy of EndDate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EndDateCopyWith<_EndDate> get copyWith => __$EndDateCopyWithImpl<_EndDate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EndDateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EndDate&&(identical(other.year, year) || other.year == year)&&(identical(other.month, month) || other.month == month)&&(identical(other.day, day) || other.day == day));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,year,month,day);

@override
String toString() {
  return 'EndDate(year: $year, month: $month, day: $day)';
}


}

/// @nodoc
abstract mixin class _$EndDateCopyWith<$Res> implements $EndDateCopyWith<$Res> {
  factory _$EndDateCopyWith(_EndDate value, $Res Function(_EndDate) _then) = __$EndDateCopyWithImpl;
@override @useResult
$Res call({
 int? year, int? month, int? day
});




}
/// @nodoc
class __$EndDateCopyWithImpl<$Res>
    implements _$EndDateCopyWith<$Res> {
  __$EndDateCopyWithImpl(this._self, this._then);

  final _EndDate _self;
  final $Res Function(_EndDate) _then;

/// Create a copy of EndDate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? year = freezed,Object? month = freezed,Object? day = freezed,}) {
  return _then(_EndDate(
year: freezed == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int?,month: freezed == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int?,day: freezed == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$Image {

 String? get large; String? get medium;
/// Create a copy of Image
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageCopyWith<Image> get copyWith => _$ImageCopyWithImpl<Image>(this as Image, _$identity);

  /// Serializes this Image to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Image&&(identical(other.large, large) || other.large == large)&&(identical(other.medium, medium) || other.medium == medium));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,large,medium);

@override
String toString() {
  return 'Image(large: $large, medium: $medium)';
}


}

/// @nodoc
abstract mixin class $ImageCopyWith<$Res>  {
  factory $ImageCopyWith(Image value, $Res Function(Image) _then) = _$ImageCopyWithImpl;
@useResult
$Res call({
 String? large, String? medium
});




}
/// @nodoc
class _$ImageCopyWithImpl<$Res>
    implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._self, this._then);

  final Image _self;
  final $Res Function(Image) _then;

/// Create a copy of Image
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? large = freezed,Object? medium = freezed,}) {
  return _then(_self.copyWith(
large: freezed == large ? _self.large : large // ignore: cast_nullable_to_non_nullable
as String?,medium: freezed == medium ? _self.medium : medium // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Image implements Image {
  const _Image({this.large, this.medium});
  factory _Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

@override final  String? large;
@override final  String? medium;

/// Create a copy of Image
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageCopyWith<_Image> get copyWith => __$ImageCopyWithImpl<_Image>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ImageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Image&&(identical(other.large, large) || other.large == large)&&(identical(other.medium, medium) || other.medium == medium));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,large,medium);

@override
String toString() {
  return 'Image(large: $large, medium: $medium)';
}


}

/// @nodoc
abstract mixin class _$ImageCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$ImageCopyWith(_Image value, $Res Function(_Image) _then) = __$ImageCopyWithImpl;
@override @useResult
$Res call({
 String? large, String? medium
});




}
/// @nodoc
class __$ImageCopyWithImpl<$Res>
    implements _$ImageCopyWith<$Res> {
  __$ImageCopyWithImpl(this._self, this._then);

  final _Image _self;
  final $Res Function(_Image) _then;

/// Create a copy of Image
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? large = freezed,Object? medium = freezed,}) {
  return _then(_Image(
large: freezed == large ? _self.large : large // ignore: cast_nullable_to_non_nullable
as String?,medium: freezed == medium ? _self.medium : medium // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$NameClass {

 String? get first; dynamic get middle; String? get last; String? get full; String? get native; List<String>? get alternative; List<String>? get alternativeSpoiler; String? get userPreferred;
/// Create a copy of NameClass
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NameClassCopyWith<NameClass> get copyWith => _$NameClassCopyWithImpl<NameClass>(this as NameClass, _$identity);

  /// Serializes this NameClass to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NameClass&&(identical(other.first, first) || other.first == first)&&const DeepCollectionEquality().equals(other.middle, middle)&&(identical(other.last, last) || other.last == last)&&(identical(other.full, full) || other.full == full)&&(identical(other.native, native) || other.native == native)&&const DeepCollectionEquality().equals(other.alternative, alternative)&&const DeepCollectionEquality().equals(other.alternativeSpoiler, alternativeSpoiler)&&(identical(other.userPreferred, userPreferred) || other.userPreferred == userPreferred));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,first,const DeepCollectionEquality().hash(middle),last,full,native,const DeepCollectionEquality().hash(alternative),const DeepCollectionEquality().hash(alternativeSpoiler),userPreferred);

@override
String toString() {
  return 'NameClass(first: $first, middle: $middle, last: $last, full: $full, native: $native, alternative: $alternative, alternativeSpoiler: $alternativeSpoiler, userPreferred: $userPreferred)';
}


}

/// @nodoc
abstract mixin class $NameClassCopyWith<$Res>  {
  factory $NameClassCopyWith(NameClass value, $Res Function(NameClass) _then) = _$NameClassCopyWithImpl;
@useResult
$Res call({
 String? first, dynamic middle, String? last, String? full, String? native, List<String>? alternative, List<String>? alternativeSpoiler, String? userPreferred
});




}
/// @nodoc
class _$NameClassCopyWithImpl<$Res>
    implements $NameClassCopyWith<$Res> {
  _$NameClassCopyWithImpl(this._self, this._then);

  final NameClass _self;
  final $Res Function(NameClass) _then;

/// Create a copy of NameClass
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? first = freezed,Object? middle = freezed,Object? last = freezed,Object? full = freezed,Object? native = freezed,Object? alternative = freezed,Object? alternativeSpoiler = freezed,Object? userPreferred = freezed,}) {
  return _then(_self.copyWith(
first: freezed == first ? _self.first : first // ignore: cast_nullable_to_non_nullable
as String?,middle: freezed == middle ? _self.middle : middle // ignore: cast_nullable_to_non_nullable
as dynamic,last: freezed == last ? _self.last : last // ignore: cast_nullable_to_non_nullable
as String?,full: freezed == full ? _self.full : full // ignore: cast_nullable_to_non_nullable
as String?,native: freezed == native ? _self.native : native // ignore: cast_nullable_to_non_nullable
as String?,alternative: freezed == alternative ? _self.alternative : alternative // ignore: cast_nullable_to_non_nullable
as List<String>?,alternativeSpoiler: freezed == alternativeSpoiler ? _self.alternativeSpoiler : alternativeSpoiler // ignore: cast_nullable_to_non_nullable
as List<String>?,userPreferred: freezed == userPreferred ? _self.userPreferred : userPreferred // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _NameClass implements NameClass {
  const _NameClass({this.first, this.middle, this.last, this.full, this.native, final  List<String>? alternative, final  List<String>? alternativeSpoiler, this.userPreferred}): _alternative = alternative,_alternativeSpoiler = alternativeSpoiler;
  factory _NameClass.fromJson(Map<String, dynamic> json) => _$NameClassFromJson(json);

@override final  String? first;
@override final  dynamic middle;
@override final  String? last;
@override final  String? full;
@override final  String? native;
 final  List<String>? _alternative;
@override List<String>? get alternative {
  final value = _alternative;
  if (value == null) return null;
  if (_alternative is EqualUnmodifiableListView) return _alternative;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _alternativeSpoiler;
@override List<String>? get alternativeSpoiler {
  final value = _alternativeSpoiler;
  if (value == null) return null;
  if (_alternativeSpoiler is EqualUnmodifiableListView) return _alternativeSpoiler;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? userPreferred;

/// Create a copy of NameClass
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NameClassCopyWith<_NameClass> get copyWith => __$NameClassCopyWithImpl<_NameClass>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NameClassToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NameClass&&(identical(other.first, first) || other.first == first)&&const DeepCollectionEquality().equals(other.middle, middle)&&(identical(other.last, last) || other.last == last)&&(identical(other.full, full) || other.full == full)&&(identical(other.native, native) || other.native == native)&&const DeepCollectionEquality().equals(other._alternative, _alternative)&&const DeepCollectionEquality().equals(other._alternativeSpoiler, _alternativeSpoiler)&&(identical(other.userPreferred, userPreferred) || other.userPreferred == userPreferred));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,first,const DeepCollectionEquality().hash(middle),last,full,native,const DeepCollectionEquality().hash(_alternative),const DeepCollectionEquality().hash(_alternativeSpoiler),userPreferred);

@override
String toString() {
  return 'NameClass(first: $first, middle: $middle, last: $last, full: $full, native: $native, alternative: $alternative, alternativeSpoiler: $alternativeSpoiler, userPreferred: $userPreferred)';
}


}

/// @nodoc
abstract mixin class _$NameClassCopyWith<$Res> implements $NameClassCopyWith<$Res> {
  factory _$NameClassCopyWith(_NameClass value, $Res Function(_NameClass) _then) = __$NameClassCopyWithImpl;
@override @useResult
$Res call({
 String? first, dynamic middle, String? last, String? full, String? native, List<String>? alternative, List<String>? alternativeSpoiler, String? userPreferred
});




}
/// @nodoc
class __$NameClassCopyWithImpl<$Res>
    implements _$NameClassCopyWith<$Res> {
  __$NameClassCopyWithImpl(this._self, this._then);

  final _NameClass _self;
  final $Res Function(_NameClass) _then;

/// Create a copy of NameClass
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? first = freezed,Object? middle = freezed,Object? last = freezed,Object? full = freezed,Object? native = freezed,Object? alternative = freezed,Object? alternativeSpoiler = freezed,Object? userPreferred = freezed,}) {
  return _then(_NameClass(
first: freezed == first ? _self.first : first // ignore: cast_nullable_to_non_nullable
as String?,middle: freezed == middle ? _self.middle : middle // ignore: cast_nullable_to_non_nullable
as dynamic,last: freezed == last ? _self.last : last // ignore: cast_nullable_to_non_nullable
as String?,full: freezed == full ? _self.full : full // ignore: cast_nullable_to_non_nullable
as String?,native: freezed == native ? _self.native : native // ignore: cast_nullable_to_non_nullable
as String?,alternative: freezed == alternative ? _self._alternative : alternative // ignore: cast_nullable_to_non_nullable
as List<String>?,alternativeSpoiler: freezed == alternativeSpoiler ? _self._alternativeSpoiler : alternativeSpoiler // ignore: cast_nullable_to_non_nullable
as List<String>?,userPreferred: freezed == userPreferred ? _self.userPreferred : userPreferred // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CoverImage {

 String? get extraLarge; String? get large; String? get medium; String? get color;
/// Create a copy of CoverImage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoverImageCopyWith<CoverImage> get copyWith => _$CoverImageCopyWithImpl<CoverImage>(this as CoverImage, _$identity);

  /// Serializes this CoverImage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoverImage&&(identical(other.extraLarge, extraLarge) || other.extraLarge == extraLarge)&&(identical(other.large, large) || other.large == large)&&(identical(other.medium, medium) || other.medium == medium)&&(identical(other.color, color) || other.color == color));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,extraLarge,large,medium,color);

@override
String toString() {
  return 'CoverImage(extraLarge: $extraLarge, large: $large, medium: $medium, color: $color)';
}


}

/// @nodoc
abstract mixin class $CoverImageCopyWith<$Res>  {
  factory $CoverImageCopyWith(CoverImage value, $Res Function(CoverImage) _then) = _$CoverImageCopyWithImpl;
@useResult
$Res call({
 String? extraLarge, String? large, String? medium, String? color
});




}
/// @nodoc
class _$CoverImageCopyWithImpl<$Res>
    implements $CoverImageCopyWith<$Res> {
  _$CoverImageCopyWithImpl(this._self, this._then);

  final CoverImage _self;
  final $Res Function(CoverImage) _then;

/// Create a copy of CoverImage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? extraLarge = freezed,Object? large = freezed,Object? medium = freezed,Object? color = freezed,}) {
  return _then(_self.copyWith(
extraLarge: freezed == extraLarge ? _self.extraLarge : extraLarge // ignore: cast_nullable_to_non_nullable
as String?,large: freezed == large ? _self.large : large // ignore: cast_nullable_to_non_nullable
as String?,medium: freezed == medium ? _self.medium : medium // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CoverImage implements CoverImage {
  const _CoverImage({this.extraLarge, this.large, this.medium, this.color});
  factory _CoverImage.fromJson(Map<String, dynamic> json) => _$CoverImageFromJson(json);

@override final  String? extraLarge;
@override final  String? large;
@override final  String? medium;
@override final  String? color;

/// Create a copy of CoverImage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoverImageCopyWith<_CoverImage> get copyWith => __$CoverImageCopyWithImpl<_CoverImage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CoverImageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoverImage&&(identical(other.extraLarge, extraLarge) || other.extraLarge == extraLarge)&&(identical(other.large, large) || other.large == large)&&(identical(other.medium, medium) || other.medium == medium)&&(identical(other.color, color) || other.color == color));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,extraLarge,large,medium,color);

@override
String toString() {
  return 'CoverImage(extraLarge: $extraLarge, large: $large, medium: $medium, color: $color)';
}


}

/// @nodoc
abstract mixin class _$CoverImageCopyWith<$Res> implements $CoverImageCopyWith<$Res> {
  factory _$CoverImageCopyWith(_CoverImage value, $Res Function(_CoverImage) _then) = __$CoverImageCopyWithImpl;
@override @useResult
$Res call({
 String? extraLarge, String? large, String? medium, String? color
});




}
/// @nodoc
class __$CoverImageCopyWithImpl<$Res>
    implements _$CoverImageCopyWith<$Res> {
  __$CoverImageCopyWithImpl(this._self, this._then);

  final _CoverImage _self;
  final $Res Function(_CoverImage) _then;

/// Create a copy of CoverImage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? extraLarge = freezed,Object? large = freezed,Object? medium = freezed,Object? color = freezed,}) {
  return _then(_CoverImage(
extraLarge: freezed == extraLarge ? _self.extraLarge : extraLarge // ignore: cast_nullable_to_non_nullable
as String?,large: freezed == large ? _self.large : large // ignore: cast_nullable_to_non_nullable
as String?,medium: freezed == medium ? _self.medium : medium // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Relations {

 List<Edge>? get edges;
/// Create a copy of Relations
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RelationsCopyWith<Relations> get copyWith => _$RelationsCopyWithImpl<Relations>(this as Relations, _$identity);

  /// Serializes this Relations to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Relations&&const DeepCollectionEquality().equals(other.edges, edges));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(edges));

@override
String toString() {
  return 'Relations(edges: $edges)';
}


}

/// @nodoc
abstract mixin class $RelationsCopyWith<$Res>  {
  factory $RelationsCopyWith(Relations value, $Res Function(Relations) _then) = _$RelationsCopyWithImpl;
@useResult
$Res call({
 List<Edge>? edges
});




}
/// @nodoc
class _$RelationsCopyWithImpl<$Res>
    implements $RelationsCopyWith<$Res> {
  _$RelationsCopyWithImpl(this._self, this._then);

  final Relations _self;
  final $Res Function(Relations) _then;

/// Create a copy of Relations
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? edges = freezed,}) {
  return _then(_self.copyWith(
edges: freezed == edges ? _self.edges : edges // ignore: cast_nullable_to_non_nullable
as List<Edge>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Relations implements Relations {
  const _Relations({final  List<Edge>? edges}): _edges = edges;
  factory _Relations.fromJson(Map<String, dynamic> json) => _$RelationsFromJson(json);

 final  List<Edge>? _edges;
@override List<Edge>? get edges {
  final value = _edges;
  if (value == null) return null;
  if (_edges is EqualUnmodifiableListView) return _edges;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Relations
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RelationsCopyWith<_Relations> get copyWith => __$RelationsCopyWithImpl<_Relations>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RelationsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Relations&&const DeepCollectionEquality().equals(other._edges, _edges));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_edges));

@override
String toString() {
  return 'Relations(edges: $edges)';
}


}

/// @nodoc
abstract mixin class _$RelationsCopyWith<$Res> implements $RelationsCopyWith<$Res> {
  factory _$RelationsCopyWith(_Relations value, $Res Function(_Relations) _then) = __$RelationsCopyWithImpl;
@override @useResult
$Res call({
 List<Edge>? edges
});




}
/// @nodoc
class __$RelationsCopyWithImpl<$Res>
    implements _$RelationsCopyWith<$Res> {
  __$RelationsCopyWithImpl(this._self, this._then);

  final _Relations _self;
  final $Res Function(_Relations) _then;

/// Create a copy of Relations
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? edges = freezed,}) {
  return _then(_Relations(
edges: freezed == edges ? _self._edges : edges // ignore: cast_nullable_to_non_nullable
as List<Edge>?,
  ));
}


}


/// @nodoc
mixin _$Edge {

 String? get relationType; EdgeNode? get node;
/// Create a copy of Edge
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EdgeCopyWith<Edge> get copyWith => _$EdgeCopyWithImpl<Edge>(this as Edge, _$identity);

  /// Serializes this Edge to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Edge&&(identical(other.relationType, relationType) || other.relationType == relationType)&&(identical(other.node, node) || other.node == node));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,relationType,node);

@override
String toString() {
  return 'Edge(relationType: $relationType, node: $node)';
}


}

/// @nodoc
abstract mixin class $EdgeCopyWith<$Res>  {
  factory $EdgeCopyWith(Edge value, $Res Function(Edge) _then) = _$EdgeCopyWithImpl;
@useResult
$Res call({
 String? relationType, EdgeNode? node
});


$EdgeNodeCopyWith<$Res>? get node;

}
/// @nodoc
class _$EdgeCopyWithImpl<$Res>
    implements $EdgeCopyWith<$Res> {
  _$EdgeCopyWithImpl(this._self, this._then);

  final Edge _self;
  final $Res Function(Edge) _then;

/// Create a copy of Edge
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? relationType = freezed,Object? node = freezed,}) {
  return _then(_self.copyWith(
relationType: freezed == relationType ? _self.relationType : relationType // ignore: cast_nullable_to_non_nullable
as String?,node: freezed == node ? _self.node : node // ignore: cast_nullable_to_non_nullable
as EdgeNode?,
  ));
}
/// Create a copy of Edge
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EdgeNodeCopyWith<$Res>? get node {
    if (_self.node == null) {
    return null;
  }

  return $EdgeNodeCopyWith<$Res>(_self.node!, (value) {
    return _then(_self.copyWith(node: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _Edge implements Edge {
  const _Edge({this.relationType, this.node});
  factory _Edge.fromJson(Map<String, dynamic> json) => _$EdgeFromJson(json);

@override final  String? relationType;
@override final  EdgeNode? node;

/// Create a copy of Edge
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EdgeCopyWith<_Edge> get copyWith => __$EdgeCopyWithImpl<_Edge>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EdgeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Edge&&(identical(other.relationType, relationType) || other.relationType == relationType)&&(identical(other.node, node) || other.node == node));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,relationType,node);

@override
String toString() {
  return 'Edge(relationType: $relationType, node: $node)';
}


}

/// @nodoc
abstract mixin class _$EdgeCopyWith<$Res> implements $EdgeCopyWith<$Res> {
  factory _$EdgeCopyWith(_Edge value, $Res Function(_Edge) _then) = __$EdgeCopyWithImpl;
@override @useResult
$Res call({
 String? relationType, EdgeNode? node
});


@override $EdgeNodeCopyWith<$Res>? get node;

}
/// @nodoc
class __$EdgeCopyWithImpl<$Res>
    implements _$EdgeCopyWith<$Res> {
  __$EdgeCopyWithImpl(this._self, this._then);

  final _Edge _self;
  final $Res Function(_Edge) _then;

/// Create a copy of Edge
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? relationType = freezed,Object? node = freezed,}) {
  return _then(_Edge(
relationType: freezed == relationType ? _self.relationType : relationType // ignore: cast_nullable_to_non_nullable
as String?,node: freezed == node ? _self.node : node // ignore: cast_nullable_to_non_nullable
as EdgeNode?,
  ));
}

/// Create a copy of Edge
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EdgeNodeCopyWith<$Res>? get node {
    if (_self.node == null) {
    return null;
  }

  return $EdgeNodeCopyWith<$Res>(_self.node!, (value) {
    return _then(_self.copyWith(node: value));
  });
}
}


/// @nodoc
mixin _$EdgeNode {

 int? get id; Title? get title; CoverImage? get coverImage;
/// Create a copy of EdgeNode
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EdgeNodeCopyWith<EdgeNode> get copyWith => _$EdgeNodeCopyWithImpl<EdgeNode>(this as EdgeNode, _$identity);

  /// Serializes this EdgeNode to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EdgeNode&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.coverImage, coverImage) || other.coverImage == coverImage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,coverImage);

@override
String toString() {
  return 'EdgeNode(id: $id, title: $title, coverImage: $coverImage)';
}


}

/// @nodoc
abstract mixin class $EdgeNodeCopyWith<$Res>  {
  factory $EdgeNodeCopyWith(EdgeNode value, $Res Function(EdgeNode) _then) = _$EdgeNodeCopyWithImpl;
@useResult
$Res call({
 int? id, Title? title, CoverImage? coverImage
});


$TitleCopyWith<$Res>? get title;$CoverImageCopyWith<$Res>? get coverImage;

}
/// @nodoc
class _$EdgeNodeCopyWithImpl<$Res>
    implements $EdgeNodeCopyWith<$Res> {
  _$EdgeNodeCopyWithImpl(this._self, this._then);

  final EdgeNode _self;
  final $Res Function(EdgeNode) _then;

/// Create a copy of EdgeNode
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? coverImage = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as Title?,coverImage: freezed == coverImage ? _self.coverImage : coverImage // ignore: cast_nullable_to_non_nullable
as CoverImage?,
  ));
}
/// Create a copy of EdgeNode
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TitleCopyWith<$Res>? get title {
    if (_self.title == null) {
    return null;
  }

  return $TitleCopyWith<$Res>(_self.title!, (value) {
    return _then(_self.copyWith(title: value));
  });
}/// Create a copy of EdgeNode
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoverImageCopyWith<$Res>? get coverImage {
    if (_self.coverImage == null) {
    return null;
  }

  return $CoverImageCopyWith<$Res>(_self.coverImage!, (value) {
    return _then(_self.copyWith(coverImage: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _EdgeNode implements EdgeNode {
  const _EdgeNode({this.id, this.title, this.coverImage});
  factory _EdgeNode.fromJson(Map<String, dynamic> json) => _$EdgeNodeFromJson(json);

@override final  int? id;
@override final  Title? title;
@override final  CoverImage? coverImage;

/// Create a copy of EdgeNode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EdgeNodeCopyWith<_EdgeNode> get copyWith => __$EdgeNodeCopyWithImpl<_EdgeNode>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EdgeNodeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EdgeNode&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.coverImage, coverImage) || other.coverImage == coverImage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,coverImage);

@override
String toString() {
  return 'EdgeNode(id: $id, title: $title, coverImage: $coverImage)';
}


}

/// @nodoc
abstract mixin class _$EdgeNodeCopyWith<$Res> implements $EdgeNodeCopyWith<$Res> {
  factory _$EdgeNodeCopyWith(_EdgeNode value, $Res Function(_EdgeNode) _then) = __$EdgeNodeCopyWithImpl;
@override @useResult
$Res call({
 int? id, Title? title, CoverImage? coverImage
});


@override $TitleCopyWith<$Res>? get title;@override $CoverImageCopyWith<$Res>? get coverImage;

}
/// @nodoc
class __$EdgeNodeCopyWithImpl<$Res>
    implements _$EdgeNodeCopyWith<$Res> {
  __$EdgeNodeCopyWithImpl(this._self, this._then);

  final _EdgeNode _self;
  final $Res Function(_EdgeNode) _then;

/// Create a copy of EdgeNode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? coverImage = freezed,}) {
  return _then(_EdgeNode(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as Title?,coverImage: freezed == coverImage ? _self.coverImage : coverImage // ignore: cast_nullable_to_non_nullable
as CoverImage?,
  ));
}

/// Create a copy of EdgeNode
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TitleCopyWith<$Res>? get title {
    if (_self.title == null) {
    return null;
  }

  return $TitleCopyWith<$Res>(_self.title!, (value) {
    return _then(_self.copyWith(title: value));
  });
}/// Create a copy of EdgeNode
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoverImageCopyWith<$Res>? get coverImage {
    if (_self.coverImage == null) {
    return null;
  }

  return $CoverImageCopyWith<$Res>(_self.coverImage!, (value) {
    return _then(_self.copyWith(coverImage: value));
  });
}
}


/// @nodoc
mixin _$Title {

 String? get romaji; String? get english; String? get native; String? get userPreferred;
/// Create a copy of Title
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TitleCopyWith<Title> get copyWith => _$TitleCopyWithImpl<Title>(this as Title, _$identity);

  /// Serializes this Title to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Title&&(identical(other.romaji, romaji) || other.romaji == romaji)&&(identical(other.english, english) || other.english == english)&&(identical(other.native, native) || other.native == native)&&(identical(other.userPreferred, userPreferred) || other.userPreferred == userPreferred));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,romaji,english,native,userPreferred);

@override
String toString() {
  return 'Title(romaji: $romaji, english: $english, native: $native, userPreferred: $userPreferred)';
}


}

/// @nodoc
abstract mixin class $TitleCopyWith<$Res>  {
  factory $TitleCopyWith(Title value, $Res Function(Title) _then) = _$TitleCopyWithImpl;
@useResult
$Res call({
 String? romaji, String? english, String? native, String? userPreferred
});




}
/// @nodoc
class _$TitleCopyWithImpl<$Res>
    implements $TitleCopyWith<$Res> {
  _$TitleCopyWithImpl(this._self, this._then);

  final Title _self;
  final $Res Function(Title) _then;

/// Create a copy of Title
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? romaji = freezed,Object? english = freezed,Object? native = freezed,Object? userPreferred = freezed,}) {
  return _then(_self.copyWith(
romaji: freezed == romaji ? _self.romaji : romaji // ignore: cast_nullable_to_non_nullable
as String?,english: freezed == english ? _self.english : english // ignore: cast_nullable_to_non_nullable
as String?,native: freezed == native ? _self.native : native // ignore: cast_nullable_to_non_nullable
as String?,userPreferred: freezed == userPreferred ? _self.userPreferred : userPreferred // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Title implements Title {
  const _Title({this.romaji, this.english, this.native, this.userPreferred});
  factory _Title.fromJson(Map<String, dynamic> json) => _$TitleFromJson(json);

@override final  String? romaji;
@override final  String? english;
@override final  String? native;
@override final  String? userPreferred;

/// Create a copy of Title
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TitleCopyWith<_Title> get copyWith => __$TitleCopyWithImpl<_Title>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TitleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Title&&(identical(other.romaji, romaji) || other.romaji == romaji)&&(identical(other.english, english) || other.english == english)&&(identical(other.native, native) || other.native == native)&&(identical(other.userPreferred, userPreferred) || other.userPreferred == userPreferred));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,romaji,english,native,userPreferred);

@override
String toString() {
  return 'Title(romaji: $romaji, english: $english, native: $native, userPreferred: $userPreferred)';
}


}

/// @nodoc
abstract mixin class _$TitleCopyWith<$Res> implements $TitleCopyWith<$Res> {
  factory _$TitleCopyWith(_Title value, $Res Function(_Title) _then) = __$TitleCopyWithImpl;
@override @useResult
$Res call({
 String? romaji, String? english, String? native, String? userPreferred
});




}
/// @nodoc
class __$TitleCopyWithImpl<$Res>
    implements _$TitleCopyWith<$Res> {
  __$TitleCopyWithImpl(this._self, this._then);

  final _Title _self;
  final $Res Function(_Title) _then;

/// Create a copy of Title
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? romaji = freezed,Object? english = freezed,Object? native = freezed,Object? userPreferred = freezed,}) {
  return _then(_Title(
romaji: freezed == romaji ? _self.romaji : romaji // ignore: cast_nullable_to_non_nullable
as String?,english: freezed == english ? _self.english : english // ignore: cast_nullable_to_non_nullable
as String?,native: freezed == native ? _self.native : native // ignore: cast_nullable_to_non_nullable
as String?,userPreferred: freezed == userPreferred ? _self.userPreferred : userPreferred // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$StreamingEpisode {

 String? get thumbnail; String? get title; String? get url;
/// Create a copy of StreamingEpisode
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StreamingEpisodeCopyWith<StreamingEpisode> get copyWith => _$StreamingEpisodeCopyWithImpl<StreamingEpisode>(this as StreamingEpisode, _$identity);

  /// Serializes this StreamingEpisode to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StreamingEpisode&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.title, title) || other.title == title)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,thumbnail,title,url);

@override
String toString() {
  return 'StreamingEpisode(thumbnail: $thumbnail, title: $title, url: $url)';
}


}

/// @nodoc
abstract mixin class $StreamingEpisodeCopyWith<$Res>  {
  factory $StreamingEpisodeCopyWith(StreamingEpisode value, $Res Function(StreamingEpisode) _then) = _$StreamingEpisodeCopyWithImpl;
@useResult
$Res call({
 String? thumbnail, String? title, String? url
});




}
/// @nodoc
class _$StreamingEpisodeCopyWithImpl<$Res>
    implements $StreamingEpisodeCopyWith<$Res> {
  _$StreamingEpisodeCopyWithImpl(this._self, this._then);

  final StreamingEpisode _self;
  final $Res Function(StreamingEpisode) _then;

/// Create a copy of StreamingEpisode
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? thumbnail = freezed,Object? title = freezed,Object? url = freezed,}) {
  return _then(_self.copyWith(
thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _StreamingEpisode implements StreamingEpisode {
  const _StreamingEpisode({this.thumbnail, this.title, this.url});
  factory _StreamingEpisode.fromJson(Map<String, dynamic> json) => _$StreamingEpisodeFromJson(json);

@override final  String? thumbnail;
@override final  String? title;
@override final  String? url;

/// Create a copy of StreamingEpisode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StreamingEpisodeCopyWith<_StreamingEpisode> get copyWith => __$StreamingEpisodeCopyWithImpl<_StreamingEpisode>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StreamingEpisodeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StreamingEpisode&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.title, title) || other.title == title)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,thumbnail,title,url);

@override
String toString() {
  return 'StreamingEpisode(thumbnail: $thumbnail, title: $title, url: $url)';
}


}

/// @nodoc
abstract mixin class _$StreamingEpisodeCopyWith<$Res> implements $StreamingEpisodeCopyWith<$Res> {
  factory _$StreamingEpisodeCopyWith(_StreamingEpisode value, $Res Function(_StreamingEpisode) _then) = __$StreamingEpisodeCopyWithImpl;
@override @useResult
$Res call({
 String? thumbnail, String? title, String? url
});




}
/// @nodoc
class __$StreamingEpisodeCopyWithImpl<$Res>
    implements _$StreamingEpisodeCopyWith<$Res> {
  __$StreamingEpisodeCopyWithImpl(this._self, this._then);

  final _StreamingEpisode _self;
  final $Res Function(_StreamingEpisode) _then;

/// Create a copy of StreamingEpisode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? thumbnail = freezed,Object? title = freezed,Object? url = freezed,}) {
  return _then(_StreamingEpisode(
thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Tag {

 int? get id; String? get name;
/// Create a copy of Tag
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TagCopyWith<Tag> get copyWith => _$TagCopyWithImpl<Tag>(this as Tag, _$identity);

  /// Serializes this Tag to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Tag&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'Tag(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $TagCopyWith<$Res>  {
  factory $TagCopyWith(Tag value, $Res Function(Tag) _then) = _$TagCopyWithImpl;
@useResult
$Res call({
 int? id, String? name
});




}
/// @nodoc
class _$TagCopyWithImpl<$Res>
    implements $TagCopyWith<$Res> {
  _$TagCopyWithImpl(this._self, this._then);

  final Tag _self;
  final $Res Function(Tag) _then;

/// Create a copy of Tag
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Tag implements Tag {
  const _Tag({this.id, this.name});
  factory _Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);

@override final  int? id;
@override final  String? name;

/// Create a copy of Tag
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TagCopyWith<_Tag> get copyWith => __$TagCopyWithImpl<_Tag>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TagToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Tag&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'Tag(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$TagCopyWith<$Res> implements $TagCopyWith<$Res> {
  factory _$TagCopyWith(_Tag value, $Res Function(_Tag) _then) = __$TagCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name
});




}
/// @nodoc
class __$TagCopyWithImpl<$Res>
    implements _$TagCopyWith<$Res> {
  __$TagCopyWithImpl(this._self, this._then);

  final _Tag _self;
  final $Res Function(_Tag) _then;

/// Create a copy of Tag
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_Tag(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Trailer {

 String? get id; String? get site; String? get thumbnail;
/// Create a copy of Trailer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrailerCopyWith<Trailer> get copyWith => _$TrailerCopyWithImpl<Trailer>(this as Trailer, _$identity);

  /// Serializes this Trailer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Trailer&&(identical(other.id, id) || other.id == id)&&(identical(other.site, site) || other.site == site)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,site,thumbnail);

@override
String toString() {
  return 'Trailer(id: $id, site: $site, thumbnail: $thumbnail)';
}


}

/// @nodoc
abstract mixin class $TrailerCopyWith<$Res>  {
  factory $TrailerCopyWith(Trailer value, $Res Function(Trailer) _then) = _$TrailerCopyWithImpl;
@useResult
$Res call({
 String? id, String? site, String? thumbnail
});




}
/// @nodoc
class _$TrailerCopyWithImpl<$Res>
    implements $TrailerCopyWith<$Res> {
  _$TrailerCopyWithImpl(this._self, this._then);

  final Trailer _self;
  final $Res Function(Trailer) _then;

/// Create a copy of Trailer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? site = freezed,Object? thumbnail = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,site: freezed == site ? _self.site : site // ignore: cast_nullable_to_non_nullable
as String?,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Trailer implements Trailer {
  const _Trailer({this.id, this.site, this.thumbnail});
  factory _Trailer.fromJson(Map<String, dynamic> json) => _$TrailerFromJson(json);

@override final  String? id;
@override final  String? site;
@override final  String? thumbnail;

/// Create a copy of Trailer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrailerCopyWith<_Trailer> get copyWith => __$TrailerCopyWithImpl<_Trailer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TrailerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Trailer&&(identical(other.id, id) || other.id == id)&&(identical(other.site, site) || other.site == site)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,site,thumbnail);

@override
String toString() {
  return 'Trailer(id: $id, site: $site, thumbnail: $thumbnail)';
}


}

/// @nodoc
abstract mixin class _$TrailerCopyWith<$Res> implements $TrailerCopyWith<$Res> {
  factory _$TrailerCopyWith(_Trailer value, $Res Function(_Trailer) _then) = __$TrailerCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? site, String? thumbnail
});




}
/// @nodoc
class __$TrailerCopyWithImpl<$Res>
    implements _$TrailerCopyWith<$Res> {
  __$TrailerCopyWithImpl(this._self, this._then);

  final _Trailer _self;
  final $Res Function(_Trailer) _then;

/// Create a copy of Trailer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? site = freezed,Object? thumbnail = freezed,}) {
  return _then(_Trailer(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,site: freezed == site ? _self.site : site // ignore: cast_nullable_to_non_nullable
as String?,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
