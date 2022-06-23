import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:testapp/ui/pages/authentication/auth_page.dart';
// import 'package:testapp/ui/pages/authentication/auth_page.dart';
import 'package:testapp/ui/utils/colors.dart';
import 'package:testapp/ui/utils/landing_dimension.dart';
import 'package:testapp/ui/widgets/slide_widget.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  final CarouselController controller = CarouselController();
  // var _currPageValue = 0.0;
  // var _currentPos = 0.0;
  var activeIndex = 0;
  List<String> urls = [
    "assets/images/welcome_1.png",
    "assets/images/welcome_2.png",
    "assets/images/welcome_3.png"
  ];
  List<String> bigTexts = [
    "Welcome to Kev's App",
    "Best Seller And Popular Books",
    "Enjoy Our Interesting Features"
  ];
  List<String> smallTexts = [
    "Find some interesting stories with variety topics here!",
    "Create your account and feel the best experience with this app!",
    "Like, comment and share the story that you like on your social media!"
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Stack(children: [
        Container(
            padding: EdgeInsets.only(top: Dimensions.padTop30),
            height: MediaQuery.of(context).size.height - 80.00,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(Dimensions.radius40),
                    bottomRight: Radius.circular(Dimensions.radius40)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 14,
                    offset: Offset(0, 2),
                  ),
                ]),
            child: Column(children: [
              Container(
                  height: Dimensions.height375,
                  child: CarouselSlider.builder(
                      carouselController: controller,
                      itemCount: 3,
                      itemBuilder: (context, index, realIndex) {
                        return SliderContainer(
                            image: urls[index],
                            bigText: bigTexts[index],
                            smallText: smallTexts[index]);
                      },
                      options: CarouselOptions(
                          height: Dimensions.height400,
                          viewportFraction: 1,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 2),
                          onPageChanged: (index, reason) {
                            setState(() {
                              activeIndex = index;
                            });
                          }))
                  // PageView.builder(
                  //   controller: controller,
                  //   itemCount: 3,
                  //   itemBuilder: (context, index) {
                  //     return SliderContainer(
                  //         image: urls[index],
                  //         bigText: bigTexts[index],
                  //         smallText: smallTexts[index]);
                  //   },
                  // )
                  ),
              DotsIndicator(
                dotsCount: 3,
                position: activeIndex.toDouble(),
                decorator: DotsDecorator(
                    color: Colors.grey.shade400, // Inactive color
                    activeColor: AppColors.mainColor,
                    activeSize: Size(Dimensions.dotSize13, Dimensions.dotSize13),
                    sizes: [
                      Size(Dimensions.dotSize12, Dimensions.dotSize12),
                      Size(Dimensions.dotSize12, Dimensions.dotSize12),
                      Size(Dimensions.dotSize12, Dimensions.dotSize12)
                    ],
                    spacing: const EdgeInsets.only(left: 8, right: 8)),
                // onTap: (position) {
                //   print(position);
                //   setState(() => _currentPos = position);
                // }
              )
            ])),
        Align(
            alignment: Alignment.bottomCenter,
            child: Stack(children: [
              Container(
                margin: EdgeInsets.only(bottom: Dimensions.marBot20),
                width: Dimensions.width90,
                height: Dimensions.height90,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 233, 248, 255),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(Dimensions.radius50),
                        bottomRight: Radius.circular(Dimensions.radius50)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 8,
                        offset: const Offset(-1, 20),
                      ),
                      const BoxShadow(
                        color: Color.fromARGB(255, 233, 248, 255),
                        spreadRadius: 1,
                        blurRadius: 0,
                        offset: Offset(8, -1),
                      ),
                      const BoxShadow(
                        color: Color.fromARGB(255, 233, 248, 255),
                        spreadRadius: 1,
                        blurRadius: 0,
                        offset: Offset(-8, -1.0),
                      ),
                    ]),
              ),
              Container(
                  width: Dimensions.width60,
                  height: Dimensions.height60,
                  margin: EdgeInsets.only(left: Dimensions.marLeft16, top: Dimensions.marTop10),
                  child: FloatingActionButton(
                      backgroundColor: const Color(0xff2F5C79),
                      onPressed: () {
                            print(Dimensions.screenWidth);
                            print(Dimensions.screenHeight);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AuthenticationPage()),
                        );
                      },
                      child: Icon(
                        Icons.play_arrow_rounded,
                        size: Dimensions.iconSize50,
                      )))
            ]))
      ]),
    ));
  }
}

