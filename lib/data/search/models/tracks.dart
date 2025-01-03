import 'package:duzify/data/search/models/track.dart';
import 'package:duzify/domain/search/entities/tracks.dart';

class TracksModel extends TracksEntity {
  const TracksModel({
    required super.href,
    required super.limit,
    required super.next,
    required super.offset,
    required super.previous,
    required super.total,
    required super.items,
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
