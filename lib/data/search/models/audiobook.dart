import 'package:duzify/data/search/models/author.dart';
import 'package:duzify/data/search/models/copyright.dart';
import 'package:duzify/data/search/models/external_urls.dart';
import 'package:duzify/data/search/models/image_object.dart';
import 'package:duzify/data/search/models/narrator.dart';

class Audiobook {
  final List<Author> authors;
  final List<String> availableMarkets;
  final List<Copyright> copyrights;
  final String description;
  final String htmlDescription;
  final String edition;
  final bool explicit;
  final ExternalUrls externalUrls;
  final String href;
  final String id;
  final List<ImageObject> images;
  final List<String> languages;
  final String mediaType;
  final String name;
  final Narrator narrator;
  final String publisher;
  final String type;
  final String uri;
  final int totalChapters;

  const Audiobook({
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

  factory Audiobook.fromJson(Map<String, dynamic> json) {
    return Audiobook(
      authors: List<Author>.from(
        json['authors'].map((x) => Author.fromJson(x)),
      ),
      availableMarkets: List<String>.from(json['available_markets']),
      copyrights: List<Copyright>.from(
        json['copyrights'].map((x) => Copyright.fromJson(x)),
      ),
      description: json['description'],
      htmlDescription: json['html_description'],
      edition: json['edition'],
      explicit: json['explicit'],
      externalUrls: ExternalUrls.fromJson(json['external_urls']),
      href: json['href'],
      id: json['id'],
      images: List<ImageObject>.from(
        json['images'].map((x) => ImageObject.fromJson(x)),
      ),
      languages: List<String>.from(json['languages']),
      mediaType: json['media_type'],
      name: json['name'],
      narrator: Narrator.fromJson(json['narrator']),
      publisher: json['publisher'],
      type: json['type'],
      uri: json['uri'],
      totalChapters: json['total_chapters'],
    );
  }
}
