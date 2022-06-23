import 'package:get/get.dart';

class Dimensions {
  // screenHeight = 592 and screenWidth = 360 (Google Nexus 5 (1080x1920))
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  // dynamic padding
  static double padTop30 = screenHeight / 19.73;
  static double padLeft12 = screenWidth / 30;
  static double padRight12 = screenWidth / 30;

  // dynamic margin
  static double marBot20 = screenHeight / 29.6;
  static double marTop10 = screenHeight / 59.2;
  static double marTop30 = screenHeight / 19.73;
  static double marLeft16 = screenWidth / 22.5;

  // dynamic height
  static double height375 = screenHeight / 1.57867;
  static double height400 = screenHeight / 1.48;
  static double height90 = screenHeight / 6.578;
  static double height60 = screenHeight / 9.867;
  static double contHeight200 = screenHeight / 2.96;
  static double sizeBoxHeight1_30 = screenHeight / 19.73;
  static double sizeBoxHeight2_20 = screenHeight / 29.6;

  // dynamic width
  static double width90 = screenWidth / 4;
  static double width60 = screenWidth / 6;
  static double contWidth300 = screenWidth / 1.2;

  //dynamic radius
  static double radius40 = screenHeight / 14.8;
  static double radius50 = screenHeight / 11.84;

  //dynamic dot, icon and text size
  static double dotSize13 = screenHeight / 45.5384615385;
  static double dotSize12 = screenHeight / 49.3;
  static double iconSize50 = screenHeight / 11.84;
  static double bigTextSize24 = screenHeight / 24.67;
  static double smallTextSize16 = screenHeight / 37;
}
