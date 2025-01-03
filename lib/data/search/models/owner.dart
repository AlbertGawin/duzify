import 'package:duzify/data/search/models/external_urls.dart';
import 'package:duzify/data/search/models/followers.dart';

class Owner {
  final ExternalUrls externalUrls;
  final Followers followers;
  final String href;
  final String id;
  final String type;
  final String uri;
  final String? displayName;

  const Owner({
    required this.externalUrls,
    required this.followers,
    required this.href,
    required this.id,
    required this.type,
    required this.uri,
    this.displayName,
  });

  factory Owner.fromJson(Map<String, dynamic> json) {
    return Owner(
      externalUrls: ExternalUrls.fromJson(json['external_urls']),
      followers: Followers.fromJson(json['followers']),
      href: json['href'],
      id: json['id'],
      type: json['type'],
      uri: json['uri'],
      displayName: json['display_name'],
    );
  }
}
