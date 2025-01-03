import 'package:duzify/data/search/models/playlist.dart';

class Playlists {
  final String href;
  final int limit;
  final String? next;
  final int offset;
  final String? previous;
  final int total;
  final List<Playlist> items;

  const Playlists({
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
    required this.items,
  });

  factory Playlists.fromJson(Map<String, dynamic> json) {
    return Playlists(
      href: json['href'],
      limit: json['limit'],
      next: json['next'],
      offset: json['offset'],
      previous: json['previous'],
      total: json['total'],
      items:
          List<Playlist>.from(json['items'].map((x) => Playlist.fromJson(x))),
    );
  }
}
