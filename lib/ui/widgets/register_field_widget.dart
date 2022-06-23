import 'package:flutter/material.dart';
import 'package:testapp/ui/utils/auth_dimension.dart';

// ignore: must_be_immutable
class MyTextField extends StatelessWidget {
  double fieldWidth;
  double fieldHeight;
  double fontSize;
  double left;
  String text;
  Color color;
  double borderWidth;
  double radius;
  void Function() onTap;
  bool filled;
  Color fillColor;
  Icon? icon;

  MyTextField(
      {Key? key,
      this.fieldWidth = 320,
      this.fieldHeight = 36,
      this.fontSize = 14,
      this.left = 14,
      required this.text,
      this.color = Colors.black,
      this.borderWidth = 1,
      required this.filled,
      required this.onTap,
      required this.fillColor,
      this.icon,
      this.radius = 40})
      : super(key: key);

// https://api.flutter.dev/flutter/widgets/FocusNode/unfocus.html (unfocus reference)

  var isTap = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: AuthDimensions.fieldWidth320,
        height: AuthDimensions.fieldHeight36,
        child: TextField(
          onTap: onTap,
          // maxLines: 1,
          // maxLength: 50,
          style: TextStyle(fontSize: fontSize),
          decoration: InputDecoration(
              suffixIcon: icon,
              filled: filled,
              fillColor: fillColor,
              contentPadding: EdgeInsets.only(left: left),
              hintText: text,
              // icon: const Icon(Icons.email),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: color,
                  width: borderWidth,
                ),
                borderRadius: BorderRadius.all(Radius.circular(radius)),
              )),
        ));
  }
}
