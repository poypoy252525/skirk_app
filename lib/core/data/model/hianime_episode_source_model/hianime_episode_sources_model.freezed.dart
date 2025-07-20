// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hianime_episode_sources_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HianimeEpisodeSourcesModel {

 Sources? get sources; List<TrackModel>? get tracks; TimeSkipModel? get intro; TimeSkipModel? get outro; int? get server;
/// Create a copy of HianimeEpisodeSourcesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HianimeEpisodeSourcesModelCopyWith<HianimeEpisodeSourcesModel> get copyWith => _$HianimeEpisodeSourcesModelCopyWithImpl<HianimeEpisodeSourcesModel>(this as HianimeEpisodeSourcesModel, _$identity);

  /// Serializes this HianimeEpisodeSourcesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HianimeEpisodeSourcesModel&&(identical(other.sources, sources) || other.sources == sources)&&const DeepCollectionEquality().equals(other.tracks, tracks)&&(identical(other.intro, intro) || other.intro == intro)&&(identical(other.outro, outro) || other.outro == outro)&&(identical(other.server, server) || other.server == server));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sources,const DeepCollectionEquality().hash(tracks),intro,outro,server);

@override
String toString() {
  return 'HianimeEpisodeSourcesModel(sources: $sources, tracks: $tracks, intro: $intro, outro: $outro, server: $server)';
}


}

/// @nodoc
abstract mixin class $HianimeEpisodeSourcesModelCopyWith<$Res>  {
  factory $HianimeEpisodeSourcesModelCopyWith(HianimeEpisodeSourcesModel value, $Res Function(HianimeEpisodeSourcesModel) _then) = _$HianimeEpisodeSourcesModelCopyWithImpl;
@useResult
$Res call({
 Sources? sources, List<TrackModel>? tracks, TimeSkipModel? intro, TimeSkipModel? outro, int? server
});


$SourcesCopyWith<$Res>? get sources;$TimeSkipModelCopyWith<$Res>? get intro;$TimeSkipModelCopyWith<$Res>? get outro;

}
/// @nodoc
class _$HianimeEpisodeSourcesModelCopyWithImpl<$Res>
    implements $HianimeEpisodeSourcesModelCopyWith<$Res> {
  _$HianimeEpisodeSourcesModelCopyWithImpl(this._self, this._then);

  final HianimeEpisodeSourcesModel _self;
  final $Res Function(HianimeEpisodeSourcesModel) _then;

/// Create a copy of HianimeEpisodeSourcesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sources = freezed,Object? tracks = freezed,Object? intro = freezed,Object? outro = freezed,Object? server = freezed,}) {
  return _then(_self.copyWith(
sources: freezed == sources ? _self.sources : sources // ignore: cast_nullable_to_non_nullable
as Sources?,tracks: freezed == tracks ? _self.tracks : tracks // ignore: cast_nullable_to_non_nullable
as List<TrackModel>?,intro: freezed == intro ? _self.intro : intro // ignore: cast_nullable_to_non_nullable
as TimeSkipModel?,outro: freezed == outro ? _self.outro : outro // ignore: cast_nullable_to_non_nullable
as TimeSkipModel?,server: freezed == server ? _self.server : server // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of HianimeEpisodeSourcesModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SourcesCopyWith<$Res>? get sources {
    if (_self.sources == null) {
    return null;
  }

  return $SourcesCopyWith<$Res>(_self.sources!, (value) {
    return _then(_self.copyWith(sources: value));
  });
}/// Create a copy of HianimeEpisodeSourcesModel
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
}/// Create a copy of HianimeEpisodeSourcesModel
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

class _HianimeEpisodeSourcesModel implements HianimeEpisodeSourcesModel {
  const _HianimeEpisodeSourcesModel({this.sources, final  List<TrackModel>? tracks, this.intro, this.outro, this.server}): _tracks = tracks;
  factory _HianimeEpisodeSourcesModel.fromJson(Map<String, dynamic> json) => _$HianimeEpisodeSourcesModelFromJson(json);

@override final  Sources? sources;
 final  List<TrackModel>? _tracks;
@override List<TrackModel>? get tracks {
  final value = _tracks;
  if (value == null) return null;
  if (_tracks is EqualUnmodifiableListView) return _tracks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  TimeSkipModel? intro;
@override final  TimeSkipModel? outro;
@override final  int? server;

/// Create a copy of HianimeEpisodeSourcesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HianimeEpisodeSourcesModelCopyWith<_HianimeEpisodeSourcesModel> get copyWith => __$HianimeEpisodeSourcesModelCopyWithImpl<_HianimeEpisodeSourcesModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HianimeEpisodeSourcesModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HianimeEpisodeSourcesModel&&(identical(other.sources, sources) || other.sources == sources)&&const DeepCollectionEquality().equals(other._tracks, _tracks)&&(identical(other.intro, intro) || other.intro == intro)&&(identical(other.outro, outro) || other.outro == outro)&&(identical(other.server, server) || other.server == server));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sources,const DeepCollectionEquality().hash(_tracks),intro,outro,server);

@override
String toString() {
  return 'HianimeEpisodeSourcesModel(sources: $sources, tracks: $tracks, intro: $intro, outro: $outro, server: $server)';
}


}

/// @nodoc
abstract mixin class _$HianimeEpisodeSourcesModelCopyWith<$Res> implements $HianimeEpisodeSourcesModelCopyWith<$Res> {
  factory _$HianimeEpisodeSourcesModelCopyWith(_HianimeEpisodeSourcesModel value, $Res Function(_HianimeEpisodeSourcesModel) _then) = __$HianimeEpisodeSourcesModelCopyWithImpl;
@override @useResult
$Res call({
 Sources? sources, List<TrackModel>? tracks, TimeSkipModel? intro, TimeSkipModel? outro, int? server
});


@override $SourcesCopyWith<$Res>? get sources;@override $TimeSkipModelCopyWith<$Res>? get intro;@override $TimeSkipModelCopyWith<$Res>? get outro;

}
/// @nodoc
class __$HianimeEpisodeSourcesModelCopyWithImpl<$Res>
    implements _$HianimeEpisodeSourcesModelCopyWith<$Res> {
  __$HianimeEpisodeSourcesModelCopyWithImpl(this._self, this._then);

  final _HianimeEpisodeSourcesModel _self;
  final $Res Function(_HianimeEpisodeSourcesModel) _then;

/// Create a copy of HianimeEpisodeSourcesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sources = freezed,Object? tracks = freezed,Object? intro = freezed,Object? outro = freezed,Object? server = freezed,}) {
  return _then(_HianimeEpisodeSourcesModel(
sources: freezed == sources ? _self.sources : sources // ignore: cast_nullable_to_non_nullable
as Sources?,tracks: freezed == tracks ? _self._tracks : tracks // ignore: cast_nullable_to_non_nullable
as List<TrackModel>?,intro: freezed == intro ? _self.intro : intro // ignore: cast_nullable_to_non_nullable
as TimeSkipModel?,outro: freezed == outro ? _self.outro : outro // ignore: cast_nullable_to_non_nullable
as TimeSkipModel?,server: freezed == server ? _self.server : server // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of HianimeEpisodeSourcesModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SourcesCopyWith<$Res>? get sources {
    if (_self.sources == null) {
    return null;
  }

  return $SourcesCopyWith<$Res>(_self.sources!, (value) {
    return _then(_self.copyWith(sources: value));
  });
}/// Create a copy of HianimeEpisodeSourcesModel
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
}/// Create a copy of HianimeEpisodeSourcesModel
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
mixin _$Sources {

 String? get file; bool? get isM3U8;
/// Create a copy of Sources
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SourcesCopyWith<Sources> get copyWith => _$SourcesCopyWithImpl<Sources>(this as Sources, _$identity);

  /// Serializes this Sources to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Sources&&(identical(other.file, file) || other.file == file)&&(identical(other.isM3U8, isM3U8) || other.isM3U8 == isM3U8));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,file,isM3U8);

@override
String toString() {
  return 'Sources(file: $file, isM3U8: $isM3U8)';
}


}

/// @nodoc
abstract mixin class $SourcesCopyWith<$Res>  {
  factory $SourcesCopyWith(Sources value, $Res Function(Sources) _then) = _$SourcesCopyWithImpl;
@useResult
$Res call({
 String? file, bool? isM3U8
});




}
/// @nodoc
class _$SourcesCopyWithImpl<$Res>
    implements $SourcesCopyWith<$Res> {
  _$SourcesCopyWithImpl(this._self, this._then);

  final Sources _self;
  final $Res Function(Sources) _then;

/// Create a copy of Sources
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? file = freezed,Object? isM3U8 = freezed,}) {
  return _then(_self.copyWith(
file: freezed == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as String?,isM3U8: freezed == isM3U8 ? _self.isM3U8 : isM3U8 // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Sources implements Sources {
  const _Sources({this.file, this.isM3U8});
  factory _Sources.fromJson(Map<String, dynamic> json) => _$SourcesFromJson(json);

@override final  String? file;
@override final  bool? isM3U8;

/// Create a copy of Sources
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SourcesCopyWith<_Sources> get copyWith => __$SourcesCopyWithImpl<_Sources>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SourcesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Sources&&(identical(other.file, file) || other.file == file)&&(identical(other.isM3U8, isM3U8) || other.isM3U8 == isM3U8));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,file,isM3U8);

@override
String toString() {
  return 'Sources(file: $file, isM3U8: $isM3U8)';
}


}

/// @nodoc
abstract mixin class _$SourcesCopyWith<$Res> implements $SourcesCopyWith<$Res> {
  factory _$SourcesCopyWith(_Sources value, $Res Function(_Sources) _then) = __$SourcesCopyWithImpl;
@override @useResult
$Res call({
 String? file, bool? isM3U8
});




}
/// @nodoc
class __$SourcesCopyWithImpl<$Res>
    implements _$SourcesCopyWith<$Res> {
  __$SourcesCopyWithImpl(this._self, this._then);

  final _Sources _self;
  final $Res Function(_Sources) _then;

/// Create a copy of Sources
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? file = freezed,Object? isM3U8 = freezed,}) {
  return _then(_Sources(
file: freezed == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as String?,isM3U8: freezed == isM3U8 ? _self.isM3U8 : isM3U8 // ignore: cast_nullable_to_non_nullable
as bool?,
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
