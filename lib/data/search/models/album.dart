import 'package:duzify/data/search/models/external_urls.dart';
import 'package:duzify/data/search/models/image_object.dart';
import 'package:duzify/data/search/models/restrictions.dart';
import 'package:duzify/data/search/models/simplified_artist_object.dart';

class Album {
  final String albumType;
  final int totalTracks;
  final List<String> availableMarkets;
  final ExternalUrls externalUrls;
  final String href;
  final String id;
  final List<ImageObject> images;
  final String name;
  final String releaseDate;
  final String releaseDatePrecision;
  final Restrictions restrictions;
  final String type;
  final String uri;
  final List<SimplifiedArtistObject> artists;

  const Album({
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

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      albumType: json['album_type'],
      totalTracks: json['total_tracks'],
      availableMarkets: List<String>.from(json['available_markets']),
      externalUrls: ExternalUrls.fromJson(json['external_urls']),
      href: json['href'],
      id: json['id'],
      images: List<ImageObject>.from(
        json['images'].map((x) => ImageObject.fromJson(x)),
      ),
      name: json['name'],
      releaseDate: json['release_date'],
      releaseDatePrecision: json['release_date_precision'],
      restrictions: Restrictions.fromJson(json['restrictions']),
      type: json['type'],
      uri: json['uri'],
      artists: List<SimplifiedArtistObject>.from(
        json['artists'].map((x) => SimplifiedArtistObject.fromJson(x)),
      ),
    );
  }
}
