import 'package:duzify/data/search/models/audiobook.dart';

class AudiobooksModel {
  final String href;
  final int limit;
  final String? next;
  final int offset;
  final String? previous;
  final int total;
  final List<AudiobookModel> items;

  const AudiobooksModel({
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
    required this.items,
  });

  factory AudiobooksModel.fromJson(Map<String, dynamic> json) {
    return AudiobooksModel(
      href: json['href'],
      limit: json['limit'],
      next: json['next'],
      offset: json['offset'],
      previous: json['previous'],
      total: json['total'],
      items: List<AudiobookModel>.from(
          json['items'].map((x) => AudiobookModel.fromJson(x))),
    );
  }
}
