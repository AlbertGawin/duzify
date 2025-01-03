import 'package:duzify/data/search/models/external_urls.dart';

class SimplifiedArtistModel {
  final ExternalUrlsModel externalUrls;
  final String href;
  final String id;
  final String name;
  final String type;
  final String uri;

  const SimplifiedArtistModel({
    required this.externalUrls,
    required this.href,
    required this.id,
    required this.name,
    required this.type,
    required this.uri,
  });

  factory SimplifiedArtistModel.fromJson(Map<String, dynamic> json) {
    return SimplifiedArtistModel(
      externalUrls: ExternalUrlsModel.fromJson(json['external_urls']),
      href: json['href'],
      id: json['id'],
      name: json['name'],
      type: json['type'],
      uri: json['uri'],
    );
  }
}
