import 'package:dio/dio.dart';
import 'package:movie_network/data/vos/movie_vo/movie_vo.dart';

import '../../constant/api_constant.dart';
import '../api/tmdb_api/tmdb.dart';
import 'movie_data_agent.dart';

class MovieDataAgentImpl extends MovieDataAgent{
  late TheMovieDBAPI _movieApi ;
  MovieDataAgentImpl._(){
    _movieApi = TheMovieDBAPI(Dio());
  }
  
  static final MovieDataAgentImpl _singleton = MovieDataAgentImpl._();
  
  factory MovieDataAgentImpl() => _singleton;
  @override
  Future<List<MovieVO>?> getNowPlayingMovie(int page) {
    return _movieApi
        .getNowPlayingMovies(kApiToken, page)
        .asStream()
        .map((event) => event.results)
        .first;
  }

}