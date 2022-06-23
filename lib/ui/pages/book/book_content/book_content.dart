// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:testapp/ui/utils/colors.dart';
import 'package:testapp/ui/widgets/bigtext_widget.dart';
import 'package:testapp/ui/widgets/smalltext_widget.dart';

class BookContentPage extends StatefulWidget {
  const BookContentPage({Key? key}) : super(key: key);

  @override
  State<BookContentPage> createState() => _BookContentPageState();
}

class _BookContentPageState extends State<BookContentPage> {
  // ignore: prefer_final_fields
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool isPressed = false;


  Widget content() {
    return SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 15),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30,),
              BigText(text: "Yves Saint Laurent", fontWeight: FontWeight.bold, color: isPressed?Colors.white:Colors.black,),
              const SizedBox(height: 10,),
              SmallText(text: "Part 1 : Birth of Fendy", color: isPressed?Colors.white:Colors.black, fontWeight: FontWeight.bold,),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.mode_comment_rounded, color: isPressed?Colors.white:Colors.black,),
                        const SizedBox(width: 5,),
                        SmallText(text: "1.56K")
                      ],
                    ),
                  ),
                  const SizedBox(width: 16,),
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.star_rounded, color: isPressed?Colors.white:Colors.black,),
                        const SizedBox(width: 5,),
                        SmallText(text: "12K")
                      ],
                    ),
                  ),
                const SizedBox(width: 16,),
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.people_alt_rounded, color: isPressed?Colors.white:Colors.black,),
                        const SizedBox(width: 5,),
                        SmallText(text: "300K")
                      ],
                    ),
                  ),
                  const SizedBox(width: 16,),
                  IconButton(
                    padding: const EdgeInsets.all(0),
                    onPressed: (){
                      setState(() {
                        isPressed = !isPressed;
                      });
                    },
                    icon: Icon(isPressed?Icons.light_mode : Icons.dark_mode, color: isPressed?Colors.white:Colors.black,)
                  )
                ],
              ),
              Container(
                child: SmallText(
                  text: "A spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion.\n\nA spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion.\n\nA spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion.\n\nA spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion.\n\nA spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion.\n\nA spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion.\n",
                  textAlign: TextAlign.left,
                  height: 1.4,
                )
              )
            ],
          )
        ),
      );
  }

  Widget chapter({
    required int numOfChapter,
    required String title,
  }){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 12, bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text("Chapter ${numOfChapter.toString()}",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: isPressed?Colors.white:Colors.black,
            ),
          ),
          Divider(
            indent: 90,
            thickness: 1,
            color: isPressed?Colors.white:Colors.black,
          ),
          Text(title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
              color: isPressed?Colors.white:Colors.black,
            ),
            textAlign: TextAlign.right,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: isPressed?Colors.black:Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.appBarContentColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Yves Saint Laurent"),
        actions: [
          IconButton(
            onPressed: () {

            },
            icon: Icon(Icons.bookmark_add_outlined),
          ),
          IconButton(
            onPressed: () {
              _scaffoldKey.currentState!.openEndDrawer();
            },
            icon: Icon(Icons.menu),
          ),
        ],
      ),
      // ignore: sized_box_for_whitespace
      endDrawer: Container(
        width: 180,
        child: Drawer(
          child: Container(
            color: isPressed?Color.fromARGB(255, 66, 64, 64):Colors.white,
            padding: EdgeInsets.only(right: 10, left: 10),
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    width: 100,
                    height: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "assets/images/book.png"
                        )
                      )
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 15, bottom: 20),
                    child: Text("Yves Saint Laurent",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        height: 1,
                        color: isPressed?Colors.white:Colors.black
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  chapter(numOfChapter: 1, title: "Bird of Fendy"),
                  chapter(numOfChapter: 2, title: "Kenny's Betrayal"),
                  chapter(numOfChapter: 3, title: "Andrew's Love"),
                  chapter(numOfChapter: 4, title: "Andrew Meet El"),
                  chapter(numOfChapter: 5, title: "Witch Vinnie"),
                  chapter(numOfChapter: 6, title: "Richard Revenge"),
                  chapter(numOfChapter: 7, title: "El and Richard Happy Together")
                ],
              )
            ),
          ),
        )
      ),
      body: content(),
    );
  }
}
