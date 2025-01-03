class Restrictions {
  final String reason;

  const Restrictions({
    required this.reason,
  });

  factory Restrictions.fromJson(Map<String, dynamic> json) {
    return Restrictions(
      reason: json['reason'],
    );
  }
}
