class ImageObject {
  final String url;
  final int? height;
  final int? width;

  const ImageObject({
    required this.url,
    required this.height,
    required this.width,
  });

  factory ImageObject.fromJson(Map<String, dynamic> json) {
    return ImageObject(
      url: json['url'],
      height: json['height'],
      width: json['width'],
    );
  }
}
