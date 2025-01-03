import 'package:duzify/domain/search/entities/external_urls.dart';
import 'package:duzify/domain/search/entities/followers.dart';
import 'package:duzify/domain/search/entities/image.dart';

class ArtistEntity {
  final ExternalUrlsEntity externalUrls;
  final FollowersEntity followers;
  final List<String> genres;
  final String href;
  final String id;
  final List<ImageEntity> images;
  final String name;
  final int popularity;
  final String type;
  final String uri;

  const ArtistEntity({
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
}
