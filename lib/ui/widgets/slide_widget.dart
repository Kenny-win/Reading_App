import "package:flutter/material.dart";
import 'package:testapp/ui/utils/landing_dimension.dart';
import 'package:testapp/ui/widgets/bigtext_widget.dart';
import 'package:testapp/ui/widgets/smalltext_widget.dart';

// ignore: must_be_immutable
class SliderContainer extends StatelessWidget {
  double contWidth;
  double contHeight;
  double sizeBoxHeight1;
  double sizeBoxHeight2;
  double marginTop;
  String image;
  String bigText;
  String smallText;
  BoxFit imgFit = BoxFit.cover;

  SliderContainer(
      {Key? key,
      this.contWidth = 300.0,
      this.contHeight = 200.0,
      this.sizeBoxHeight1 = 30.0,
      this.sizeBoxHeight2 = 20.0,
      this.marginTop = 30.0,
      required this.image,
      required this.bigText,
      required this.smallText,
      this.imgFit = BoxFit.cover})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: Dimensions.padLeft12, right: Dimensions.padRight12,),
        child: Column(children: [
          Container(
              margin: EdgeInsets.only(top: Dimensions.marTop30),
              width: Dimensions.contWidth300,
              height: Dimensions.contHeight200,
              child: Image.asset(image, fit: imgFit)),
          SizedBox(
            height: Dimensions.sizeBoxHeight1_30,
          ),
          BigText(
            text: bigText,
          ),
          SizedBox(
            height: Dimensions.sizeBoxHeight2_20,
          ),
          SmallText(
            text: smallText,
          )
        ]
      )
    );
  }
}
