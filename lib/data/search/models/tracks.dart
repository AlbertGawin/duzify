import 'package:duzify/data/search/models/track.dart';

class TracksModel {
  final String href;
  final int limit;
  final String? next;
  final int offset;
  final String? previous;
  final int total;
  final List<TrackModel> items;

  const TracksModel({
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
    required this.items,
  });

  factory TracksModel.fromJson(Map<String, dynamic> json) {
    return TracksModel(
      href: json['href'],
      limit: json['limit'],
      next: json['next'],
      offset: json['offset'],
      previous: json['previous'],
      total: json['total'],
      items: List<TrackModel>.from(
          json['items'].map((x) => TrackModel.fromJson(x))),
    );
  }
}
