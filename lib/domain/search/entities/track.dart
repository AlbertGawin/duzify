import 'package:duzify/domain/search/entities/album.dart';
import 'package:duzify/domain/search/entities/external_ids.dart';
import 'package:duzify/domain/search/entities/external_urls.dart';
import 'package:duzify/domain/search/entities/restrictions.dart';
import 'package:duzify/domain/search/entities/simplified_artist.dart';

class TrackEntity {
  final AlbumEntity album;
  final List<SimplifiedArtistEntity> artists;
  final List<String> availableMarkets;
  final int discNumber;
  final int durationMs;
  final bool explicit;
  final ExternalIdsEntity externalIds;
  final ExternalUrlsEntity externalUrls;
  final String href;
  final String id;
  final bool isPlayable;
  final RestrictionsEntity? restrictions;
  final String name;
  final int popularity;
  final int trackNumber;
  final String type;
  final String uri;
  final bool isLocal;

  const TrackEntity({
    required this.album,
    required this.artists,
    required this.availableMarkets,
    required this.discNumber,
    required this.durationMs,
    required this.explicit,
    required this.externalIds,
    required this.externalUrls,
    required this.href,
    required this.id,
    required this.isPlayable,
    required this.restrictions,
    required this.name,
    required this.popularity,
    required this.trackNumber,
    required this.type,
    required this.uri,
    required this.isLocal,
  });
}
