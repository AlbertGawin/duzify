import 'package:duzify/data/search/models/external_urls.dart';
import 'package:duzify/data/search/models/followers.dart';
import 'package:duzify/data/search/models/image.dart';
import 'package:duzify/domain/search/entities/artist.dart';

class ArtistModel extends ArtistEntity {
  const ArtistModel({
    required super.externalUrls,
    required super.followers,
    required super.genres,
    required super.href,
    required super.id,
    required super.images,
    required super.name,
    required super.popularity,
    required super.type,
    required super.uri,
  });

  factory ArtistModel.fromJson(Map<String, dynamic> json) {
    return ArtistModel(
      externalUrls: ExternalUrlsModel.fromJson(json['external_urls']),
      followers: FollowersModel.fromJson(json['followers']),
      genres: List<String>.from(json['genres']),
      href: json['href'],
      id: json['id'],
      images: List<ImageModel>.from(
          json['images'].map((x) => ImageModel.fromJson(x))),
      name: json['name'],
      popularity: json['popularity'],
      type: json['type'],
      uri: json['uri'],
    );
  }
}
