// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:testapp/ui/utils/auth_dimension.dart';
import 'package:testapp/ui/utils/colors.dart';
import 'package:testapp/ui/utils/show_reviews_animation.dart';
import 'package:testapp/ui/widgets/bigtext_widget.dart';
import 'package:testapp/ui/widgets/smalltext_widget.dart';

class BookReviewPage extends StatefulWidget {
  const BookReviewPage({Key? key}) : super(key: key);

  @override
  State<BookReviewPage> createState() => _BookReviewPageState();
}

class _BookReviewPageState extends State<BookReviewPage> {
  // ignore: unused_field
  final _containerWidgetKey = GlobalKey();
  TextEditingController textCont = TextEditingController(text: "");

  List<Map<String, String>> comments = [
    // {
    //   "comment": "This book's amazing。 這本書實在太迷人了，絕對能解決無聊，内容很清晰！！大家必須要看看哦！太棒了!!!",
    //   "time": "A hour ago"
    // },
    // {
    //   "comment": "This book's amazing。 這本書實在太迷人了，絕對能解決無聊，内容很清晰！！大家必須要看看哦！太棒了!!!",
    //   "time": "A hour ago"
    // },
    // {
    //   "comment": "This book's amazing。 這本書實在太迷人了，絕對能解決無聊，内容很清晰！！大家必須要看看哦！太棒了!!!",
    //   "time": "A hour ago"
    // },
    // {
    //   "comment": "This book's amazing。 這本書實在太迷人了，絕對能解決無聊，内容很清晰！！大家必須要看看哦！太棒了!!!",
    //   "time": "A hour ago"
    // },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.backgroundColor,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            toolbarHeight: AuthDimensions.toolbarHeight50,
            automaticallyImplyLeading: false,
            flexibleSpace: Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios, color: Colors.black),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.bookmark_outline_sharp,
                            color: Colors.black, size: 32))
                  ]),
            ),
          ),
          body: Container(
            padding: const EdgeInsets.only(left: 20, right: 15),
            // key: _containerWidgetKey,
            // letakkan key disini
            // key:
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: Container(
                          width: 100,
                          color: Colors.red,
                          child: Image.asset("assets/images/book.png"))),
                  Expanded(
                      flex: 8,
                      child: Container(
                          // color: Colors.red,
                          padding: const EdgeInsets.only(left: 10, right: 5),
                          // height: _containerWidgetKey.currentContext!.size!.height,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BigText(
                                text: "Yves Saint Laurent",
                                fontWeight: FontWeight.bold,
                              ),
                              const SizedBox(
                                height: 18,
                              ),
                              Row(
                                children: [
                                  Wrap(
                                    children: List.generate(
                                        5,
                                        (index) => index == 4
                                            ? const Icon(
                                                Icons.star_half,
                                                color: Colors.yellow,
                                              )
                                            : const Icon(Icons.star,
                                                color: Colors.yellow)),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  RichText(
                                    text: const TextSpan(
                                      text: "4.5 ",
                                      style: TextStyle(color: Colors.black),
                                      children: [
                                        TextSpan(
                                          text: "/ 5.0",
                                          style: TextStyle(color: Colors.grey),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                child: SmallText(
                                  text:
                                      "A spectacular visual journey through 40 years of haute couture from one of the. . . more",
                                  textAlign: TextAlign.left,
                                  size: 14,
                                ),
                              )
                            ],
                          )))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: Container(
                      width: 300,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 8),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 178, 215, 237),
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                SmallText(
                                  text: "READ",
                                  size: 12,
                                ),
                                Text("2970")
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 6, right: 6),
                            decoration: const BoxDecoration(
                                border: Border(
                              left: BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ),
                              right: BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            )),
                            child: Column(
                              children: [
                                SmallText(
                                  text: "NUMBER OF PAGES",
                                  size: 12,
                                ),
                                const Text("10391")
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                SmallText(
                                  text: "ADD BOOK MARK",
                                  size: 12,
                                ),
                                const Text("20000")
                              ],
                            ),
                          ),
                        ],
                      ))),
              const SizedBox(
                height: 10,
              ),
              Container(
                // color: Colors.red,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: "Comment"),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Column(
                          children: List.generate(
                        3,
                        (index) => ListTile(
                          contentPadding:
                              const EdgeInsets.only(left: 5, right: 5),
                          // tileColor: Colors.orange,
                          leading: Column(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                child: Image.asset(
                                  "assets/images/user.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SmallText(
                                  text: "08:00 pm",
                                  size: 10,
                                  color: Colors.black)
                            ],
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SmallText(
                                text: "Kenny Winata",
                                size: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                textAlign: TextAlign.left,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                      width: 25,
                                      height: 30,
                                      child: IconButton(
                                        icon: const Icon(
                                          Icons.favorite_border_outlined,
                                          size: 16,
                                        ),
                                        onPressed: () {},
                                      )),
                                  SmallText(
                                    text: "7",
                                    size: 12,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                      width: 30,
                                      height: 30,
                                      child: IconButton(
                                        icon: const Icon(
                                          Icons.comment_bank_outlined,
                                          size: 16,
                                        ),
                                        onPressed: () {},
                                      ))
                                ],
                              )
                            ],
                          ),
                          subtitle: const Text(
                            "Wahh! This book is amazing... 内容丰富，非常有趣。。",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                      )),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.all(0),
                    ),
                  ),
                  onPressed: () {
                    _seeMoreReviews();
                  },
                  child: SmallText(
                    text: "See more reviews",
                    size: 12,
                    color: Color.fromARGB(255, 97, 44, 255),
                    fontWeight: FontWeight.normal,
                  ))
            ]),
          )),
    );
  }

  _seeMoreReviews() {
    return showGeneralDialog(
      context: context,
      barrierLabel: '',
      barrierColor: Color(0xff576C84).withOpacity(0.9),
      barrierDismissible: true,
      transitionDuration: const Duration(milliseconds: 300),
      transitionBuilder: (context, _animation, _secondaryAnimation, _child) {
        return Animations.fromBottom(_animation, _secondaryAnimation, _child);
      },
      pageBuilder: (_animation, _secondaryAnimation, _child) {
        return StatefulBuilder(
          builder: (context, setState) => 
          Material(
            color: Colors.white.withOpacity(0),
            child: SafeArea(
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.close,
                              color: Colors.white,
                            )),
                        Center(
                          child: Column(
                            children: List.generate(
                              comments.length,
                              (index) => Container(
                                width: 275,

                                margin:
                                    const EdgeInsets.only(top: 10, bottom: 10),
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 40,
                                          height: 40,
                                          child: Image.asset(
                                              "assets/images/user.png"),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        SmallText(
                                          text: "Kenny Winata",
                                          size: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      child: SmallText(
                                        text: comments[index]["comment"]!,
                                        size: 14,
                                        color: Colors.black,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SmallText(
                                          text: comments[index]["time"]!,
                                          size: 10,
                                        ),
                                        Container(
                                            margin:
                                                const EdgeInsets.only(right: 15),
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                    width: 25,
                                                    height: 20,
                                                    child: IconButton(
                                                      icon: const Icon(
                                                        Icons
                                                            .favorite_border_outlined,
                                                        size: 16,
                                                      ),
                                                      onPressed: () {},
                                                    )),
                                                SizedBox(
                                                    width: 20,
                                                    height: 20,
                                                    child: IconButton(
                                                      icon: const Icon(
                                                        Icons
                                                            .comment_bank_outlined,
                                                        size: 16,
                                                      ),
                                                      onPressed: () {},
                                                    ))
                                              ],
                                            ))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      child: FloatingActionButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context)=>
                              Dialog(
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        child: Text(
                                          "Write Your Comment",
                                          style: TextStyle(
                                            fontSize: 25
                                          ),
                                        ),
                                      ),
                                      TextField(
                                        controller: textCont,
                                        decoration: InputDecoration(
                                          border: UnderlineInputBorder()
                                        ),
                                      ),
                                      Container(
                                        height: 40,
                                        margin: EdgeInsets.only(top: 30, bottom: 10),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.symmetric(horizontal: 10),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  width: 1,
                                                  color: AppColors.mainColor
                                                ),
                                                borderRadius: BorderRadius.circular(10)
                                              ),
                                              child: TextButton(
                                                child: Text("Cancel"),
                                                onPressed: (){
                                                  Navigator.pop(context);
                                                },
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.symmetric(horizontal: 10),
                                              decoration: BoxDecoration(
                                                color: AppColors.mainColor,
                                                borderRadius: BorderRadius.circular(10)
                                              ),
                                              child: TextButton(
                                                child: Text("Add",
                                                  style: TextStyle(
                                                    color: Colors.white
                                                  ),
                                                ),
                                                onPressed: (){
                                                  setState(() {
                                                    comments.add({
                                                      "comment": textCont.text,
                                                      "time": "a hour ago"
                                                    });
                                                    textCont.text = "";
                                                  });
                                                  Navigator.pop(context);
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                          );
                        },
                        child: Icon(Icons.edit),
                        elevation: 5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        );
      },
    );
  }
}
