class Followers {
  final String? href;
  final int total;

  const Followers({
    required this.href,
    required this.total,
  });

  factory Followers.fromJson(Map<String, dynamic> json) {
    return Followers(
      href: json['href'],
      total: json['total'],
    );
  }
}
