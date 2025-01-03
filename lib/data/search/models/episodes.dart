import 'package:duzify/data/search/models/episode.dart';
import 'package:duzify/domain/search/entities/episodes.dart';

class EpisodesModel extends EpisodesEntity {
  const EpisodesModel({
    required super.href,
    required super.limit,
    required super.next,
    required super.offset,
    required super.previous,
    required super.total,
    required super.items,
  });

  factory EpisodesModel.fromJson(Map<String, dynamic> json) {
    return EpisodesModel(
      href: json['href'],
      limit: json['limit'],
      next: json['next'],
      offset: json['offset'],
      previous: json['previous'],
      total: json['total'],
      items: List<EpisodeModel>.from(
          json['items'].map((x) => EpisodeModel.fromJson(x))),
    );
  }
}
