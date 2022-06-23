import "package:flutter/material.dart";
import 'package:testapp/ui/utils/landing_dimension.dart';

// ignore: must_be_immutable
class BigText extends StatelessWidget {
  double? size;
  String fontFamily;
  String text;
  Color? color;
  FontWeight? fontWeight;
  BigText(
      {Key? key,
      this.size = 24,
      this.fontFamily = "Roboto",
      this.color,
      this.fontWeight,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size == 0 ? Dimensions.bigTextSize24 : size,
          fontFamily: fontFamily,
          fontWeight: fontWeight,
          color: color),
      textAlign: TextAlign.center,
    );
  }
}
