import 'package:duzify/data/search/models/album.dart';

class Albums {
  final String href;
  final int limit;
  final String? next;
  final int offset;
  final String? previous;
  final int total;
  final List<Album> items;

  const Albums({
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
    required this.items,
  });

  factory Albums.fromJson(Map<String, dynamic> json) {
    return Albums(
      href: json['href'],
      limit: json['limit'],
      next: json['next'],
      offset: json['offset'],
      previous: json['previous'],
      total: json['total'],
      items: List<Album>.from(json['items'].map((x) => Album.fromJson(x))),
    );
  }
}
