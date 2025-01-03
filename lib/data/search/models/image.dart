import 'package:duzify/domain/search/entities/image.dart';

class ImageModel extends ImageEntity {
  const ImageModel({
    required super.url,
    required super.height,
    required super.width,
  });

  factory ImageModel.fromJson(Map<String, dynamic> json) {
    return ImageModel(
      url: json['url'],
      height: json['height'],
      width: json['width'],
    );
  }
}
