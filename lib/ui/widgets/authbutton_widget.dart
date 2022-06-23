import 'package:flutter/material.dart';
import 'package:testapp/ui/utils/auth_dimension.dart';
import 'package:testapp/ui/utils/colors.dart';

// ignore: must_be_immutable
class MyAuthButton extends StatelessWidget {
  String text;
  double? buttonWidth;
  double? buttonHeight;
  double? buttonRadius;
  Color backgroundButtonColor;
  Color textColor;
  double? fontSize;
  String fontFamily;
  FontWeight? fontWeight;
  List<BoxShadow>? arrShadow;
  void Function() onPressed;

  MyAuthButton(
      {Key? key,
      required this.text,
      this.buttonWidth = 0,
      this.buttonHeight,
      this.backgroundButtonColor = AppColors.mainColor,
      this.textColor = Colors.white,
      this.fontSize,
      this.fontFamily = 'Roboto',
      this.arrShadow,
      required this.onPressed,
      this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: buttonWidth==0?AuthDimensions.width300:buttonWidth,
        height: AuthDimensions.height40,
        decoration: BoxDecoration(
            borderRadius:
                BorderRadius.all(Radius.circular(AuthDimensions.radius25)),
            boxShadow: arrShadow),
        child: ElevatedButton(
            onPressed: onPressed,
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(AuthDimensions.radius25),
                  ),
                ),
                shadowColor: MaterialStateProperty.all(Colors.black),
                backgroundColor:
                    MaterialStateProperty.all<Color>(backgroundButtonColor)),
            child: Text(text,
                style: TextStyle(
                    color: textColor,
                    fontSize: AuthDimensions.fontSize20,
                    fontFamily: fontFamily,
                    fontWeight: fontWeight))));
  }
}
