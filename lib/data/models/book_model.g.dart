// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BookModel _$BookModelFromJson(Map<String, dynamic> json) => _BookModel(
  id: json['id'] as String,
  volumeInfo: VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>),
);

Map<String, dynamic> _$BookModelToJson(_BookModel instance) =>
    <String, dynamic>{'id': instance.id, 'volumeInfo': instance.volumeInfo};

_VolumeInfo _$VolumeInfoFromJson(Map<String, dynamic> json) => _VolumeInfo(
  title: json['title'] as String,
  authors: (json['authors'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  imageLinks: json['imageLinks'] == null
      ? null
      : ImageLinks.fromJson(json['imageLinks'] as Map<String, dynamic>),
  description: json['description'] as String?,
);

Map<String, dynamic> _$VolumeInfoToJson(_VolumeInfo instance) =>
    <String, dynamic>{
      'title': instance.title,
      'authors': instance.authors,
      'imageLinks': instance.imageLinks,
      'description': instance.description,
    };

_ImageLinks _$ImageLinksFromJson(Map<String, dynamic> json) => _ImageLinks(
  smallThumbnail: json['smallThumbnail'] as String?,
  thumbnail: json['thumbnail'] as String?,
);

Map<String, dynamic> _$ImageLinksToJson(_ImageLinks instance) =>
    <String, dynamic>{
      'smallThumbnail': instance.smallThumbnail,
      'thumbnail': instance.thumbnail,
    };
