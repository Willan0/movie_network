
import 'package:flutter/material.dart';
import 'package:movie_network/constant/dimen.dart';
import 'package:movie_network/constant/string.dart';
import 'package:movie_network/widgets/easy_text_widget.dart';

import '../constant/api_constant.dart';
import '../constant/color.dart';
import '../data/vos/movie_vo/movie_vo.dart';
import 'easy_cached_image.dart';

class BannerItemView extends StatelessWidget {
  const BannerItemView({
    Key? key,
    required this.movieVO,
  }) : super(key: key);

  final MovieVO? movieVO;

  @override
  Widget build(BuildContext context) {
    var image = movieVO?.backdropPath ?? "";
    return Stack(
      children: [
        Container(
          width: dWidth(context),
        foregroundDecoration:  const BoxDecoration(
            gradient: LinearGradient(
                begin: AlignmentDirectional.topCenter,
                end: AlignmentDirectional.bottomCenter,
                colors: [
                  cWhite,
                  Colors.transparent,
                  cPrimaryColor
                ],
                stops: [
                  0,0,1
                ]
            )
        ),
        child: EasyCachedImage(
          imgUrl: "$kApiImage$image",
        ),
      ),
        Positioned(
          bottom: dMp20x,
          left: dMp20x,
          child: EasyTextWidget(data: movieVO?.title ?? sTitleError,fontSize: dFs20x,fontWeight: FontWeight.bold,),
        ),
        const Align(
          alignment: Alignment.center,
            child: Icon(Icons.play_circle,color: cAmber,size: dIs45x,))
    ]);
  }
}