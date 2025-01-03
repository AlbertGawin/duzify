import 'package:duzify/data/search/models/external_urls.dart';
import 'package:duzify/data/search/models/followers.dart';
import 'package:duzify/domain/search/entities/owner.dart';

class OwnerModel extends OwnerEntity {
  const OwnerModel({
    required super.externalUrls,
    required super.followers,
    required super.href,
    required super.id,
    required super.type,
    required super.uri,
    super.displayName,
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
