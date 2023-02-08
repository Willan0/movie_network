import 'package:flutter/material.dart';

import '../constant/color.dart';

class EasyTextWidget extends StatelessWidget {
  const EasyTextWidget({Key? key,required this.data,
  this.fontSize = 14.0,
    this.color,
    this.fontWeight = FontWeight.w400
  }) : super(key: key);

  final String data;
  final double fontSize;
  final Color? color;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return  Text(
      data,
      style: TextStyle(
        fontSize: fontSize,
        color: color?? cWhite
      ),
    );
  }
}
