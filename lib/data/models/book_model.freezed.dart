// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BookModel {

 String get id;@JsonKey(name: 'volumeInfo') VolumeInfo get volumeInfo;
/// Create a copy of BookModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookModelCopyWith<BookModel> get copyWith => _$BookModelCopyWithImpl<BookModel>(this as BookModel, _$identity);

  /// Serializes this BookModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookModel&&(identical(other.id, id) || other.id == id)&&(identical(other.volumeInfo, volumeInfo) || other.volumeInfo == volumeInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,volumeInfo);

@override
String toString() {
  return 'BookModel(id: $id, volumeInfo: $volumeInfo)';
}


}

/// @nodoc
abstract mixin class $BookModelCopyWith<$Res>  {
  factory $BookModelCopyWith(BookModel value, $Res Function(BookModel) _then) = _$BookModelCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'volumeInfo') VolumeInfo volumeInfo
});


$VolumeInfoCopyWith<$Res> get volumeInfo;

}
/// @nodoc
class _$BookModelCopyWithImpl<$Res>
    implements $BookModelCopyWith<$Res> {
  _$BookModelCopyWithImpl(this._self, this._then);

  final BookModel _self;
  final $Res Function(BookModel) _then;

/// Create a copy of BookModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? volumeInfo = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,volumeInfo: null == volumeInfo ? _self.volumeInfo : volumeInfo // ignore: cast_nullable_to_non_nullable
as VolumeInfo,
  ));
}
/// Create a copy of BookModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VolumeInfoCopyWith<$Res> get volumeInfo {
  
  return $VolumeInfoCopyWith<$Res>(_self.volumeInfo, (value) {
    return _then(_self.copyWith(volumeInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [BookModel].
extension BookModelPatterns on BookModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookModel value)  $default,){
final _that = this;
switch (_that) {
case _BookModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookModel value)?  $default,){
final _that = this;
switch (_that) {
case _BookModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'volumeInfo')  VolumeInfo volumeInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookModel() when $default != null:
return $default(_that.id,_that.volumeInfo);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'volumeInfo')  VolumeInfo volumeInfo)  $default,) {final _that = this;
switch (_that) {
case _BookModel():
return $default(_that.id,_that.volumeInfo);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'volumeInfo')  VolumeInfo volumeInfo)?  $default,) {final _that = this;
switch (_that) {
case _BookModel() when $default != null:
return $default(_that.id,_that.volumeInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookModel implements BookModel {
  const _BookModel({required this.id, @JsonKey(name: 'volumeInfo') required this.volumeInfo});
  factory _BookModel.fromJson(Map<String, dynamic> json) => _$BookModelFromJson(json);

@override final  String id;
@override@JsonKey(name: 'volumeInfo') final  VolumeInfo volumeInfo;

/// Create a copy of BookModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookModelCopyWith<_BookModel> get copyWith => __$BookModelCopyWithImpl<_BookModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookModel&&(identical(other.id, id) || other.id == id)&&(identical(other.volumeInfo, volumeInfo) || other.volumeInfo == volumeInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,volumeInfo);

@override
String toString() {
  return 'BookModel(id: $id, volumeInfo: $volumeInfo)';
}


}

/// @nodoc
abstract mixin class _$BookModelCopyWith<$Res> implements $BookModelCopyWith<$Res> {
  factory _$BookModelCopyWith(_BookModel value, $Res Function(_BookModel) _then) = __$BookModelCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'volumeInfo') VolumeInfo volumeInfo
});


@override $VolumeInfoCopyWith<$Res> get volumeInfo;

}
/// @nodoc
class __$BookModelCopyWithImpl<$Res>
    implements _$BookModelCopyWith<$Res> {
  __$BookModelCopyWithImpl(this._self, this._then);

  final _BookModel _self;
  final $Res Function(_BookModel) _then;

/// Create a copy of BookModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? volumeInfo = null,}) {
  return _then(_BookModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,volumeInfo: null == volumeInfo ? _self.volumeInfo : volumeInfo // ignore: cast_nullable_to_non_nullable
as VolumeInfo,
  ));
}

/// Create a copy of BookModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VolumeInfoCopyWith<$Res> get volumeInfo {
  
  return $VolumeInfoCopyWith<$Res>(_self.volumeInfo, (value) {
    return _then(_self.copyWith(volumeInfo: value));
  });
}
}


/// @nodoc
mixin _$VolumeInfo {

 String get title; List<String>? get authors; ImageLinks? get imageLinks; String? get description;
/// Create a copy of VolumeInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VolumeInfoCopyWith<VolumeInfo> get copyWith => _$VolumeInfoCopyWithImpl<VolumeInfo>(this as VolumeInfo, _$identity);

  /// Serializes this VolumeInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VolumeInfo&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.authors, authors)&&(identical(other.imageLinks, imageLinks) || other.imageLinks == imageLinks)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(authors),imageLinks,description);

@override
String toString() {
  return 'VolumeInfo(title: $title, authors: $authors, imageLinks: $imageLinks, description: $description)';
}


}

/// @nodoc
abstract mixin class $VolumeInfoCopyWith<$Res>  {
  factory $VolumeInfoCopyWith(VolumeInfo value, $Res Function(VolumeInfo) _then) = _$VolumeInfoCopyWithImpl;
@useResult
$Res call({
 String title, List<String>? authors, ImageLinks? imageLinks, String? description
});


$ImageLinksCopyWith<$Res>? get imageLinks;

}
/// @nodoc
class _$VolumeInfoCopyWithImpl<$Res>
    implements $VolumeInfoCopyWith<$Res> {
  _$VolumeInfoCopyWithImpl(this._self, this._then);

  final VolumeInfo _self;
  final $Res Function(VolumeInfo) _then;

/// Create a copy of VolumeInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? authors = freezed,Object? imageLinks = freezed,Object? description = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,authors: freezed == authors ? _self.authors : authors // ignore: cast_nullable_to_non_nullable
as List<String>?,imageLinks: freezed == imageLinks ? _self.imageLinks : imageLinks // ignore: cast_nullable_to_non_nullable
as ImageLinks?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of VolumeInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImageLinksCopyWith<$Res>? get imageLinks {
    if (_self.imageLinks == null) {
    return null;
  }

  return $ImageLinksCopyWith<$Res>(_self.imageLinks!, (value) {
    return _then(_self.copyWith(imageLinks: value));
  });
}
}


/// Adds pattern-matching-related methods to [VolumeInfo].
extension VolumeInfoPatterns on VolumeInfo {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VolumeInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VolumeInfo() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VolumeInfo value)  $default,){
final _that = this;
switch (_that) {
case _VolumeInfo():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VolumeInfo value)?  $default,){
final _that = this;
switch (_that) {
case _VolumeInfo() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  List<String>? authors,  ImageLinks? imageLinks,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VolumeInfo() when $default != null:
return $default(_that.title,_that.authors,_that.imageLinks,_that.description);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  List<String>? authors,  ImageLinks? imageLinks,  String? description)  $default,) {final _that = this;
switch (_that) {
case _VolumeInfo():
return $default(_that.title,_that.authors,_that.imageLinks,_that.description);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  List<String>? authors,  ImageLinks? imageLinks,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _VolumeInfo() when $default != null:
return $default(_that.title,_that.authors,_that.imageLinks,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VolumeInfo implements VolumeInfo {
  const _VolumeInfo({required this.title, final  List<String>? authors, this.imageLinks, this.description}): _authors = authors;
  factory _VolumeInfo.fromJson(Map<String, dynamic> json) => _$VolumeInfoFromJson(json);

@override final  String title;
 final  List<String>? _authors;
@override List<String>? get authors {
  final value = _authors;
  if (value == null) return null;
  if (_authors is EqualUnmodifiableListView) return _authors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  ImageLinks? imageLinks;
@override final  String? description;

/// Create a copy of VolumeInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VolumeInfoCopyWith<_VolumeInfo> get copyWith => __$VolumeInfoCopyWithImpl<_VolumeInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VolumeInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VolumeInfo&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._authors, _authors)&&(identical(other.imageLinks, imageLinks) || other.imageLinks == imageLinks)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(_authors),imageLinks,description);

@override
String toString() {
  return 'VolumeInfo(title: $title, authors: $authors, imageLinks: $imageLinks, description: $description)';
}


}

/// @nodoc
abstract mixin class _$VolumeInfoCopyWith<$Res> implements $VolumeInfoCopyWith<$Res> {
  factory _$VolumeInfoCopyWith(_VolumeInfo value, $Res Function(_VolumeInfo) _then) = __$VolumeInfoCopyWithImpl;
@override @useResult
$Res call({
 String title, List<String>? authors, ImageLinks? imageLinks, String? description
});


@override $ImageLinksCopyWith<$Res>? get imageLinks;

}
/// @nodoc
class __$VolumeInfoCopyWithImpl<$Res>
    implements _$VolumeInfoCopyWith<$Res> {
  __$VolumeInfoCopyWithImpl(this._self, this._then);

  final _VolumeInfo _self;
  final $Res Function(_VolumeInfo) _then;

/// Create a copy of VolumeInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? authors = freezed,Object? imageLinks = freezed,Object? description = freezed,}) {
  return _then(_VolumeInfo(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,authors: freezed == authors ? _self._authors : authors // ignore: cast_nullable_to_non_nullable
as List<String>?,imageLinks: freezed == imageLinks ? _self.imageLinks : imageLinks // ignore: cast_nullable_to_non_nullable
as ImageLinks?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of VolumeInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImageLinksCopyWith<$Res>? get imageLinks {
    if (_self.imageLinks == null) {
    return null;
  }

  return $ImageLinksCopyWith<$Res>(_self.imageLinks!, (value) {
    return _then(_self.copyWith(imageLinks: value));
  });
}
}


/// @nodoc
mixin _$ImageLinks {

 String? get smallThumbnail; String? get thumbnail;
/// Create a copy of ImageLinks
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageLinksCopyWith<ImageLinks> get copyWith => _$ImageLinksCopyWithImpl<ImageLinks>(this as ImageLinks, _$identity);

  /// Serializes this ImageLinks to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageLinks&&(identical(other.smallThumbnail, smallThumbnail) || other.smallThumbnail == smallThumbnail)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,smallThumbnail,thumbnail);

@override
String toString() {
  return 'ImageLinks(smallThumbnail: $smallThumbnail, thumbnail: $thumbnail)';
}


}

/// @nodoc
abstract mixin class $ImageLinksCopyWith<$Res>  {
  factory $ImageLinksCopyWith(ImageLinks value, $Res Function(ImageLinks) _then) = _$ImageLinksCopyWithImpl;
@useResult
$Res call({
 String? smallThumbnail, String? thumbnail
});




}
/// @nodoc
class _$ImageLinksCopyWithImpl<$Res>
    implements $ImageLinksCopyWith<$Res> {
  _$ImageLinksCopyWithImpl(this._self, this._then);

  final ImageLinks _self;
  final $Res Function(ImageLinks) _then;

/// Create a copy of ImageLinks
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? smallThumbnail = freezed,Object? thumbnail = freezed,}) {
  return _then(_self.copyWith(
smallThumbnail: freezed == smallThumbnail ? _self.smallThumbnail : smallThumbnail // ignore: cast_nullable_to_non_nullable
as String?,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ImageLinks].
extension ImageLinksPatterns on ImageLinks {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImageLinks value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImageLinks() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImageLinks value)  $default,){
final _that = this;
switch (_that) {
case _ImageLinks():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImageLinks value)?  $default,){
final _that = this;
switch (_that) {
case _ImageLinks() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? smallThumbnail,  String? thumbnail)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ImageLinks() when $default != null:
return $default(_that.smallThumbnail,_that.thumbnail);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? smallThumbnail,  String? thumbnail)  $default,) {final _that = this;
switch (_that) {
case _ImageLinks():
return $default(_that.smallThumbnail,_that.thumbnail);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? smallThumbnail,  String? thumbnail)?  $default,) {final _that = this;
switch (_that) {
case _ImageLinks() when $default != null:
return $default(_that.smallThumbnail,_that.thumbnail);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ImageLinks implements ImageLinks {
  const _ImageLinks({this.smallThumbnail, this.thumbnail});
  factory _ImageLinks.fromJson(Map<String, dynamic> json) => _$ImageLinksFromJson(json);

@override final  String? smallThumbnail;
@override final  String? thumbnail;

/// Create a copy of ImageLinks
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageLinksCopyWith<_ImageLinks> get copyWith => __$ImageLinksCopyWithImpl<_ImageLinks>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ImageLinksToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImageLinks&&(identical(other.smallThumbnail, smallThumbnail) || other.smallThumbnail == smallThumbnail)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,smallThumbnail,thumbnail);

@override
String toString() {
  return 'ImageLinks(smallThumbnail: $smallThumbnail, thumbnail: $thumbnail)';
}


}

/// @nodoc
abstract mixin class _$ImageLinksCopyWith<$Res> implements $ImageLinksCopyWith<$Res> {
  factory _$ImageLinksCopyWith(_ImageLinks value, $Res Function(_ImageLinks) _then) = __$ImageLinksCopyWithImpl;
@override @useResult
$Res call({
 String? smallThumbnail, String? thumbnail
});




}
/// @nodoc
class __$ImageLinksCopyWithImpl<$Res>
    implements _$ImageLinksCopyWith<$Res> {
  __$ImageLinksCopyWithImpl(this._self, this._then);

  final _ImageLinks _self;
  final $Res Function(_ImageLinks) _then;

/// Create a copy of ImageLinks
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? smallThumbnail = freezed,Object? thumbnail = freezed,}) {
  return _then(_ImageLinks(
smallThumbnail: freezed == smallThumbnail ? _self.smallThumbnail : smallThumbnail // ignore: cast_nullable_to_non_nullable
as String?,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
