import 'package:duzify/domain/search/entities/author.dart';
import 'package:duzify/domain/search/entities/copyright.dart';
import 'package:duzify/domain/search/entities/external_urls.dart';
import 'package:duzify/domain/search/entities/image.dart';
import 'package:duzify/domain/search/entities/narrator.dart';

class AudiobookEntity {
  final List<AuthorEntity> authors;
  final List<String> availableMarkets;
  final List<CopyrightEntity> copyrights;
  final String description;
  final String htmlDescription;
  final String edition;
  final bool explicit;
  final ExternalUrlsEntity externalUrls;
  final String href;
  final String id;
  final List<ImageEntity> images;
  final List<String> languages;
  final String mediaType;
  final String name;
  final NarratorEntity narrator;
  final String publisher;
  final String type;
  final String uri;
  final int totalChapters;

  const AudiobookEntity({
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
}
