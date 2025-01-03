import 'package:duzify/domain/search/entities/albums.dart';
import 'package:duzify/domain/search/entities/artists.dart';
import 'package:duzify/domain/search/entities/audiobooks.dart';
import 'package:duzify/domain/search/entities/episodes.dart';
import 'package:duzify/domain/search/entities/playlists.dart';
import 'package:duzify/domain/search/entities/shows.dart';
import 'package:duzify/domain/search/entities/tracks.dart';

class SearchEntity {
  final TracksEntity tracks;
  final ArtistsEntity artists;
  final AlbumsEntity albums;
  final PlaylistsEntity playlists;
  final ShowsEntity shows;
  final EpisodesEntity episodes;
  final AudiobooksEntity audiobooks;

  const SearchEntity({
    required this.tracks,
    required this.artists,
    required this.albums,
    required this.playlists,
    required this.shows,
    required this.episodes,
    required this.audiobooks,
  });
}
