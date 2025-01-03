import 'package:duzify/data/search/models/album.dart';
import 'package:duzify/data/search/models/external_ids.dart';
import 'package:duzify/data/search/models/external_urls.dart';
import 'package:duzify/data/search/models/restrictions.dart';
import 'package:duzify/data/search/models/simplified_artist_object.dart';

class TrackObject {
  final Album album;
  final List<SimplifiedArtistObject> artists;
  final List<String> availableMarkets;
  final int discNumber;
  final int durationMs;
  final bool explicit;
  final ExternalIds externalIds;
  final ExternalUrls externalUrls;
  final String href;
  final String id;
  final bool isPlayable;
  final Restrictions restrictions;
  final String name;
  final int popularity;
  final int trackNumber;
  final String type;
  final String uri;
  final bool isLocal;

  const TrackObject({
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

  factory TrackObject.fromJson(Map<String, dynamic> json) {
    return TrackObject(
      album: Album.fromJson(json['album']),
      artists: List<SimplifiedArtistObject>.from(
          json['artists'].map((x) => SimplifiedArtistObject.fromJson(x))),
      availableMarkets: List<String>.from(json['available_markets']),
      discNumber: json['disc_number'],
      durationMs: json['duration_ms'],
      explicit: json['explicit'],
      externalIds: ExternalIds.fromJson(json['external_ids']),
      externalUrls: ExternalUrls.fromJson(json['external_urls']),
      href: json['href'],
      id: json['id'],
      isPlayable: json['is_playable'],
      restrictions: Restrictions.fromJson(json['restrictions']),
      name: json['name'],
      popularity: json['popularity'],
      trackNumber: json['track_number'],
      type: json['type'],
      uri: json['uri'],
      isLocal: json['is_local'],
    );
  }
}
