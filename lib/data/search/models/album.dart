import 'package:duzify/data/search/models/external_urls.dart';
import 'package:duzify/data/search/models/image.dart';
import 'package:duzify/data/search/models/restrictions.dart';
import 'package:duzify/data/search/models/simplified_artist.dart';

class AlbumModel {
  final String albumType;
  final int totalTracks;
  final List<String> availableMarkets;
  final ExternalUrlsModel externalUrls;
  final String href;
  final String id;
  final List<ImageModel> images;
  final String name;
  final String releaseDate;
  final String releaseDatePrecision;
  final RestrictionsModel restrictions;
  final String type;
  final String uri;
  final List<SimplifiedArtistModel> artists;

  const AlbumModel({
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

  factory AlbumModel.fromJson(Map<String, dynamic> json) {
    return AlbumModel(
      albumType: json['album_type'],
      totalTracks: json['total_tracks'],
      availableMarkets: List<String>.from(json['available_markets']),
      externalUrls: ExternalUrlsModel.fromJson(json['external_urls']),
      href: json['href'],
      id: json['id'],
      images: List<ImageModel>.from(
        json['images'].map((x) => ImageModel.fromJson(x)),
      ),
      name: json['name'],
      releaseDate: json['release_date'],
      releaseDatePrecision: json['release_date_precision'],
      restrictions: RestrictionsModel.fromJson(json['restrictions']),
      type: json['type'],
      uri: json['uri'],
      artists: List<SimplifiedArtistModel>.from(
        json['artists'].map((x) => SimplifiedArtistModel.fromJson(x)),
      ),
    );
  }
}
