import 'package:duzify/data/search/models/track_object.dart';

class Tracks {
  final String href;
  final int limit;
  final String? next;
  final int offset;
  final String? previous;
  final int total;
  final List<TrackObject> items;

  const Tracks({
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
    required this.items,
  });

  factory Tracks.fromJson(Map<String, dynamic> json) {
    return Tracks(
      href: json['href'],
      limit: json['limit'],
      next: json['next'],
      offset: json['offset'],
      previous: json['previous'],
      total: json['total'],
      items: List<TrackObject>.from(
          json['items'].map((x) => TrackObject.fromJson(x))),
    );
  }
}
