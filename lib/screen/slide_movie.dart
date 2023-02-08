import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constant/color.dart';
import '../constant/dimen.dart';
import '../constant/string.dart';
import '../data/apply/movie_apply.dart';
import '../data/apply/movie_apply_impl.dart';
import '../data/vos/movie_vo/movie_vo.dart';
import '../widgets/banner_section.dart';

class SlideMovie extends StatefulWidget {

  const SlideMovie({Key? key}) : super(key: key);

  @override
  State<SlideMovie> createState() => _SlideMovieState();
}

class _SlideMovieState extends State<SlideMovie> {
  final MovieApply dataApply = MovieApplyImpl();
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: dWh300x,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SingleChildScrollView(
            child: SizedBox(
              width: dWidth(context),
              height: dWh240x,
              child: FutureBuilder<List<MovieVO>?>(
                future: dataApply.getNowPlayingMovie(4),
                builder: (context, snapShot) {
                  if (snapShot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (snapShot.hasError) {
                    return const Center(
                      child: Text(sErrorMessage),
                    );
                  }
                  final List<MovieVO>? listBannerMovie =
                  snapShot.data?.take(dItemCount).toList();
                  return PageView.builder(
                      controller: _controller,
                      itemCount: listBannerMovie?.length,
                      itemBuilder: (context, index) {
                        return BannerItemView(movieVO: listBannerMovie?[index]);
                      });
                },
              ),
            ),
          ),
          const SizedBox(height: dMp10x,),
          SmoothPageIndicator(
            controller: _controller,
            count: dItemCount,
            effect:  const SwapEffect(
                dotHeight: dWh11x,
                dotWidth: dWh11x,
                dotColor: cWhiteShadow,
                activeDotColor: cAmber
            ),
          )
        ],
      ),
    );
  }
}
