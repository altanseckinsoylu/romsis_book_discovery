import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_model.freezed.dart';
part 'book_model.g.dart';

@freezed
abstract class BookModel with _$BookModel {
  const factory BookModel({
    required String id,
    @JsonKey(name: 'volumeInfo') required VolumeInfo volumeInfo,
  }) = _BookModel;

  factory BookModel.fromJson(Map<String, dynamic> json) => _$BookModelFromJson(json);
}

@freezed
abstract class VolumeInfo with _$VolumeInfo {
  const factory VolumeInfo({
    required String title,
    List<String>? authors,
    ImageLinks? imageLinks,
    String? description,
  }) = _VolumeInfo;

  factory VolumeInfo.fromJson(Map<String, dynamic> json) => _$VolumeInfoFromJson(json);
}

@freezed
abstract class ImageLinks with _$ImageLinks {
  const factory ImageLinks({
    String? smallThumbnail,
    String? thumbnail,
  }) = _ImageLinks;

  factory ImageLinks.fromJson(Map<String, dynamic> json) => _$ImageLinksFromJson(json);
}