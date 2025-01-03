import 'package:duzify/data/search/models/external_urls.dart';
import 'package:duzify/data/search/models/image_object.dart';
import 'package:duzify/data/search/models/restrictions.dart';
import 'package:duzify/data/search/models/resume_point.dart';

class Episode {
  final String description;
  final String htmlDescription;
  final int durationMs;
  final bool explicit;
  final ExternalUrls externalUrls;
  final String href;
  final String id;
  final List<ImageObject> images;
  final bool isExternallyHosted;
  final bool isPlayable;
  final List<String> languages;
  final String name;
  final String releaseDate;
  final String releaseDatePrecision;
  final ResumePoint resumePoint;
  final String type;
  final String uri;
  final Restrictions restrictions;

  const Episode({
    required this.description,
    required this.htmlDescription,
    required this.durationMs,
    required this.explicit,
    required this.externalUrls,
    required this.href,
    required this.id,
    required this.images,
    required this.isExternallyHosted,
    required this.isPlayable,
    required this.languages,
    required this.name,
    required this.releaseDate,
    required this.releaseDatePrecision,
    required this.resumePoint,
    required this.type,
    required this.uri,
    required this.restrictions,
  });

  factory Episode.fromJson(Map<String, dynamic> json) {
    return Episode(
      description: json['description'],
      htmlDescription: json['html_description'],
      durationMs: json['duration_ms'],
      explicit: json['explicit'],
      externalUrls: ExternalUrls.fromJson(json['external_urls']),
      href: json['href'],
      id: json['id'],
      images: List<ImageObject>.from(
        json['images'].map((x) => ImageObject.fromJson(x)),
      ),
      isExternallyHosted: json['is_externally_hosted'],
      isPlayable: json['is_playable'],
      languages: List<String>.from(json['languages']),
      name: json['name'],
      releaseDate: json['release_date'],
      releaseDatePrecision: json['release_date_precision'],
      resumePoint: ResumePoint.fromJson(json['resume_point']),
      type: json['type'],
      uri: json['uri'],
      restrictions: Restrictions.fromJson(json['restrictions']),
    );
  }
}
