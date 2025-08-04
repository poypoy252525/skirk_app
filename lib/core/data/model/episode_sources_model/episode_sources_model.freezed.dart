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

 String get referer; List<SourceModel>? get sources; List<TrackModel>? get tracks; bool? get encrypted; TimeSkipModel? get intro; TimeSkipModel? get outro; int? get server;
/// Create a copy of EpisodeSourcesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EpisodeSourcesModelCopyWith<EpisodeSourcesModel> get copyWith => _$EpisodeSourcesModelCopyWithImpl<EpisodeSourcesModel>(this as EpisodeSourcesModel, _$identity);

  /// Serializes this EpisodeSourcesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EpisodeSourcesModel&&(identical(other.referer, referer) || other.referer == referer)&&const DeepCollectionEquality().equals(other.sources, sources)&&const DeepCollectionEquality().equals(other.tracks, tracks)&&(identical(other.encrypted, encrypted) || other.encrypted == encrypted)&&(identical(other.intro, intro) || other.intro == intro)&&(identical(other.outro, outro) || other.outro == outro)&&(identical(other.server, server) || other.server == server));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,referer,const DeepCollectionEquality().hash(sources),const DeepCollectionEquality().hash(tracks),encrypted,intro,outro,server);

@override
String toString() {
  return 'EpisodeSourcesModel(referer: $referer, sources: $sources, tracks: $tracks, encrypted: $encrypted, intro: $intro, outro: $outro, server: $server)';
}


}

/// @nodoc
abstract mixin class $EpisodeSourcesModelCopyWith<$Res>  {
  factory $EpisodeSourcesModelCopyWith(EpisodeSourcesModel value, $Res Function(EpisodeSourcesModel) _then) = _$EpisodeSourcesModelCopyWithImpl;
@useResult
$Res call({
 String referer, List<SourceModel>? sources, List<TrackModel>? tracks, bool? encrypted, TimeSkipModel? intro, TimeSkipModel? outro, int? server
});


$TimeSkipModelCopyWith<$Res>? get intro;$TimeSkipModelCopyWith<$Res>? get outro;

}
/// @nodoc
class _$EpisodeSourcesModelCopyWithImpl<$Res>
    implements $EpisodeSourcesModelCopyWith<$Res> {
  _$EpisodeSourcesModelCopyWithImpl(this._self, this._then);

  final EpisodeSourcesModel _self;
  final $Res Function(EpisodeSourcesModel) _then;

/// Create a copy of EpisodeSourcesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? referer = null,Object? sources = freezed,Object? tracks = freezed,Object? encrypted = freezed,Object? intro = freezed,Object? outro = freezed,Object? server = freezed,}) {
  return _then(_self.copyWith(
referer: null == referer ? _self.referer : referer // ignore: cast_nullable_to_non_nullable
as String,sources: freezed == sources ? _self.sources : sources // ignore: cast_nullable_to_non_nullable
as List<SourceModel>?,tracks: freezed == tracks ? _self.tracks : tracks // ignore: cast_nullable_to_non_nullable
as List<TrackModel>?,encrypted: freezed == encrypted ? _self.encrypted : encrypted // ignore: cast_nullable_to_non_nullable
as bool?,intro: freezed == intro ? _self.intro : intro // ignore: cast_nullable_to_non_nullable
as TimeSkipModel?,outro: freezed == outro ? _self.outro : outro // ignore: cast_nullable_to_non_nullable
as TimeSkipModel?,server: freezed == server ? _self.server : server // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of EpisodeSourcesModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimeSkipModelCopyWith<$Res>? get intro {
    if (_self.intro == null) {
    return null;
  }

  return $TimeSkipModelCopyWith<$Res>(_self.intro!, (value) {
    return _then(_self.copyWith(intro: value));
  });
}/// Create a copy of EpisodeSourcesModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimeSkipModelCopyWith<$Res>? get outro {
    if (_self.outro == null) {
    return null;
  }

  return $TimeSkipModelCopyWith<$Res>(_self.outro!, (value) {
    return _then(_self.copyWith(outro: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _EpisodeSourcesModel implements EpisodeSourcesModel {
  const _EpisodeSourcesModel({required this.referer, final  List<SourceModel>? sources, final  List<TrackModel>? tracks, this.encrypted, this.intro, this.outro, this.server}): _sources = sources,_tracks = tracks;
  factory _EpisodeSourcesModel.fromJson(Map<String, dynamic> json) => _$EpisodeSourcesModelFromJson(json);

@override final  String referer;
 final  List<SourceModel>? _sources;
@override List<SourceModel>? get sources {
  final value = _sources;
  if (value == null) return null;
  if (_sources is EqualUnmodifiableListView) return _sources;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<TrackModel>? _tracks;
@override List<TrackModel>? get tracks {
  final value = _tracks;
  if (value == null) return null;
  if (_tracks is EqualUnmodifiableListView) return _tracks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  bool? encrypted;
@override final  TimeSkipModel? intro;
@override final  TimeSkipModel? outro;
@override final  int? server;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EpisodeSourcesModel&&(identical(other.referer, referer) || other.referer == referer)&&const DeepCollectionEquality().equals(other._sources, _sources)&&const DeepCollectionEquality().equals(other._tracks, _tracks)&&(identical(other.encrypted, encrypted) || other.encrypted == encrypted)&&(identical(other.intro, intro) || other.intro == intro)&&(identical(other.outro, outro) || other.outro == outro)&&(identical(other.server, server) || other.server == server));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,referer,const DeepCollectionEquality().hash(_sources),const DeepCollectionEquality().hash(_tracks),encrypted,intro,outro,server);

@override
String toString() {
  return 'EpisodeSourcesModel(referer: $referer, sources: $sources, tracks: $tracks, encrypted: $encrypted, intro: $intro, outro: $outro, server: $server)';
}


}

/// @nodoc
abstract mixin class _$EpisodeSourcesModelCopyWith<$Res> implements $EpisodeSourcesModelCopyWith<$Res> {
  factory _$EpisodeSourcesModelCopyWith(_EpisodeSourcesModel value, $Res Function(_EpisodeSourcesModel) _then) = __$EpisodeSourcesModelCopyWithImpl;
@override @useResult
$Res call({
 String referer, List<SourceModel>? sources, List<TrackModel>? tracks, bool? encrypted, TimeSkipModel? intro, TimeSkipModel? outro, int? server
});


@override $TimeSkipModelCopyWith<$Res>? get intro;@override $TimeSkipModelCopyWith<$Res>? get outro;

}
/// @nodoc
class __$EpisodeSourcesModelCopyWithImpl<$Res>
    implements _$EpisodeSourcesModelCopyWith<$Res> {
  __$EpisodeSourcesModelCopyWithImpl(this._self, this._then);

  final _EpisodeSourcesModel _self;
  final $Res Function(_EpisodeSourcesModel) _then;

/// Create a copy of EpisodeSourcesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? referer = null,Object? sources = freezed,Object? tracks = freezed,Object? encrypted = freezed,Object? intro = freezed,Object? outro = freezed,Object? server = freezed,}) {
  return _then(_EpisodeSourcesModel(
referer: null == referer ? _self.referer : referer // ignore: cast_nullable_to_non_nullable
as String,sources: freezed == sources ? _self._sources : sources // ignore: cast_nullable_to_non_nullable
as List<SourceModel>?,tracks: freezed == tracks ? _self._tracks : tracks // ignore: cast_nullable_to_non_nullable
as List<TrackModel>?,encrypted: freezed == encrypted ? _self.encrypted : encrypted // ignore: cast_nullable_to_non_nullable
as bool?,intro: freezed == intro ? _self.intro : intro // ignore: cast_nullable_to_non_nullable
as TimeSkipModel?,outro: freezed == outro ? _self.outro : outro // ignore: cast_nullable_to_non_nullable
as TimeSkipModel?,server: freezed == server ? _self.server : server // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of EpisodeSourcesModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimeSkipModelCopyWith<$Res>? get intro {
    if (_self.intro == null) {
    return null;
  }

  return $TimeSkipModelCopyWith<$Res>(_self.intro!, (value) {
    return _then(_self.copyWith(intro: value));
  });
}/// Create a copy of EpisodeSourcesModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimeSkipModelCopyWith<$Res>? get outro {
    if (_self.outro == null) {
    return null;
  }

  return $TimeSkipModelCopyWith<$Res>(_self.outro!, (value) {
    return _then(_self.copyWith(outro: value));
  });
}
}


/// @nodoc
mixin _$TimeSkipModel {

 int? get start; int? get end;
/// Create a copy of TimeSkipModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimeSkipModelCopyWith<TimeSkipModel> get copyWith => _$TimeSkipModelCopyWithImpl<TimeSkipModel>(this as TimeSkipModel, _$identity);

  /// Serializes this TimeSkipModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimeSkipModel&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,start,end);

@override
String toString() {
  return 'TimeSkipModel(start: $start, end: $end)';
}


}

/// @nodoc
abstract mixin class $TimeSkipModelCopyWith<$Res>  {
  factory $TimeSkipModelCopyWith(TimeSkipModel value, $Res Function(TimeSkipModel) _then) = _$TimeSkipModelCopyWithImpl;
@useResult
$Res call({
 int? start, int? end
});




}
/// @nodoc
class _$TimeSkipModelCopyWithImpl<$Res>
    implements $TimeSkipModelCopyWith<$Res> {
  _$TimeSkipModelCopyWithImpl(this._self, this._then);

  final TimeSkipModel _self;
  final $Res Function(TimeSkipModel) _then;

/// Create a copy of TimeSkipModel
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

class _TimeSkipModel implements TimeSkipModel {
  const _TimeSkipModel({this.start, this.end});
  factory _TimeSkipModel.fromJson(Map<String, dynamic> json) => _$TimeSkipModelFromJson(json);

@override final  int? start;
@override final  int? end;

/// Create a copy of TimeSkipModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimeSkipModelCopyWith<_TimeSkipModel> get copyWith => __$TimeSkipModelCopyWithImpl<_TimeSkipModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TimeSkipModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimeSkipModel&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,start,end);

@override
String toString() {
  return 'TimeSkipModel(start: $start, end: $end)';
}


}

/// @nodoc
abstract mixin class _$TimeSkipModelCopyWith<$Res> implements $TimeSkipModelCopyWith<$Res> {
  factory _$TimeSkipModelCopyWith(_TimeSkipModel value, $Res Function(_TimeSkipModel) _then) = __$TimeSkipModelCopyWithImpl;
@override @useResult
$Res call({
 int? start, int? end
});




}
/// @nodoc
class __$TimeSkipModelCopyWithImpl<$Res>
    implements _$TimeSkipModelCopyWith<$Res> {
  __$TimeSkipModelCopyWithImpl(this._self, this._then);

  final _TimeSkipModel _self;
  final $Res Function(_TimeSkipModel) _then;

/// Create a copy of TimeSkipModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? start = freezed,Object? end = freezed,}) {
  return _then(_TimeSkipModel(
start: freezed == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as int?,end: freezed == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$SourceModel {

 String? get file; String? get type;
/// Create a copy of SourceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SourceModelCopyWith<SourceModel> get copyWith => _$SourceModelCopyWithImpl<SourceModel>(this as SourceModel, _$identity);

  /// Serializes this SourceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SourceModel&&(identical(other.file, file) || other.file == file)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,file,type);

@override
String toString() {
  return 'SourceModel(file: $file, type: $type)';
}


}

/// @nodoc
abstract mixin class $SourceModelCopyWith<$Res>  {
  factory $SourceModelCopyWith(SourceModel value, $Res Function(SourceModel) _then) = _$SourceModelCopyWithImpl;
@useResult
$Res call({
 String? file, String? type
});




}
/// @nodoc
class _$SourceModelCopyWithImpl<$Res>
    implements $SourceModelCopyWith<$Res> {
  _$SourceModelCopyWithImpl(this._self, this._then);

  final SourceModel _self;
  final $Res Function(SourceModel) _then;

/// Create a copy of SourceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? file = freezed,Object? type = freezed,}) {
  return _then(_self.copyWith(
file: freezed == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SourceModel implements SourceModel {
  const _SourceModel({this.file, this.type});
  factory _SourceModel.fromJson(Map<String, dynamic> json) => _$SourceModelFromJson(json);

@override final  String? file;
@override final  String? type;

/// Create a copy of SourceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SourceModelCopyWith<_SourceModel> get copyWith => __$SourceModelCopyWithImpl<_SourceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SourceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SourceModel&&(identical(other.file, file) || other.file == file)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,file,type);

@override
String toString() {
  return 'SourceModel(file: $file, type: $type)';
}


}

/// @nodoc
abstract mixin class _$SourceModelCopyWith<$Res> implements $SourceModelCopyWith<$Res> {
  factory _$SourceModelCopyWith(_SourceModel value, $Res Function(_SourceModel) _then) = __$SourceModelCopyWithImpl;
@override @useResult
$Res call({
 String? file, String? type
});




}
/// @nodoc
class __$SourceModelCopyWithImpl<$Res>
    implements _$SourceModelCopyWith<$Res> {
  __$SourceModelCopyWithImpl(this._self, this._then);

  final _SourceModel _self;
  final $Res Function(_SourceModel) _then;

/// Create a copy of SourceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? file = freezed,Object? type = freezed,}) {
  return _then(_SourceModel(
file: freezed == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$TrackModel {

 String? get file; String? get label; String? get kind; bool? get trackDefault;
/// Create a copy of TrackModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrackModelCopyWith<TrackModel> get copyWith => _$TrackModelCopyWithImpl<TrackModel>(this as TrackModel, _$identity);

  /// Serializes this TrackModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrackModel&&(identical(other.file, file) || other.file == file)&&(identical(other.label, label) || other.label == label)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.trackDefault, trackDefault) || other.trackDefault == trackDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,file,label,kind,trackDefault);

@override
String toString() {
  return 'TrackModel(file: $file, label: $label, kind: $kind, trackDefault: $trackDefault)';
}


}

/// @nodoc
abstract mixin class $TrackModelCopyWith<$Res>  {
  factory $TrackModelCopyWith(TrackModel value, $Res Function(TrackModel) _then) = _$TrackModelCopyWithImpl;
@useResult
$Res call({
 String? file, String? label, String? kind, bool? trackDefault
});




}
/// @nodoc
class _$TrackModelCopyWithImpl<$Res>
    implements $TrackModelCopyWith<$Res> {
  _$TrackModelCopyWithImpl(this._self, this._then);

  final TrackModel _self;
  final $Res Function(TrackModel) _then;

/// Create a copy of TrackModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? file = freezed,Object? label = freezed,Object? kind = freezed,Object? trackDefault = freezed,}) {
  return _then(_self.copyWith(
file: freezed == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as String?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,kind: freezed == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String?,trackDefault: freezed == trackDefault ? _self.trackDefault : trackDefault // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TrackModel implements TrackModel {
  const _TrackModel({this.file, this.label, this.kind, this.trackDefault});
  factory _TrackModel.fromJson(Map<String, dynamic> json) => _$TrackModelFromJson(json);

@override final  String? file;
@override final  String? label;
@override final  String? kind;
@override final  bool? trackDefault;

/// Create a copy of TrackModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrackModelCopyWith<_TrackModel> get copyWith => __$TrackModelCopyWithImpl<_TrackModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TrackModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TrackModel&&(identical(other.file, file) || other.file == file)&&(identical(other.label, label) || other.label == label)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.trackDefault, trackDefault) || other.trackDefault == trackDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,file,label,kind,trackDefault);

@override
String toString() {
  return 'TrackModel(file: $file, label: $label, kind: $kind, trackDefault: $trackDefault)';
}


}

/// @nodoc
abstract mixin class _$TrackModelCopyWith<$Res> implements $TrackModelCopyWith<$Res> {
  factory _$TrackModelCopyWith(_TrackModel value, $Res Function(_TrackModel) _then) = __$TrackModelCopyWithImpl;
@override @useResult
$Res call({
 String? file, String? label, String? kind, bool? trackDefault
});




}
/// @nodoc
class __$TrackModelCopyWithImpl<$Res>
    implements _$TrackModelCopyWith<$Res> {
  __$TrackModelCopyWithImpl(this._self, this._then);

  final _TrackModel _self;
  final $Res Function(_TrackModel) _then;

/// Create a copy of TrackModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? file = freezed,Object? label = freezed,Object? kind = freezed,Object? trackDefault = freezed,}) {
  return _then(_TrackModel(
file: freezed == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as String?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,kind: freezed == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String?,trackDefault: freezed == trackDefault ? _self.trackDefault : trackDefault // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
