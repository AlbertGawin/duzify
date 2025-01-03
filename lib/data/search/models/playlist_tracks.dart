class PlaylistTracks {
  final String href;
  final int total;

  const PlaylistTracks({
    required this.href,
    required this.total,
  });

  factory PlaylistTracks.fromJson(Map<String, dynamic> json) {
    return PlaylistTracks(
      href: json['href'],
      total: json['total'],
    );
  }
}
