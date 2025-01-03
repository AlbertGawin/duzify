import 'package:duzify/domain/search/entities/followers.dart';

class FollowersModel extends FollowersEntity {
  const FollowersModel({
    required super.href,
    required super.total,
  });

  factory FollowersModel.fromJson(Map<String, dynamic> json) {
    return FollowersModel(
      href: json['href'],
      total: json['total'],
    );
  }
}
