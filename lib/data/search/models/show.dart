import 'package:duzify/data/search/models/copyright.dart';
import 'package:duzify/data/search/models/external_urls.dart';
import 'package:duzify/data/search/models/image.dart';
import 'package:duzify/domain/search/entities/show.dart';

class ShowModel extends ShowEntity {
  const ShowModel({
    required super.availableMarkets,
    required super.copyrights,
    required super.description,
    required super.htmlDescription,
    required super.explicit,
    required super.externalUrls,
    required super.href,
    required super.id,
    required super.images,
    required super.isExternallyHosted,
    required super.languages,
    required super.mediaType,
    required super.name,
    required super.publisher,
    required super.type,
    required super.uri,
    required super.totalEpisodes,
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
