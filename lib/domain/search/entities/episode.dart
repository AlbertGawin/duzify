import 'package:duzify/domain/search/entities/external_urls.dart';
import 'package:duzify/domain/search/entities/image.dart';
import 'package:duzify/domain/search/entities/restrictions.dart';
import 'package:duzify/domain/search/entities/resume_point.dart';

class EpisodeEntity {
  final String description;
  final String htmlDescription;
  final int durationMs;
  final bool explicit;
  final ExternalUrlsEntity externalUrls;
  final String href;
  final String id;
  final List<ImageEntity> images;
  final bool isExternallyHosted;
  final bool isPlayable;
  final List<String> languages;
  final String name;
  final String releaseDate;
  final String releaseDatePrecision;
  final ResumePointEntity? resumePoint;
  final String type;
  final String uri;
  final RestrictionsEntity? restrictions;

  const EpisodeEntity({
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
}
