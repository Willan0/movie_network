import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../constant/color.dart';

class EasyCachedImage extends StatelessWidget {
  const EasyCachedImage({Key? key, required this.imgUrl,this.height = 240}) : super(key: key);
  final String imgUrl;
  final double height;
  @override
  Widget build(BuildContext context) {
    return  CachedNetworkImage(
      height: height,
      imageUrl: imgUrl,
      fit: BoxFit.cover,
      placeholder: (context, url) => const Center(child: CircularProgressIndicator(),),
      errorWidget: (context, url, error) => const Icon(Icons.error,color: cRed,),
    );
  }
}
