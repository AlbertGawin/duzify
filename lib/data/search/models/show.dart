import 'package:duzify/data/search/models/copyright.dart';
import 'package:duzify/data/search/models/external_urls.dart';
import 'package:duzify/data/search/models/image_object.dart';

class Show {
  final List<String> availableMarkets;
  final List<Copyright> copyrights;
  final String description;
  final String htmlDescription;
  final bool explicit;
  final ExternalUrls externalUrls;
  final String href;
  final String id;
  final List<ImageObject> images;
  final bool isExternallyHosted;
  final List<String> languages;
  final String mediaType;
  final String name;
  final String publisher;
  final String type;
  final String uri;
  final int totalEpisodes;

  const Show({
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

  factory Show.fromJson(Map<String, dynamic> json) {
    return Show(
      availableMarkets: List<String>.from(json['available_markets']),
      copyrights: List<Copyright>.from(
        json['copyrights'].map((x) => Copyright.fromJson(x)),
      ),
      description: json['description'],
      htmlDescription: json['html_description'],
      explicit: json['explicit'],
      externalUrls: ExternalUrls.fromJson(json['external_urls']),
      href: json['href'],
      id: json['id'],
      images: List<ImageObject>.from(
        json['images'].map((x) => ImageObject.fromJson(x)),
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
