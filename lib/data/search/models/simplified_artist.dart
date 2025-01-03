import 'package:duzify/data/search/models/external_urls.dart';
import 'package:duzify/domain/search/entities/simplified_artist.dart';

class SimplifiedArtistModel extends SimplifiedArtistEntity {
  const SimplifiedArtistModel({
    required super.externalUrls,
    required super.href,
    required super.id,
    required super.name,
    required super.type,
    required super.uri,
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
