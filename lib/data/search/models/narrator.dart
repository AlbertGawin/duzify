class NarratorModel {
  final String name;

  const NarratorModel({
    required this.name,
  });

  factory NarratorModel.fromJson(Map<String, dynamic> json) {
    return NarratorModel(
      name: json['name'],
    );
  }
}
