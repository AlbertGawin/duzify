import 'package:duzify/data/search/models/album.dart';
import 'package:duzify/data/search/models/external_ids.dart';
import 'package:duzify/data/search/models/external_urls.dart';
import 'package:duzify/data/search/models/restrictions.dart';
import 'package:duzify/data/search/models/simplified_artist.dart';
import 'package:duzify/domain/search/entities/track.dart';

class TrackModel extends TrackEntity {
  const TrackModel({
    required super.album,
    required super.artists,
    required super.availableMarkets,
    required super.discNumber,
    required super.durationMs,
    required super.explicit,
    required super.externalIds,
    required super.externalUrls,
    required super.href,
    required super.id,
    required super.isPlayable,
    required super.restrictions,
    required super.name,
    required super.popularity,
    required super.trackNumber,
    required super.type,
    required super.uri,
    required super.isLocal,
  });

  factory TrackModel.fromJson(Map<String, dynamic> json) {
    return TrackModel(
      album: AlbumModel.fromJson(json['album']),
      artists: List<SimplifiedArtistModel>.from(
          json['artists'].map((x) => SimplifiedArtistModel.fromJson(x))),
      availableMarkets: List<String>.from(json['available_markets']),
      discNumber: json['disc_number'],
      durationMs: json['duration_ms'],
      explicit: json['explicit'],
      externalIds: ExternalIdsModel.fromJson(json['external_ids']),
      externalUrls: ExternalUrlsModel.fromJson(json['external_urls']),
      href: json['href'],
      id: json['id'],
      isPlayable: json['is_playable'],
      restrictions: json['restrictions'] != null
          ? RestrictionsModel.fromJson(json['restrictions'])
          : null,
      name: json['name'],
      popularity: json['popularity'],
      trackNumber: json['track_number'],
      type: json['type'],
      uri: json['uri'],
      isLocal: json['is_local'],
    );
  }
}
