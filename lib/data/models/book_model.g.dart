// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookModelImpl _$$BookModelImplFromJson(Map<String, dynamic> json) =>
    _$BookModelImpl(
      id: json['id'] as String,
      volumeInfo:
          VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BookModelImplToJson(_$BookModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'volumeInfo': instance.volumeInfo,
    };

_$VolumeInfoImpl _$$VolumeInfoImplFromJson(Map<String, dynamic> json) =>
    _$VolumeInfoImpl(
      title: json['title'] as String,
      authors:
          (json['authors'] as List<dynamic>?)?.map((e) => e as String).toList(),
      imageLinks: json['imageLinks'] == null
          ? null
          : ImageLinks.fromJson(json['imageLinks'] as Map<String, dynamic>),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$VolumeInfoImplToJson(_$VolumeInfoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'authors': instance.authors,
      'imageLinks': instance.imageLinks,
      'description': instance.description,
    };

_$ImageLinksImpl _$$ImageLinksImplFromJson(Map<String, dynamic> json) =>
    _$ImageLinksImpl(
      smallThumbnail: json['smallThumbnail'] as String?,
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$$ImageLinksImplToJson(_$ImageLinksImpl instance) =>
    <String, dynamic>{
      'smallThumbnail': instance.smallThumbnail,
      'thumbnail': instance.thumbnail,
    };
