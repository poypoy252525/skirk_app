// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episode_sources_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EpisodeSourcesModel {

 Headers? get headers; List<Track>? get tracks; Tro? get intro; Tro? get outro; List<Source> get sources; int? get anilistId; int? get malId;
/// Create a copy of EpisodeSourcesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EpisodeSourcesModelCopyWith<EpisodeSourcesModel> get copyWith => _$EpisodeSourcesModelCopyWithImpl<EpisodeSourcesModel>(this as EpisodeSourcesModel, _$identity);

  /// Serializes this EpisodeSourcesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EpisodeSourcesModel&&(identical(other.headers, headers) || other.headers == headers)&&const DeepCollectionEquality().equals(other.tracks, tracks)&&(identical(other.intro, intro) || other.intro == intro)&&(identical(other.outro, outro) || other.outro == outro)&&const DeepCollectionEquality().equals(other.sources, sources)&&(identical(other.anilistId, anilistId) || other.anilistId == anilistId)&&(identical(other.malId, malId) || other.malId == malId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,headers,const DeepCollectionEquality().hash(tracks),intro,outro,const DeepCollectionEquality().hash(sources),anilistId,malId);

@override
String toString() {
  return 'EpisodeSourcesModel(headers: $headers, tracks: $tracks, intro: $intro, outro: $outro, sources: $sources, anilistId: $anilistId, malId: $malId)';
}


}

/// @nodoc
abstract mixin class $EpisodeSourcesModelCopyWith<$Res>  {
  factory $EpisodeSourcesModelCopyWith(EpisodeSourcesModel value, $Res Function(EpisodeSourcesModel) _then) = _$EpisodeSourcesModelCopyWithImpl;
@useResult
$Res call({
 Headers? headers, List<Track>? tracks, Tro? intro, Tro? outro, List<Source> sources, int? anilistId, int? malId
});


$HeadersCopyWith<$Res>? get headers;$TroCopyWith<$Res>? get intro;$TroCopyWith<$Res>? get outro;

}
/// @nodoc
class _$EpisodeSourcesModelCopyWithImpl<$Res>
    implements $EpisodeSourcesModelCopyWith<$Res> {
  _$EpisodeSourcesModelCopyWithImpl(this._self, this._then);

  final EpisodeSourcesModel _self;
  final $Res Function(EpisodeSourcesModel) _then;

/// Create a copy of EpisodeSourcesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? headers = freezed,Object? tracks = freezed,Object? intro = freezed,Object? outro = freezed,Object? sources = null,Object? anilistId = freezed,Object? malId = freezed,}) {
  return _then(_self.copyWith(
headers: freezed == headers ? _self.headers : headers // ignore: cast_nullable_to_non_nullable
as Headers?,tracks: freezed == tracks ? _self.tracks : tracks // ignore: cast_nullable_to_non_nullable
as List<Track>?,intro: freezed == intro ? _self.intro : intro // ignore: cast_nullable_to_non_nullable
as Tro?,outro: freezed == outro ? _self.outro : outro // ignore: cast_nullable_to_non_nullable
as Tro?,sources: null == sources ? _self.sources : sources // ignore: cast_nullable_to_non_nullable
as List<Source>,anilistId: freezed == anilistId ? _self.anilistId : anilistId // ignore: cast_nullable_to_non_nullable
as int?,malId: freezed == malId ? _self.malId : malId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of EpisodeSourcesModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HeadersCopyWith<$Res>? get headers {
    if (_self.headers == null) {
    return null;
  }

  return $HeadersCopyWith<$Res>(_self.headers!, (value) {
    return _then(_self.copyWith(headers: value));
  });
}/// Create a copy of EpisodeSourcesModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TroCopyWith<$Res>? get intro {
    if (_self.intro == null) {
    return null;
  }

  return $TroCopyWith<$Res>(_self.intro!, (value) {
    return _then(_self.copyWith(intro: value));
  });
}/// Create a copy of EpisodeSourcesModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TroCopyWith<$Res>? get outro {
    if (_self.outro == null) {
    return null;
  }

  return $TroCopyWith<$Res>(_self.outro!, (value) {
    return _then(_self.copyWith(outro: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _EpisodeSourcesModel implements EpisodeSourcesModel {
  const _EpisodeSourcesModel({this.headers, final  List<Track>? tracks, this.intro, this.outro, required final  List<Source> sources, this.anilistId, this.malId}): _tracks = tracks,_sources = sources;
  factory _EpisodeSourcesModel.fromJson(Map<String, dynamic> json) => _$EpisodeSourcesModelFromJson(json);

@override final  Headers? headers;
 final  List<Track>? _tracks;
@override List<Track>? get tracks {
  final value = _tracks;
  if (value == null) return null;
  if (_tracks is EqualUnmodifiableListView) return _tracks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Tro? intro;
@override final  Tro? outro;
 final  List<Source> _sources;
@override List<Source> get sources {
  if (_sources is EqualUnmodifiableListView) return _sources;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sources);
}

@override final  int? anilistId;
@override final  int? malId;

/// Create a copy of EpisodeSourcesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EpisodeSourcesModelCopyWith<_EpisodeSourcesModel> get copyWith => __$EpisodeSourcesModelCopyWithImpl<_EpisodeSourcesModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EpisodeSourcesModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EpisodeSourcesModel&&(identical(other.headers, headers) || other.headers == headers)&&const DeepCollectionEquality().equals(other._tracks, _tracks)&&(identical(other.intro, intro) || other.intro == intro)&&(identical(other.outro, outro) || other.outro == outro)&&const DeepCollectionEquality().equals(other._sources, _sources)&&(identical(other.anilistId, anilistId) || other.anilistId == anilistId)&&(identical(other.malId, malId) || other.malId == malId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,headers,const DeepCollectionEquality().hash(_tracks),intro,outro,const DeepCollectionEquality().hash(_sources),anilistId,malId);

@override
String toString() {
  return 'EpisodeSourcesModel(headers: $headers, tracks: $tracks, intro: $intro, outro: $outro, sources: $sources, anilistId: $anilistId, malId: $malId)';
}


}

/// @nodoc
abstract mixin class _$EpisodeSourcesModelCopyWith<$Res> implements $EpisodeSourcesModelCopyWith<$Res> {
  factory _$EpisodeSourcesModelCopyWith(_EpisodeSourcesModel value, $Res Function(_EpisodeSourcesModel) _then) = __$EpisodeSourcesModelCopyWithImpl;
@override @useResult
$Res call({
 Headers? headers, List<Track>? tracks, Tro? intro, Tro? outro, List<Source> sources, int? anilistId, int? malId
});


@override $HeadersCopyWith<$Res>? get headers;@override $TroCopyWith<$Res>? get intro;@override $TroCopyWith<$Res>? get outro;

}
/// @nodoc
class __$EpisodeSourcesModelCopyWithImpl<$Res>
    implements _$EpisodeSourcesModelCopyWith<$Res> {
  __$EpisodeSourcesModelCopyWithImpl(this._self, this._then);

  final _EpisodeSourcesModel _self;
  final $Res Function(_EpisodeSourcesModel) _then;

/// Create a copy of EpisodeSourcesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? headers = freezed,Object? tracks = freezed,Object? intro = freezed,Object? outro = freezed,Object? sources = null,Object? anilistId = freezed,Object? malId = freezed,}) {
  return _then(_EpisodeSourcesModel(
headers: freezed == headers ? _self.headers : headers // ignore: cast_nullable_to_non_nullable
as Headers?,tracks: freezed == tracks ? _self._tracks : tracks // ignore: cast_nullable_to_non_nullable
as List<Track>?,intro: freezed == intro ? _self.intro : intro // ignore: cast_nullable_to_non_nullable
as Tro?,outro: freezed == outro ? _self.outro : outro // ignore: cast_nullable_to_non_nullable
as Tro?,sources: null == sources ? _self._sources : sources // ignore: cast_nullable_to_non_nullable
as List<Source>,anilistId: freezed == anilistId ? _self.anilistId : anilistId // ignore: cast_nullable_to_non_nullable
as int?,malId: freezed == malId ? _self.malId : malId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of EpisodeSourcesModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HeadersCopyWith<$Res>? get headers {
    if (_self.headers == null) {
    return null;
  }

  return $HeadersCopyWith<$Res>(_self.headers!, (value) {
    return _then(_self.copyWith(headers: value));
  });
}/// Create a copy of EpisodeSourcesModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TroCopyWith<$Res>? get intro {
    if (_self.intro == null) {
    return null;
  }

  return $TroCopyWith<$Res>(_self.intro!, (value) {
    return _then(_self.copyWith(intro: value));
  });
}/// Create a copy of EpisodeSourcesModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TroCopyWith<$Res>? get outro {
    if (_self.outro == null) {
    return null;
  }

  return $TroCopyWith<$Res>(_self.outro!, (value) {
    return _then(_self.copyWith(outro: value));
  });
}
}


/// @nodoc
mixin _$Headers {

 String? get referer;
/// Create a copy of Headers
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HeadersCopyWith<Headers> get copyWith => _$HeadersCopyWithImpl<Headers>(this as Headers, _$identity);

  /// Serializes this Headers to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Headers&&(identical(other.referer, referer) || other.referer == referer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,referer);

@override
String toString() {
  return 'Headers(referer: $referer)';
}


}

/// @nodoc
abstract mixin class $HeadersCopyWith<$Res>  {
  factory $HeadersCopyWith(Headers value, $Res Function(Headers) _then) = _$HeadersCopyWithImpl;
@useResult
$Res call({
 String? referer
});




}
/// @nodoc
class _$HeadersCopyWithImpl<$Res>
    implements $HeadersCopyWith<$Res> {
  _$HeadersCopyWithImpl(this._self, this._then);

  final Headers _self;
  final $Res Function(Headers) _then;

/// Create a copy of Headers
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? referer = freezed,}) {
  return _then(_self.copyWith(
referer: freezed == referer ? _self.referer : referer // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Headers implements Headers {
  const _Headers({this.referer});
  factory _Headers.fromJson(Map<String, dynamic> json) => _$HeadersFromJson(json);

@override final  String? referer;

/// Create a copy of Headers
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HeadersCopyWith<_Headers> get copyWith => __$HeadersCopyWithImpl<_Headers>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HeadersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Headers&&(identical(other.referer, referer) || other.referer == referer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,referer);

@override
String toString() {
  return 'Headers(referer: $referer)';
}


}

/// @nodoc
abstract mixin class _$HeadersCopyWith<$Res> implements $HeadersCopyWith<$Res> {
  factory _$HeadersCopyWith(_Headers value, $Res Function(_Headers) _then) = __$HeadersCopyWithImpl;
@override @useResult
$Res call({
 String? referer
});




}
/// @nodoc
class __$HeadersCopyWithImpl<$Res>
    implements _$HeadersCopyWith<$Res> {
  __$HeadersCopyWithImpl(this._self, this._then);

  final _Headers _self;
  final $Res Function(_Headers) _then;

/// Create a copy of Headers
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? referer = freezed,}) {
  return _then(_Headers(
referer: freezed == referer ? _self.referer : referer // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Tro {

 int? get start; int? get end;
/// Create a copy of Tro
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TroCopyWith<Tro> get copyWith => _$TroCopyWithImpl<Tro>(this as Tro, _$identity);

  /// Serializes this Tro to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Tro&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,start,end);

@override
String toString() {
  return 'Tro(start: $start, end: $end)';
}


}

/// @nodoc
abstract mixin class $TroCopyWith<$Res>  {
  factory $TroCopyWith(Tro value, $Res Function(Tro) _then) = _$TroCopyWithImpl;
@useResult
$Res call({
 int? start, int? end
});




}
/// @nodoc
class _$TroCopyWithImpl<$Res>
    implements $TroCopyWith<$Res> {
  _$TroCopyWithImpl(this._self, this._then);

  final Tro _self;
  final $Res Function(Tro) _then;

/// Create a copy of Tro
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? start = freezed,Object? end = freezed,}) {
  return _then(_self.copyWith(
start: freezed == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as int?,end: freezed == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Tro implements Tro {
  const _Tro({this.start, this.end});
  factory _Tro.fromJson(Map<String, dynamic> json) => _$TroFromJson(json);

@override final  int? start;
@override final  int? end;

/// Create a copy of Tro
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TroCopyWith<_Tro> get copyWith => __$TroCopyWithImpl<_Tro>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TroToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Tro&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,start,end);

@override
String toString() {
  return 'Tro(start: $start, end: $end)';
}


}

/// @nodoc
abstract mixin class _$TroCopyWith<$Res> implements $TroCopyWith<$Res> {
  factory _$TroCopyWith(_Tro value, $Res Function(_Tro) _then) = __$TroCopyWithImpl;
@override @useResult
$Res call({
 int? start, int? end
});




}
/// @nodoc
class __$TroCopyWithImpl<$Res>
    implements _$TroCopyWith<$Res> {
  __$TroCopyWithImpl(this._self, this._then);

  final _Tro _self;
  final $Res Function(_Tro) _then;

/// Create a copy of Tro
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? start = freezed,Object? end = freezed,}) {
  return _then(_Tro(
start: freezed == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as int?,end: freezed == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$Source {

 String? get url; bool? get isM3U8; String? get type;
/// Create a copy of Source
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SourceCopyWith<Source> get copyWith => _$SourceCopyWithImpl<Source>(this as Source, _$identity);

  /// Serializes this Source to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Source&&(identical(other.url, url) || other.url == url)&&(identical(other.isM3U8, isM3U8) || other.isM3U8 == isM3U8)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,isM3U8,type);

@override
String toString() {
  return 'Source(url: $url, isM3U8: $isM3U8, type: $type)';
}


}

/// @nodoc
abstract mixin class $SourceCopyWith<$Res>  {
  factory $SourceCopyWith(Source value, $Res Function(Source) _then) = _$SourceCopyWithImpl;
@useResult
$Res call({
 String? url, bool? isM3U8, String? type
});




}
/// @nodoc
class _$SourceCopyWithImpl<$Res>
    implements $SourceCopyWith<$Res> {
  _$SourceCopyWithImpl(this._self, this._then);

  final Source _self;
  final $Res Function(Source) _then;

/// Create a copy of Source
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = freezed,Object? isM3U8 = freezed,Object? type = freezed,}) {
  return _then(_self.copyWith(
url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,isM3U8: freezed == isM3U8 ? _self.isM3U8 : isM3U8 // ignore: cast_nullable_to_non_nullable
as bool?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Source implements Source {
  const _Source({this.url, this.isM3U8, this.type});
  factory _Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);

@override final  String? url;
@override final  bool? isM3U8;
@override final  String? type;

/// Create a copy of Source
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SourceCopyWith<_Source> get copyWith => __$SourceCopyWithImpl<_Source>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SourceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Source&&(identical(other.url, url) || other.url == url)&&(identical(other.isM3U8, isM3U8) || other.isM3U8 == isM3U8)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,isM3U8,type);

@override
String toString() {
  return 'Source(url: $url, isM3U8: $isM3U8, type: $type)';
}


}

/// @nodoc
abstract mixin class _$SourceCopyWith<$Res> implements $SourceCopyWith<$Res> {
  factory _$SourceCopyWith(_Source value, $Res Function(_Source) _then) = __$SourceCopyWithImpl;
@override @useResult
$Res call({
 String? url, bool? isM3U8, String? type
});




}
/// @nodoc
class __$SourceCopyWithImpl<$Res>
    implements _$SourceCopyWith<$Res> {
  __$SourceCopyWithImpl(this._self, this._then);

  final _Source _self;
  final $Res Function(_Source) _then;

/// Create a copy of Source
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = freezed,Object? isM3U8 = freezed,Object? type = freezed,}) {
  return _then(_Source(
url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,isM3U8: freezed == isM3U8 ? _self.isM3U8 : isM3U8 // ignore: cast_nullable_to_non_nullable
as bool?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Track {

 String? get url; String? get lang;
/// Create a copy of Track
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrackCopyWith<Track> get copyWith => _$TrackCopyWithImpl<Track>(this as Track, _$identity);

  /// Serializes this Track to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Track&&(identical(other.url, url) || other.url == url)&&(identical(other.lang, lang) || other.lang == lang));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,lang);

@override
String toString() {
  return 'Track(url: $url, lang: $lang)';
}


}

/// @nodoc
abstract mixin class $TrackCopyWith<$Res>  {
  factory $TrackCopyWith(Track value, $Res Function(Track) _then) = _$TrackCopyWithImpl;
@useResult
$Res call({
 String? url, String? lang
});




}
/// @nodoc
class _$TrackCopyWithImpl<$Res>
    implements $TrackCopyWith<$Res> {
  _$TrackCopyWithImpl(this._self, this._then);

  final Track _self;
  final $Res Function(Track) _then;

/// Create a copy of Track
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = freezed,Object? lang = freezed,}) {
  return _then(_self.copyWith(
url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,lang: freezed == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Track implements Track {
  const _Track({this.url, this.lang});
  factory _Track.fromJson(Map<String, dynamic> json) => _$TrackFromJson(json);

@override final  String? url;
@override final  String? lang;

/// Create a copy of Track
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrackCopyWith<_Track> get copyWith => __$TrackCopyWithImpl<_Track>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TrackToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Track&&(identical(other.url, url) || other.url == url)&&(identical(other.lang, lang) || other.lang == lang));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,lang);

@override
String toString() {
  return 'Track(url: $url, lang: $lang)';
}


}

/// @nodoc
abstract mixin class _$TrackCopyWith<$Res> implements $TrackCopyWith<$Res> {
  factory _$TrackCopyWith(_Track value, $Res Function(_Track) _then) = __$TrackCopyWithImpl;
@override @useResult
$Res call({
 String? url, String? lang
});




}
/// @nodoc
class __$TrackCopyWithImpl<$Res>
    implements _$TrackCopyWith<$Res> {
  __$TrackCopyWithImpl(this._self, this._then);

  final _Track _self;
  final $Res Function(_Track) _then;

/// Create a copy of Track
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = freezed,Object? lang = freezed,}) {
  return _then(_Track(
url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,lang: freezed == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
