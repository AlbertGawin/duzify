class Copyright {
  final String text;
  final String type;

  const Copyright({
    required this.text,
    required this.type,
  });

  factory Copyright.fromJson(Map<String, dynamic> json) {
    return Copyright(
      text: json['text'],
      type: json['type'],
    );
  }
}
