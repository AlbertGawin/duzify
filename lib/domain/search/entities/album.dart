import 'package:duzify/domain/search/entities/external_urls.dart';
import 'package:duzify/domain/search/entities/image.dart';
import 'package:duzify/domain/search/entities/restrictions.dart';
import 'package:duzify/domain/search/entities/simplified_artist.dart';

class AlbumEntity {
  final String albumType;
  final int totalTracks;
  final List<String> availableMarkets;
  final ExternalUrlsEntity externalUrls;
  final String href;
  final String id;
  final List<ImageEntity> images;
  final String name;
  final String releaseDate;
  final String releaseDatePrecision;
  final RestrictionsEntity? restrictions;
  final String type;
  final String uri;
  final List<SimplifiedArtistEntity> artists;

  const AlbumEntity({
    required this.albumType,
    required this.totalTracks,
    required this.availableMarkets,
    required this.externalUrls,
    required this.href,
    required this.id,
    required this.images,
    required this.name,
    required this.releaseDate,
    required this.releaseDatePrecision,
    required this.restrictions,
    required this.type,
    required this.uri,
    required this.artists,
  });
}
