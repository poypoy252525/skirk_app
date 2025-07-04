// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episode_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EpisodeModel {

 String get id; String? get title; String? get image; String? get imageHash; int get number; dynamic get createdAt; String? get description; String? get url;
/// Create a copy of EpisodeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EpisodeModelCopyWith<EpisodeModel> get copyWith => _$EpisodeModelCopyWithImpl<EpisodeModel>(this as EpisodeModel, _$identity);

  /// Serializes this EpisodeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EpisodeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.image, image) || other.image == image)&&(identical(other.imageHash, imageHash) || other.imageHash == imageHash)&&(identical(other.number, number) || other.number == number)&&const DeepCollectionEquality().equals(other.createdAt, createdAt)&&(identical(other.description, description) || other.description == description)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,image,imageHash,number,const DeepCollectionEquality().hash(createdAt),description,url);

@override
String toString() {
  return 'EpisodeModel(id: $id, title: $title, image: $image, imageHash: $imageHash, number: $number, createdAt: $createdAt, description: $description, url: $url)';
}


}

/// @nodoc
abstract mixin class $EpisodeModelCopyWith<$Res>  {
  factory $EpisodeModelCopyWith(EpisodeModel value, $Res Function(EpisodeModel) _then) = _$EpisodeModelCopyWithImpl;
@useResult
$Res call({
 String id, String? title, String? image, String? imageHash, int number, dynamic createdAt, String? description, String? url
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = freezed,Object? image = freezed,Object? imageHash = freezed,Object? number = null,Object? createdAt = freezed,Object? description = freezed,Object? url = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,imageHash: freezed == imageHash ? _self.imageHash : imageHash // ignore: cast_nullable_to_non_nullable
as String?,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as dynamic,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _EpisodeModel implements EpisodeModel {
  const _EpisodeModel({required this.id, this.title, this.image, this.imageHash, required this.number, this.createdAt, this.description, this.url});
  factory _EpisodeModel.fromJson(Map<String, dynamic> json) => _$EpisodeModelFromJson(json);

@override final  String id;
@override final  String? title;
@override final  String? image;
@override final  String? imageHash;
@override final  int number;
@override final  dynamic createdAt;
@override final  String? description;
@override final  String? url;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EpisodeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.image, image) || other.image == image)&&(identical(other.imageHash, imageHash) || other.imageHash == imageHash)&&(identical(other.number, number) || other.number == number)&&const DeepCollectionEquality().equals(other.createdAt, createdAt)&&(identical(other.description, description) || other.description == description)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,image,imageHash,number,const DeepCollectionEquality().hash(createdAt),description,url);

@override
String toString() {
  return 'EpisodeModel(id: $id, title: $title, image: $image, imageHash: $imageHash, number: $number, createdAt: $createdAt, description: $description, url: $url)';
}


}

/// @nodoc
abstract mixin class _$EpisodeModelCopyWith<$Res> implements $EpisodeModelCopyWith<$Res> {
  factory _$EpisodeModelCopyWith(_EpisodeModel value, $Res Function(_EpisodeModel) _then) = __$EpisodeModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String? title, String? image, String? imageHash, int number, dynamic createdAt, String? description, String? url
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = freezed,Object? image = freezed,Object? imageHash = freezed,Object? number = null,Object? createdAt = freezed,Object? description = freezed,Object? url = freezed,}) {
  return _then(_EpisodeModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,imageHash: freezed == imageHash ? _self.imageHash : imageHash // ignore: cast_nullable_to_non_nullable
as String?,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as dynamic,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
