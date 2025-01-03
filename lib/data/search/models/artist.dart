import 'package:duzify/data/search/models/external_urls.dart';
import 'package:duzify/data/search/models/followers.dart';
import 'package:duzify/data/search/models/image.dart';

class ArtistModel {
  final ExternalUrlsModel externalUrls;
  final FollowersModel followers;
  final List<String> genres;
  final String href;
  final String id;
  final List<ImageModel> images;
  final String name;
  final int popularity;
  final String type;
  final String uri;

  const ArtistModel({
    required this.externalUrls,
    required this.followers,
    required this.genres,
    required this.href,
    required this.id,
    required this.images,
    required this.name,
    required this.popularity,
    required this.type,
    required this.uri,
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
