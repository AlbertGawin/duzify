import 'package:duzify/data/search/models/copyright.dart';
import 'package:duzify/data/search/models/external_urls.dart';
import 'package:duzify/data/search/models/image.dart';

class ShowModel {
  final List<String> availableMarkets;
  final List<CopyrightModel> copyrights;
  final String description;
  final String htmlDescription;
  final bool explicit;
  final ExternalUrlsModel externalUrls;
  final String href;
  final String id;
  final List<ImageModel> images;
  final bool isExternallyHosted;
  final List<String> languages;
  final String mediaType;
  final String name;
  final String publisher;
  final String type;
  final String uri;
  final int totalEpisodes;

  const ShowModel({
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

  factory ShowModel.fromJson(Map<String, dynamic> json) {
    return ShowModel(
      availableMarkets: List<String>.from(json['available_markets']),
      copyrights: List<CopyrightModel>.from(
        json['copyrights'].map((x) => CopyrightModel.fromJson(x)),
      ),
      description: json['description'],
      htmlDescription: json['html_description'],
      explicit: json['explicit'],
      externalUrls: ExternalUrlsModel.fromJson(json['external_urls']),
      href: json['href'],
      id: json['id'],
      images: List<ImageModel>.from(
        json['images'].map((x) => ImageModel.fromJson(x)),
      ),
      isExternallyHosted: json['is_externally_hosted'],
      languages: List<String>.from(json['languages']),
      mediaType: json['media_type'],
      name: json['name'],
      publisher: json['publisher'],
      type: json['type'],
      uri: json['uri'],
      totalEpisodes: json['total_episodes'],
    );
  }
}
