import 'package:duzify/data/search/models/external_urls.dart';
import 'package:duzify/data/search/models/image.dart';
import 'package:duzify/data/search/models/restrictions.dart';
import 'package:duzify/data/search/models/simplified_artist.dart';
import 'package:duzify/domain/search/entities/album.dart';

class AlbumModel extends AlbumEntity {
  const AlbumModel({
    required super.albumType,
    required super.totalTracks,
    required super.availableMarkets,
    required super.externalUrls,
    required super.href,
    required super.id,
    required super.images,
    required super.name,
    required super.releaseDate,
    required super.releaseDatePrecision,
    required super.restrictions,
    required super.type,
    required super.uri,
    required super.artists,
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
      restrictions: json['restrictions'] != null
          ? RestrictionsModel.fromJson(json['restrictions'])
          : null,
      type: json['type'],
      uri: json['uri'],
      artists: List<SimplifiedArtistModel>.from(
        json['artists'].map((x) => SimplifiedArtistModel.fromJson(x)),
      ),
    );
  }
}
