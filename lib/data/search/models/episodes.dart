import 'package:duzify/data/search/models/episode.dart';

class EpisodesModel {
  final String href;
  final int limit;
  final String? next;
  final int offset;
  final String? previous;
  final int total;
  final List<EpisodeModel> items;

  const EpisodesModel({
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
    required this.items,
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
