class PlaylistTracksModel {
  final String href;
  final int total;

  const PlaylistTracksModel({
    required this.href,
    required this.total,
  });

  factory PlaylistTracksModel.fromJson(Map<String, dynamic> json) {
    return PlaylistTracksModel(
      href: json['href'],
      total: json['total'],
    );
  }
}
