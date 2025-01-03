import 'package:duzify/data/search/models/author.dart';
import 'package:duzify/data/search/models/copyright.dart';
import 'package:duzify/data/search/models/external_urls.dart';
import 'package:duzify/data/search/models/image.dart';
import 'package:duzify/data/search/models/narrator.dart';

class AudiobookModel {
  final List<AuthorModel> authors;
  final List<String> availableMarkets;
  final List<CopyrightModel> copyrights;
  final String description;
  final String htmlDescription;
  final String edition;
  final bool explicit;
  final ExternalUrlsModel externalUrls;
  final String href;
  final String id;
  final List<ImageModel> images;
  final List<String> languages;
  final String mediaType;
  final String name;
  final NarratorModel narrator;
  final String publisher;
  final String type;
  final String uri;
  final int totalChapters;

  const AudiobookModel({
    required this.authors,
    required this.availableMarkets,
    required this.copyrights,
    required this.description,
    required this.htmlDescription,
    required this.edition,
    required this.explicit,
    required this.externalUrls,
    required this.href,
    required this.id,
    required this.images,
    required this.languages,
    required this.mediaType,
    required this.name,
    required this.narrator,
    required this.publisher,
    required this.type,
    required this.uri,
    required this.totalChapters,
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
