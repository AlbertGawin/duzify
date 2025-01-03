class RestrictionsModel {
  final String reason;

  const RestrictionsModel({
    required this.reason,
  });

  factory RestrictionsModel.fromJson(Map<String, dynamic> json) {
    return RestrictionsModel(
      reason: json['reason'],
    );
  }
}
