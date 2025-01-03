import 'package:duzify/domain/search/entities/copyright.dart';

class CopyrightModel extends CopyrightEntity {
  const CopyrightModel({
    required super.text,
    required super.type,
  });

  factory CopyrightModel.fromJson(Map<String, dynamic> json) {
    return CopyrightModel(
      text: json['text'],
      type: json['type'],
    );
  }
}
