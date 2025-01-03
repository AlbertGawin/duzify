import 'package:duzify/data/search/models/author.dart';
import 'package:duzify/data/search/models/copyright.dart';
import 'package:duzify/data/search/models/external_urls.dart';
import 'package:duzify/data/search/models/image.dart';
import 'package:duzify/data/search/models/narrator.dart';
import 'package:duzify/domain/search/entities/audiobook.dart';

class AudiobookModel extends AudiobookEntity {
  const AudiobookModel({
    required super.authors,
    required super.availableMarkets,
    required super.copyrights,
    required super.description,
    required super.htmlDescription,
    required super.edition,
    required super.explicit,
    required super.externalUrls,
    required super.href,
    required super.id,
    required super.images,
    required super.languages,
    required super.mediaType,
    required super.name,
    required super.narrator,
    required super.publisher,
    required super.type,
    required super.uri,
    required super.totalChapters,
  });

  factory AudiobookModel.fromJson(Map<String, dynamic> json) {
    return AudiobookModel(
      authors: List<AuthorModel>.from(
        json['authors'].map((x) => AuthorModel.fromJson(x)),
      ),
      availableMarkets: List<String>.from(json['available_markets']),
      copyrights: List<CopyrightModel>.from(
        json['copyrights'].map((x) => CopyrightModel.fromJson(x)),
      ),
      description: json['description'],
      htmlDescription: json['html_description'],
      edition: json['edition'],
      explicit: json['explicit'],
      externalUrls: ExternalUrlsModel.fromJson(json['external_urls']),
      href: json['href'],
      id: json['id'],
      images: List<ImageModel>.from(
        json['images'].map((x) => ImageModel.fromJson(x)),
      ),
      languages: List<String>.from(json['languages']),
      mediaType: json['media_type'],
      name: json['name'],
      narrator: NarratorModel.fromJson(json['narrator']),
      publisher: json['publisher'],
      type: json['type'],
      uri: json['uri'],
      totalChapters: json['total_chapters'],
    );
  }
}
