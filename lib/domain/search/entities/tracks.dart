import 'package:duzify/data/search/models/track.dart';

class TracksEntity {
  final String href;
  final int limit;
  final String? next;
  final int offset;
  final String? previous;
  final int total;
  final List<TrackModel> items;

  const TracksEntity({
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
    required this.items,
  });
}
