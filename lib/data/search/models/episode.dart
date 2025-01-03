import 'package:duzify/data/search/models/external_urls.dart';
import 'package:duzify/data/search/models/image.dart';
import 'package:duzify/data/search/models/restrictions.dart';
import 'package:duzify/data/search/models/resume_point.dart';

class EpisodeModel {
  final String description;
  final String htmlDescription;
  final int durationMs;
  final bool explicit;
  final ExternalUrlsModel externalUrls;
  final String href;
  final String id;
  final List<ImageModel> images;
  final bool isExternallyHosted;
  final bool isPlayable;
  final List<String> languages;
  final String name;
  final String releaseDate;
  final String releaseDatePrecision;
  final ResumePointModel resumePoint;
  final String type;
  final String uri;
  final RestrictionsModel restrictions;

  const EpisodeModel({
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

  factory EpisodeModel.fromJson(Map<String, dynamic> json) {
    return EpisodeModel(
      description: json['description'],
      htmlDescription: json['html_description'],
      durationMs: json['duration_ms'],
      explicit: json['explicit'],
      externalUrls: ExternalUrlsModel.fromJson(json['external_urls']),
      href: json['href'],
      id: json['id'],
      images: List<ImageModel>.from(
        json['images'].map((x) => ImageModel.fromJson(x)),
      ),
      isExternallyHosted: json['is_externally_hosted'],
      isPlayable: json['is_playable'],
      languages: List<String>.from(json['languages']),
      name: json['name'],
      releaseDate: json['release_date'],
      releaseDatePrecision: json['release_date_precision'],
      resumePoint: ResumePointModel.fromJson(json['resume_point']),
      type: json['type'],
      uri: json['uri'],
      restrictions: RestrictionsModel.fromJson(json['restrictions']),
    );
  }
}
