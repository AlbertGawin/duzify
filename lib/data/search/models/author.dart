class AuthorModel {
  final String name;

  const AuthorModel({
    required this.name,
  });

  factory AuthorModel.fromJson(Map<String, dynamic> json) {
    return AuthorModel(
      name: json['name'],
    );
  }
}
