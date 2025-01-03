import 'package:duzify/data/search/models/artist_object.dart';

class Artists {
  final String href;
  final int limit;
  final String? next;
  final int offset;
  final String? previous;
  final int total;
  final List<ArtistObject> items;

  const Artists({
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
    required this.items,
  });

  factory Artists.fromJson(Map<String, dynamic> json) {
    return Artists(
      href: json['href'],
      limit: json['limit'],
      next: json['next'],
      offset: json['offset'],
      previous: json['previous'],
      total: json['total'],
      items: List<ArtistObject>.from(
          json['items'].map((x) => ArtistObject.fromJson(x))),
    );
  }
}
