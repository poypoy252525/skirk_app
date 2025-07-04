// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MediaModel {

 int get id; Title? get title; CoverImage? get coverImage; int? get episodes; String? get format; int? get seasonYear; List<String>? get genres;
/// Create a copy of MediaModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaModelCopyWith<MediaModel> get copyWith => _$MediaModelCopyWithImpl<MediaModel>(this as MediaModel, _$identity);

  /// Serializes this MediaModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.coverImage, coverImage) || other.coverImage == coverImage)&&(identical(other.episodes, episodes) || other.episodes == episodes)&&(identical(other.format, format) || other.format == format)&&(identical(other.seasonYear, seasonYear) || other.seasonYear == seasonYear)&&const DeepCollectionEquality().equals(other.genres, genres));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,coverImage,episodes,format,seasonYear,const DeepCollectionEquality().hash(genres));

@override
String toString() {
  return 'MediaModel(id: $id, title: $title, coverImage: $coverImage, episodes: $episodes, format: $format, seasonYear: $seasonYear, genres: $genres)';
}


}

/// @nodoc
abstract mixin class $MediaModelCopyWith<$Res>  {
  factory $MediaModelCopyWith(MediaModel value, $Res Function(MediaModel) _then) = _$MediaModelCopyWithImpl;
@useResult
$Res call({
 int id, Title? title, CoverImage? coverImage, int? episodes, String? format, int? seasonYear, List<String>? genres
});


$TitleCopyWith<$Res>? get title;$CoverImageCopyWith<$Res>? get coverImage;

}
/// @nodoc
class _$MediaModelCopyWithImpl<$Res>
    implements $MediaModelCopyWith<$Res> {
  _$MediaModelCopyWithImpl(this._self, this._then);

  final MediaModel _self;
  final $Res Function(MediaModel) _then;

/// Create a copy of MediaModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = freezed,Object? coverImage = freezed,Object? episodes = freezed,Object? format = freezed,Object? seasonYear = freezed,Object? genres = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as Title?,coverImage: freezed == coverImage ? _self.coverImage : coverImage // ignore: cast_nullable_to_non_nullable
as CoverImage?,episodes: freezed == episodes ? _self.episodes : episodes // ignore: cast_nullable_to_non_nullable
as int?,format: freezed == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String?,seasonYear: freezed == seasonYear ? _self.seasonYear : seasonYear // ignore: cast_nullable_to_non_nullable
as int?,genres: freezed == genres ? _self.genres : genres // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}
/// Create a copy of MediaModel
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
}/// Create a copy of MediaModel
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

class _MediaModel implements MediaModel {
  const _MediaModel({required this.id, this.title, this.coverImage, this.episodes, this.format, this.seasonYear, final  List<String>? genres}): _genres = genres;
  factory _MediaModel.fromJson(Map<String, dynamic> json) => _$MediaModelFromJson(json);

@override final  int id;
@override final  Title? title;
@override final  CoverImage? coverImage;
@override final  int? episodes;
@override final  String? format;
@override final  int? seasonYear;
 final  List<String>? _genres;
@override List<String>? get genres {
  final value = _genres;
  if (value == null) return null;
  if (_genres is EqualUnmodifiableListView) return _genres;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of MediaModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaModelCopyWith<_MediaModel> get copyWith => __$MediaModelCopyWithImpl<_MediaModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MediaModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MediaModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.coverImage, coverImage) || other.coverImage == coverImage)&&(identical(other.episodes, episodes) || other.episodes == episodes)&&(identical(other.format, format) || other.format == format)&&(identical(other.seasonYear, seasonYear) || other.seasonYear == seasonYear)&&const DeepCollectionEquality().equals(other._genres, _genres));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,coverImage,episodes,format,seasonYear,const DeepCollectionEquality().hash(_genres));

@override
String toString() {
  return 'MediaModel(id: $id, title: $title, coverImage: $coverImage, episodes: $episodes, format: $format, seasonYear: $seasonYear, genres: $genres)';
}


}

/// @nodoc
abstract mixin class _$MediaModelCopyWith<$Res> implements $MediaModelCopyWith<$Res> {
  factory _$MediaModelCopyWith(_MediaModel value, $Res Function(_MediaModel) _then) = __$MediaModelCopyWithImpl;
@override @useResult
$Res call({
 int id, Title? title, CoverImage? coverImage, int? episodes, String? format, int? seasonYear, List<String>? genres
});


@override $TitleCopyWith<$Res>? get title;@override $CoverImageCopyWith<$Res>? get coverImage;

}
/// @nodoc
class __$MediaModelCopyWithImpl<$Res>
    implements _$MediaModelCopyWith<$Res> {
  __$MediaModelCopyWithImpl(this._self, this._then);

  final _MediaModel _self;
  final $Res Function(_MediaModel) _then;

/// Create a copy of MediaModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = freezed,Object? coverImage = freezed,Object? episodes = freezed,Object? format = freezed,Object? seasonYear = freezed,Object? genres = freezed,}) {
  return _then(_MediaModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as Title?,coverImage: freezed == coverImage ? _self.coverImage : coverImage // ignore: cast_nullable_to_non_nullable
as CoverImage?,episodes: freezed == episodes ? _self.episodes : episodes // ignore: cast_nullable_to_non_nullable
as int?,format: freezed == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String?,seasonYear: freezed == seasonYear ? _self.seasonYear : seasonYear // ignore: cast_nullable_to_non_nullable
as int?,genres: freezed == genres ? _self._genres : genres // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

/// Create a copy of MediaModel
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
}/// Create a copy of MediaModel
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

// dart format on
