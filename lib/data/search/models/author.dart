import 'package:duzify/domain/search/entities/author.dart';

class AuthorModel extends AuthorEntity {
  const AuthorModel({
    required super.name,
  });

  factory AuthorModel.fromJson(Map<String, dynamic> json) {
    return AuthorModel(
      name: json['name'],
    );
  }
}
