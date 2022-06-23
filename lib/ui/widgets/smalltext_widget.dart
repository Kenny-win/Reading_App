import "package:flutter/material.dart";
import 'package:testapp/ui/utils/landing_dimension.dart';

// ignore: must_be_immutable
class SmallText extends StatelessWidget {
  double size;
  String fontFamily;
  String text;
  Color color;
  double? height;
  FontWeight? fontWeight;
  TextAlign textAlign = TextAlign.center;

  SmallText(
      {Key? key,
      this.size = 16,
      this.fontFamily = "Roboto",
      this.fontWeight,
      required this.text,
      this.color = const Color(0xff888383),
      this.height,
      this.textAlign = TextAlign.center})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size == 0 ? Dimensions.smallTextSize16 : size,
          fontFamily: fontFamily,
          fontWeight: fontWeight,
          height: height,
          color: color),
      textAlign: textAlign,
    );
  }
}
