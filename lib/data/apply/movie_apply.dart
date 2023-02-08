import '../vos/movie_vo/movie_vo.dart';

abstract class MovieApply{
  // for network
  Future<List<MovieVO>?> getNowPlayingMovie(int page);

  //for database

}