import 'package:duzify/data/search/models/audiobook.dart';
import 'package:duzify/domain/search/entities/audiobooks.dart';

class AudiobooksModel extends AudiobooksEntity {
  const AudiobooksModel({
    required super.href,
    required super.limit,
    required super.next,
    required super.offset,
    required super.previous,
    required super.total,
    required super.items,
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
