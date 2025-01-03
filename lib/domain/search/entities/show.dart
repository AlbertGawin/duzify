import 'package:duzify/domain/search/entities/copyright.dart';
import 'package:duzify/domain/search/entities/external_urls.dart';
import 'package:duzify/domain/search/entities/image.dart';

class ShowEntity {
  final List<String> availableMarkets;
  final List<CopyrightEntity> copyrights;
  final String description;
  final String htmlDescription;
  final bool explicit;
  final ExternalUrlsEntity externalUrls;
  final String href;
  final String id;
  final List<ImageEntity> images;
  final bool isExternallyHosted;
  final List<String> languages;
  final String mediaType;
  final String name;
  final String publisher;
  final String type;
  final String uri;
  final int totalEpisodes;

  const ShowEntity({
    required this.availableMarkets,
    required this.copyrights,
    required this.description,
    required this.htmlDescription,
    required this.explicit,
    required this.externalUrls,
    required this.href,
    required this.id,
    required this.images,
    required this.isExternallyHosted,
    required this.languages,
    required this.mediaType,
    required this.name,
    required this.publisher,
    required this.type,
    required this.uri,
    required this.totalEpisodes,
  });
}
