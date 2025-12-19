import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/presentation/providers/movies/movies_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final moviesSlidShowProvider = Provider<List<Movie>>((ref) {
  final nowPlayignMovies = ref.watch(nowPlayingMoviesProvider);

  if (nowPlayignMovies.isEmpty) return [];

  return nowPlayignMovies.sublist(0, 6);
});
