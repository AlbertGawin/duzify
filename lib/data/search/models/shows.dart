import 'package:duzify/data/search/models/show.dart';

class Shows {
  final String href;
  final int limit;
  final String? next;
  final int offset;
  final String? previous;
  final int total;
  final List<Show> items;

  const Shows({
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
    required this.items,
  });

  factory Shows.fromJson(Map<String, dynamic> json) {
    return Shows(
      href: json['href'],
      limit: json['limit'],
      next: json['next'],
      offset: json['offset'],
      previous: json['previous'],
      total: json['total'],
      items: List<Show>.from(json['items'].map((x) => Show.fromJson(x))),
    );
  }
}
