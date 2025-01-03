class CopyrightModel {
  final String text;
  final String type;

  const CopyrightModel({
    required this.text,
    required this.type,
  });

  factory CopyrightModel.fromJson(Map<String, dynamic> json) {
    return CopyrightModel(
      text: json['text'],
      type: json['type'],
    );
  }
}
