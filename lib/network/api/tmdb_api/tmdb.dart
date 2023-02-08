import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../constant/api_constant.dart';
import '../../response/movie_response/movie_response.dart';
part 'tmdb.g.dart';
@RestApi(baseUrl: kMovieBaseUrl)
abstract class TheMovieDBAPI{
  factory TheMovieDBAPI(Dio dio)= _TheMovieDBAPI;
  @GET(kMovieEndPoint)
  Future<MovieResponse> getNowPlayingMovies(
      @Query(kApiKey) String apikey,
      @Query(kPages) int page,
  );
}