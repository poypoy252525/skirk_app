// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'animepahe_episode_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnimepaheEpisodeResponseModel {

 int get total;@JsonKey(name: "per_page") int get perPage;@JsonKey(name: "current_page") int get currentPage;@JsonKey(name: "last_page") int get lastPage;@JsonKey(name: "next_page_url") dynamic get nextPageUrl;@JsonKey(name: "prev_page_url") dynamic get prevPageUrl;@JsonKey(name: "from") int get from;@JsonKey(name: "to") int get to;@JsonKey(name: "data") List<EpisodeModel> get data;
/// Create a copy of AnimepaheEpisodeResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnimepaheEpisodeResponseModelCopyWith<AnimepaheEpisodeResponseModel> get copyWith => _$AnimepaheEpisodeResponseModelCopyWithImpl<AnimepaheEpisodeResponseModel>(this as AnimepaheEpisodeResponseModel, _$identity);

  /// Serializes this AnimepaheEpisodeResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnimepaheEpisodeResponseModel&&(identical(other.total, total) || other.total == total)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&const DeepCollectionEquality().equals(other.nextPageUrl, nextPageUrl)&&const DeepCollectionEquality().equals(other.prevPageUrl, prevPageUrl)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,perPage,currentPage,lastPage,const DeepCollectionEquality().hash(nextPageUrl),const DeepCollectionEquality().hash(prevPageUrl),from,to,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'AnimepaheEpisodeResponseModel(total: $total, perPage: $perPage, currentPage: $currentPage, lastPage: $lastPage, nextPageUrl: $nextPageUrl, prevPageUrl: $prevPageUrl, from: $from, to: $to, data: $data)';
}


}

/// @nodoc
abstract mixin class $AnimepaheEpisodeResponseModelCopyWith<$Res>  {
  factory $AnimepaheEpisodeResponseModelCopyWith(AnimepaheEpisodeResponseModel value, $Res Function(AnimepaheEpisodeResponseModel) _then) = _$AnimepaheEpisodeResponseModelCopyWithImpl;
@useResult
$Res call({
 int total,@JsonKey(name: "per_page") int perPage,@JsonKey(name: "current_page") int currentPage,@JsonKey(name: "last_page") int lastPage,@JsonKey(name: "next_page_url") dynamic nextPageUrl,@JsonKey(name: "prev_page_url") dynamic prevPageUrl,@JsonKey(name: "from") int from,@JsonKey(name: "to") int to,@JsonKey(name: "data") List<EpisodeModel> data
});




}
/// @nodoc
class _$AnimepaheEpisodeResponseModelCopyWithImpl<$Res>
    implements $AnimepaheEpisodeResponseModelCopyWith<$Res> {
  _$AnimepaheEpisodeResponseModelCopyWithImpl(this._self, this._then);

  final AnimepaheEpisodeResponseModel _self;
  final $Res Function(AnimepaheEpisodeResponseModel) _then;

/// Create a copy of AnimepaheEpisodeResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? perPage = null,Object? currentPage = null,Object? lastPage = null,Object? nextPageUrl = freezed,Object? prevPageUrl = freezed,Object? from = null,Object? to = null,Object? data = null,}) {
  return _then(_self.copyWith(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,lastPage: null == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int,nextPageUrl: freezed == nextPageUrl ? _self.nextPageUrl : nextPageUrl // ignore: cast_nullable_to_non_nullable
as dynamic,prevPageUrl: freezed == prevPageUrl ? _self.prevPageUrl : prevPageUrl // ignore: cast_nullable_to_non_nullable
as dynamic,from: null == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as int,to: null == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<EpisodeModel>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AnimepaheEpisodeResponseModel implements AnimepaheEpisodeResponseModel {
  const _AnimepaheEpisodeResponseModel({required this.total, @JsonKey(name: "per_page") required this.perPage, @JsonKey(name: "current_page") required this.currentPage, @JsonKey(name: "last_page") required this.lastPage, @JsonKey(name: "next_page_url") required this.nextPageUrl, @JsonKey(name: "prev_page_url") required this.prevPageUrl, @JsonKey(name: "from") required this.from, @JsonKey(name: "to") required this.to, @JsonKey(name: "data") required final  List<EpisodeModel> data}): _data = data;
  factory _AnimepaheEpisodeResponseModel.fromJson(Map<String, dynamic> json) => _$AnimepaheEpisodeResponseModelFromJson(json);

@override final  int total;
@override@JsonKey(name: "per_page") final  int perPage;
@override@JsonKey(name: "current_page") final  int currentPage;
@override@JsonKey(name: "last_page") final  int lastPage;
@override@JsonKey(name: "next_page_url") final  dynamic nextPageUrl;
@override@JsonKey(name: "prev_page_url") final  dynamic prevPageUrl;
@override@JsonKey(name: "from") final  int from;
@override@JsonKey(name: "to") final  int to;
 final  List<EpisodeModel> _data;
@override@JsonKey(name: "data") List<EpisodeModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of AnimepaheEpisodeResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnimepaheEpisodeResponseModelCopyWith<_AnimepaheEpisodeResponseModel> get copyWith => __$AnimepaheEpisodeResponseModelCopyWithImpl<_AnimepaheEpisodeResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnimepaheEpisodeResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnimepaheEpisodeResponseModel&&(identical(other.total, total) || other.total == total)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&const DeepCollectionEquality().equals(other.nextPageUrl, nextPageUrl)&&const DeepCollectionEquality().equals(other.prevPageUrl, prevPageUrl)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,perPage,currentPage,lastPage,const DeepCollectionEquality().hash(nextPageUrl),const DeepCollectionEquality().hash(prevPageUrl),from,to,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'AnimepaheEpisodeResponseModel(total: $total, perPage: $perPage, currentPage: $currentPage, lastPage: $lastPage, nextPageUrl: $nextPageUrl, prevPageUrl: $prevPageUrl, from: $from, to: $to, data: $data)';
}


}

/// @nodoc
abstract mixin class _$AnimepaheEpisodeResponseModelCopyWith<$Res> implements $AnimepaheEpisodeResponseModelCopyWith<$Res> {
  factory _$AnimepaheEpisodeResponseModelCopyWith(_AnimepaheEpisodeResponseModel value, $Res Function(_AnimepaheEpisodeResponseModel) _then) = __$AnimepaheEpisodeResponseModelCopyWithImpl;
@override @useResult
$Res call({
 int total,@JsonKey(name: "per_page") int perPage,@JsonKey(name: "current_page") int currentPage,@JsonKey(name: "last_page") int lastPage,@JsonKey(name: "next_page_url") dynamic nextPageUrl,@JsonKey(name: "prev_page_url") dynamic prevPageUrl,@JsonKey(name: "from") int from,@JsonKey(name: "to") int to,@JsonKey(name: "data") List<EpisodeModel> data
});




}
/// @nodoc
class __$AnimepaheEpisodeResponseModelCopyWithImpl<$Res>
    implements _$AnimepaheEpisodeResponseModelCopyWith<$Res> {
  __$AnimepaheEpisodeResponseModelCopyWithImpl(this._self, this._then);

  final _AnimepaheEpisodeResponseModel _self;
  final $Res Function(_AnimepaheEpisodeResponseModel) _then;

/// Create a copy of AnimepaheEpisodeResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? perPage = null,Object? currentPage = null,Object? lastPage = null,Object? nextPageUrl = freezed,Object? prevPageUrl = freezed,Object? from = null,Object? to = null,Object? data = null,}) {
  return _then(_AnimepaheEpisodeResponseModel(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,lastPage: null == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int,nextPageUrl: freezed == nextPageUrl ? _self.nextPageUrl : nextPageUrl // ignore: cast_nullable_to_non_nullable
as dynamic,prevPageUrl: freezed == prevPageUrl ? _self.prevPageUrl : prevPageUrl // ignore: cast_nullable_to_non_nullable
as dynamic,from: null == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as int,to: null == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<EpisodeModel>,
  ));
}


}


/// @nodoc
mixin _$EpisodeModel {

@JsonKey(name: "id") int get id;@JsonKey(name: "anime_id") int get animeId;@JsonKey(name: "episode") int get episode;@JsonKey(name: "episode2") int get episode2;@JsonKey(name: "edition") String get edition;@JsonKey(name: "title") String get title;@JsonKey(name: "snapshot") String get snapshot;@JsonKey(name: "disc") String get disc;@JsonKey(name: "audio") String get audio;@JsonKey(name: "duration") String get duration;@JsonKey(name: "session") String get session;@JsonKey(name: "filler") int get filler;@JsonKey(name: "created_at") DateTime get createdAt;
/// Create a copy of EpisodeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EpisodeModelCopyWith<EpisodeModel> get copyWith => _$EpisodeModelCopyWithImpl<EpisodeModel>(this as EpisodeModel, _$identity);

  /// Serializes this EpisodeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EpisodeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.animeId, animeId) || other.animeId == animeId)&&(identical(other.episode, episode) || other.episode == episode)&&(identical(other.episode2, episode2) || other.episode2 == episode2)&&(identical(other.edition, edition) || other.edition == edition)&&(identical(other.title, title) || other.title == title)&&(identical(other.snapshot, snapshot) || other.snapshot == snapshot)&&(identical(other.disc, disc) || other.disc == disc)&&(identical(other.audio, audio) || other.audio == audio)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.session, session) || other.session == session)&&(identical(other.filler, filler) || other.filler == filler)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,animeId,episode,episode2,edition,title,snapshot,disc,audio,duration,session,filler,createdAt);

@override
String toString() {
  return 'EpisodeModel(id: $id, animeId: $animeId, episode: $episode, episode2: $episode2, edition: $edition, title: $title, snapshot: $snapshot, disc: $disc, audio: $audio, duration: $duration, session: $session, filler: $filler, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $EpisodeModelCopyWith<$Res>  {
  factory $EpisodeModelCopyWith(EpisodeModel value, $Res Function(EpisodeModel) _then) = _$EpisodeModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int id,@JsonKey(name: "anime_id") int animeId,@JsonKey(name: "episode") int episode,@JsonKey(name: "episode2") int episode2,@JsonKey(name: "edition") String edition,@JsonKey(name: "title") String title,@JsonKey(name: "snapshot") String snapshot,@JsonKey(name: "disc") String disc,@JsonKey(name: "audio") String audio,@JsonKey(name: "duration") String duration,@JsonKey(name: "session") String session,@JsonKey(name: "filler") int filler,@JsonKey(name: "created_at") DateTime createdAt
});




}
/// @nodoc
class _$EpisodeModelCopyWithImpl<$Res>
    implements $EpisodeModelCopyWith<$Res> {
  _$EpisodeModelCopyWithImpl(this._self, this._then);

  final EpisodeModel _self;
  final $Res Function(EpisodeModel) _then;

/// Create a copy of EpisodeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? animeId = null,Object? episode = null,Object? episode2 = null,Object? edition = null,Object? title = null,Object? snapshot = null,Object? disc = null,Object? audio = null,Object? duration = null,Object? session = null,Object? filler = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,animeId: null == animeId ? _self.animeId : animeId // ignore: cast_nullable_to_non_nullable
as int,episode: null == episode ? _self.episode : episode // ignore: cast_nullable_to_non_nullable
as int,episode2: null == episode2 ? _self.episode2 : episode2 // ignore: cast_nullable_to_non_nullable
as int,edition: null == edition ? _self.edition : edition // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,snapshot: null == snapshot ? _self.snapshot : snapshot // ignore: cast_nullable_to_non_nullable
as String,disc: null == disc ? _self.disc : disc // ignore: cast_nullable_to_non_nullable
as String,audio: null == audio ? _self.audio : audio // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as String,session: null == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as String,filler: null == filler ? _self.filler : filler // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _EpisodeModel implements EpisodeModel {
  const _EpisodeModel({@JsonKey(name: "id") required this.id, @JsonKey(name: "anime_id") required this.animeId, @JsonKey(name: "episode") required this.episode, @JsonKey(name: "episode2") required this.episode2, @JsonKey(name: "edition") required this.edition, @JsonKey(name: "title") required this.title, @JsonKey(name: "snapshot") required this.snapshot, @JsonKey(name: "disc") required this.disc, @JsonKey(name: "audio") required this.audio, @JsonKey(name: "duration") required this.duration, @JsonKey(name: "session") required this.session, @JsonKey(name: "filler") required this.filler, @JsonKey(name: "created_at") required this.createdAt});
  factory _EpisodeModel.fromJson(Map<String, dynamic> json) => _$EpisodeModelFromJson(json);

@override@JsonKey(name: "id") final  int id;
@override@JsonKey(name: "anime_id") final  int animeId;
@override@JsonKey(name: "episode") final  int episode;
@override@JsonKey(name: "episode2") final  int episode2;
@override@JsonKey(name: "edition") final  String edition;
@override@JsonKey(name: "title") final  String title;
@override@JsonKey(name: "snapshot") final  String snapshot;
@override@JsonKey(name: "disc") final  String disc;
@override@JsonKey(name: "audio") final  String audio;
@override@JsonKey(name: "duration") final  String duration;
@override@JsonKey(name: "session") final  String session;
@override@JsonKey(name: "filler") final  int filler;
@override@JsonKey(name: "created_at") final  DateTime createdAt;

/// Create a copy of EpisodeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EpisodeModelCopyWith<_EpisodeModel> get copyWith => __$EpisodeModelCopyWithImpl<_EpisodeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EpisodeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EpisodeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.animeId, animeId) || other.animeId == animeId)&&(identical(other.episode, episode) || other.episode == episode)&&(identical(other.episode2, episode2) || other.episode2 == episode2)&&(identical(other.edition, edition) || other.edition == edition)&&(identical(other.title, title) || other.title == title)&&(identical(other.snapshot, snapshot) || other.snapshot == snapshot)&&(identical(other.disc, disc) || other.disc == disc)&&(identical(other.audio, audio) || other.audio == audio)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.session, session) || other.session == session)&&(identical(other.filler, filler) || other.filler == filler)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,animeId,episode,episode2,edition,title,snapshot,disc,audio,duration,session,filler,createdAt);

@override
String toString() {
  return 'EpisodeModel(id: $id, animeId: $animeId, episode: $episode, episode2: $episode2, edition: $edition, title: $title, snapshot: $snapshot, disc: $disc, audio: $audio, duration: $duration, session: $session, filler: $filler, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$EpisodeModelCopyWith<$Res> implements $EpisodeModelCopyWith<$Res> {
  factory _$EpisodeModelCopyWith(_EpisodeModel value, $Res Function(_EpisodeModel) _then) = __$EpisodeModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int id,@JsonKey(name: "anime_id") int animeId,@JsonKey(name: "episode") int episode,@JsonKey(name: "episode2") int episode2,@JsonKey(name: "edition") String edition,@JsonKey(name: "title") String title,@JsonKey(name: "snapshot") String snapshot,@JsonKey(name: "disc") String disc,@JsonKey(name: "audio") String audio,@JsonKey(name: "duration") String duration,@JsonKey(name: "session") String session,@JsonKey(name: "filler") int filler,@JsonKey(name: "created_at") DateTime createdAt
});




}
/// @nodoc
class __$EpisodeModelCopyWithImpl<$Res>
    implements _$EpisodeModelCopyWith<$Res> {
  __$EpisodeModelCopyWithImpl(this._self, this._then);

  final _EpisodeModel _self;
  final $Res Function(_EpisodeModel) _then;

/// Create a copy of EpisodeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? animeId = null,Object? episode = null,Object? episode2 = null,Object? edition = null,Object? title = null,Object? snapshot = null,Object? disc = null,Object? audio = null,Object? duration = null,Object? session = null,Object? filler = null,Object? createdAt = null,}) {
  return _then(_EpisodeModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,animeId: null == animeId ? _self.animeId : animeId // ignore: cast_nullable_to_non_nullable
as int,episode: null == episode ? _self.episode : episode // ignore: cast_nullable_to_non_nullable
as int,episode2: null == episode2 ? _self.episode2 : episode2 // ignore: cast_nullable_to_non_nullable
as int,edition: null == edition ? _self.edition : edition // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,snapshot: null == snapshot ? _self.snapshot : snapshot // ignore: cast_nullable_to_non_nullable
as String,disc: null == disc ? _self.disc : disc // ignore: cast_nullable_to_non_nullable
as String,audio: null == audio ? _self.audio : audio // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as String,session: null == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as String,filler: null == filler ? _self.filler : filler // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
