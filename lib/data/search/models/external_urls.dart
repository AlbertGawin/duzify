import 'package:duzify/domain/search/entities/external_urls.dart';

class ExternalUrlsModel extends ExternalUrlsEntity {
  const ExternalUrlsModel({
    required super.spotify,
  });

  factory ExternalUrlsModel.fromJson(Map<String, dynamic> json) {
    return ExternalUrlsModel(
      spotify: json['spotify'],
    );
  }
}
