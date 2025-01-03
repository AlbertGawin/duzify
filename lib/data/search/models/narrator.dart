class Narrator {
  final String name;

  const Narrator({
    required this.name,
  });

  factory Narrator.fromJson(Map<String, dynamic> json) {
    return Narrator(
      name: json['name'],
    );
  }
}
