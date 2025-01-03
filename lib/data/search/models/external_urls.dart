class ExternalUrlsModel {
  final String spotify;

  const ExternalUrlsModel({
    required this.spotify,
  });

  factory ExternalUrlsModel.fromJson(Map<String, dynamic> json) {
    return ExternalUrlsModel(
      spotify: json['spotify'],
    );
  }
}
