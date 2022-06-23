import 'package:get/get.dart';

class AuthDimensions {
  // screenHeight = 592 and screenWidth = 360 (Google Nexus 5 (1080x1920))
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  //padding left and right
  static double padLeftRight5 = screenWidth / 72;
  static double padTop5 = screenHeight / 118.4;
  static double padLeft20 = screenWidth / 18;
  static double padRight15 = screenWidth / 24;

  //dynamic width
  static double width225 = screenWidth / 1.6;
  static double width300 = screenWidth / 1.2;
  static double width215 = screenWidth / 1.6744186047;
  static double sizedBoxWidth35 = screenWidth / 10.2857142857;
  static double width30 = screenWidth / 12;
  static double width200 = screenWidth / 1.8;
  static double fieldWidth320 = screenWidth / 1.125;

  //dynamic height
  static double toolbarHeight50 = screenHeight / 11.84;
  static double height10 = screenHeight / 59.2;
  static double height225 = screenHeight / 2.63111111;
  static double height40 = screenHeight / 14.8;
  static double height15 = screenHeight / 39.467;
  static double height2 = screenHeight / 296;
  static double height30 = screenHeight / 19.73;
  static double height200 = screenHeight / 2.96;
  static double fieldHeight36 = screenHeight / 10;

  //radius
  static double radius25 = screenHeight / 23.68;
  static double radius50 = screenHeight / 11.84;

  //fontSize pake screenwidth
  static double fontSize20 = screenWidth / 18;
  static double fontSize12 = screenWidth / 30;
}
