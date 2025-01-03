import 'package:duzify/domain/search/entities/external_urls.dart';

class SimplifiedArtistEntity {
  final ExternalUrlsEntity externalUrls;
  final String href;
  final String id;
  final String name;
  final String type;
  final String uri;

  const SimplifiedArtistEntity({
    required this.externalUrls,
    required this.href,
    required this.id,
    required this.name,
    required this.type,
    required this.uri,
  });
}
