import 'package:duzify/data/search/models/external_urls.dart';
import 'package:duzify/data/search/models/followers.dart';

class OwnerModel {
  final ExternalUrlsModel externalUrls;
  final FollowersModel? followers;
  final String href;
  final String id;
  final String type;
  final String uri;
  final String? displayName;

  const OwnerModel({
    required this.externalUrls,
    required this.followers,
    required this.href,
    required this.id,
    required this.type,
    required this.uri,
    this.displayName,
  });

  factory OwnerModel.fromJson(Map<String, dynamic> json) {
    return OwnerModel(
      externalUrls: ExternalUrlsModel.fromJson(json['external_urls']),
      followers: json['followers'] != null
          ? FollowersModel.fromJson(json['followers'])
          : null,
      href: json['href'],
      id: json['id'],
      type: json['type'],
      uri: json['uri'],
      displayName: json['display_name'],
    );
  }
}
