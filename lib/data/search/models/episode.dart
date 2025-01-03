import 'package:duzify/data/search/models/external_urls.dart';
import 'package:duzify/data/search/models/image.dart';
import 'package:duzify/data/search/models/restrictions.dart';
import 'package:duzify/data/search/models/resume_point.dart';
import 'package:duzify/domain/search/entities/episode.dart';

class EpisodeModel extends EpisodeEntity {
  const EpisodeModel({
    required super.description,
    required super.htmlDescription,
    required super.durationMs,
    required super.explicit,
    required super.externalUrls,
    required super.href,
    required super.id,
    required super.images,
    required super.isExternallyHosted,
    required super.isPlayable,
    required super.languages,
    required super.name,
    required super.releaseDate,
    required super.releaseDatePrecision,
    required super.resumePoint,
    required super.type,
    required super.uri,
    required super.restrictions,
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
      resumePoint: json['resume_point'] != null
          ? ResumePointModel.fromJson(json['resume_point'])
          : null,
      type: json['type'],
      uri: json['uri'],
      restrictions: json['restrictions'] != null
          ? RestrictionsModel.fromJson(json['restrictions'])
          : null,
    );
  }
}
