class AlbumEntity {
  final String albumType;
  final int totalTracks;
  final List<String> availableMarkets;
  final ExternalUrls externalUrls;
  final String href;
  final String id;
  final List<ImageObject> images;
  final String name;
  final String releaseDate;
  final String releaseDatePrecision;
  final Restrictions restrictions;
  final String type;
  final String uri;
  final List<SimplifiedArtistObject> artists;

  const AlbumEntity({
    required this.albumType,
    required this.totalTracks,
    required this.availableMarkets,
    required this.externalUrls,
    required this.href,
    required this.id,
    required this.images,
    required this.name,
    required this.releaseDate,
    required this.releaseDatePrecision,
    required this.restrictions,
    required this.type,
    required this.uri,
    required this.artists,
  });
}
