import 'package:movie_network/data/vos/movie_vo/movie_vo.dart';
import 'package:movie_network/network/data_agent/movie_data_agent.dart';
import 'package:movie_network/network/data_agent/movie_data_agent_impl.dart';

import 'movie_apply.dart';

class MovieApplyImpl extends MovieApply{
  MovieApplyImpl._();

  static final MovieApplyImpl _singleton = MovieApplyImpl._();

  factory MovieApplyImpl() => _singleton;

  final MovieDataAgent _dataAgent = MovieDataAgentImpl();
  @override
  Future<List<MovieVO>?> getNowPlayingMovie(int page) =>
      _dataAgent.getNowPlayingMovie(page).then((value) {
        final temp = value?.map((e) {
          e.isGetNowPlaying = true;
          return e;
        }).toList();
        return temp;
      });

}