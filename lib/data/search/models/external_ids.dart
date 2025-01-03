import 'package:duzify/domain/search/entities/external_ids.dart';

class ExternalIdsModel extends ExternalIdsEntity {
  const ExternalIdsModel({
    required super.isrc,
    required super.ean,
    required super.upc,
  });

  factory ExternalIdsModel.fromJson(Map<String, dynamic> json) {
    return ExternalIdsModel(
      isrc: json['isrc'],
      ean: json['ean'] ?? '',
      upc: json['upc'] ?? '',
    );
  }
}
