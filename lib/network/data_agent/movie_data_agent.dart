import 'package:movie_network/data/vos/movie_vo/movie_vo.dart';

abstract class MovieDataAgent{
  Future<List<MovieVO>?> getNowPlayingMovie(int page);
}