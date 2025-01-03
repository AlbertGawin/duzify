class FollowersModel {
  final String? href;
  final int total;

  const FollowersModel({
    required this.href,
    required this.total,
  });

  factory FollowersModel.fromJson(Map<String, dynamic> json) {
    return FollowersModel(
      href: json['href'],
      total: json['total'],
    );
  }
}
