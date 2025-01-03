import 'package:duzify/domain/search/entities/external_urls.dart';
import 'package:duzify/domain/search/entities/followers.dart';

class OwnerEntity {
  final ExternalUrlsEntity externalUrls;
  final FollowersEntity followers;
  final String href;
  final String id;
  final String type;
  final String uri;
  final String? displayName;

  const OwnerEntity({
    required this.externalUrls,
    required this.followers,
    required this.href,
    required this.id,
    required this.type,
    required this.uri,
    this.displayName,
  });
}
