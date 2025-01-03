import 'package:duzify/domain/search/entities/narrator.dart';

class NarratorModel extends NarratorEntity {
  const NarratorModel({
    required super.name,
  });

  factory NarratorModel.fromJson(Map<String, dynamic> json) {
    return NarratorModel(
      name: json['name'],
    );
  }
}
