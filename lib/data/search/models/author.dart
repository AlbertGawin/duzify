class Author {
  final String name;

  const Author({
    required this.name,
  });

  factory Author.fromJson(Map<String, dynamic> json) {
    return Author(
      name: json['name'],
    );
  }
}
