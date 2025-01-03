import 'package:duzify/data/search/models/audiobook.dart';

class Audiobooks {
  final String href;
  final int limit;
  final String? next;
  final int offset;
  final String? previous;
  final int total;
  final List<Audiobook> items;

  const Audiobooks({
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
    required this.items,
  });

  factory Audiobooks.fromJson(Map<String, dynamic> json) {
    return Audiobooks(
      href: json['href'],
      limit: json['limit'],
      next: json['next'],
      offset: json['offset'],
      previous: json['previous'],
      total: json['total'],
      items:
          List<Audiobook>.from(json['items'].map((x) => Audiobook.fromJson(x))),
    );
  }
}
