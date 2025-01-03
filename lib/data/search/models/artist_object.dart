import 'package:duzify/data/search/models/external_urls.dart';
import 'package:duzify/data/search/models/followers.dart';
import 'package:duzify/data/search/models/image_object.dart';

class ArtistObject {
  final ExternalUrls externalUrls;
  final Followers followers;
  final List<String> genres;
  final String href;
  final String id;
  final List<ImageObject> images;
  final String name;
  final int popularity;
  final String type;
  final String uri;

  const ArtistObject({
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

  factory ArtistObject.fromJson(Map<String, dynamic> json) {
    return ArtistObject(
      externalUrls: ExternalUrls.fromJson(json['external_urls']),
      followers: Followers.fromJson(json['followers']),
      genres: List<String>.from(json['genres']),
      href: json['href'],
      id: json['id'],
      images: List<ImageObject>.from(
          json['images'].map((x) => ImageObject.fromJson(x))),
      name: json['name'],
      popularity: json['popularity'],
      type: json['type'],
      uri: json['uri'],
    );
  }
}
