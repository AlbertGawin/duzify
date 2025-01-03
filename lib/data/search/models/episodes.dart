import 'package:duzify/data/search/models/episode.dart';

class Episodes {
  final String href;
  final int limit;
  final String? next;
  final int offset;
  final String? previous;
  final int total;
  final List<Episode> items;

  const Episodes({
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
    required this.items,
  });

  factory Episodes.fromJson(Map<String, dynamic> json) {
    return Episodes(
      href: json['href'],
      limit: json['limit'],
      next: json['next'],
      offset: json['offset'],
      previous: json['previous'],
      total: json['total'],
      items: List<Episode>.from(json['items'].map((x) => Episode.fromJson(x))),
    );
  }
}
