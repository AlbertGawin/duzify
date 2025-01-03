class ExternalIdsModel {
  final String isrc;
  final String ean;
  final String upc;

  const ExternalIdsModel({
    required this.isrc,
    required this.ean,
    required this.upc,
  });

  factory ExternalIdsModel.fromJson(Map<String, dynamic> json) {
    return ExternalIdsModel(
      isrc: json['isrc'],
      ean: json['ean'],
      upc: json['upc'],
    );
  }
}
