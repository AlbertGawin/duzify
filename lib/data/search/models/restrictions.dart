import 'package:duzify/domain/search/entities/restrictions.dart';

class RestrictionsModel extends RestrictionsEntity {
  const RestrictionsModel({
    required super.reason,
  });

  factory RestrictionsModel.fromJson(Map<String, dynamic> json) {
    return RestrictionsModel(
      reason: json['reason'],
    );
  }
}
