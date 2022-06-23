// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:testapp/ui/pages/book/book_content/book_content.dart';
import 'package:testapp/ui/pages/book/book_reviews/book_review.dart';
import 'package:testapp/ui/utils/auth_dimension.dart';
import 'package:testapp/ui/utils/colors.dart';
import 'package:testapp/ui/widgets/bigtext_widget.dart';
import 'package:testapp/ui/widgets/smalltext_widget.dart';

class BookPage extends StatefulWidget {
  const BookPage({ Key? key }) : super(key: key);

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent, // 1
          // backgroundColor: AppColors.backgroundColor,
          elevation: 0,
          toolbarHeight: AuthDimensions.toolbarHeight50,
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                IconButton(
                  onPressed: (){}, 
                  icon: const Icon(Icons.bookmark_outline_sharp, color: Colors.black, size: 32,)
                )
              ]
            )
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 40,),
                Container(
                  // color: Colors.red,
                  width: 150, //190
                  height: 200, //290
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        spreadRadius: 0.5,
                        blurRadius: 12,
                        offset: const Offset(-5,5)
                      )
                    ]
                  ),
                  child: Image.asset('assets/images/book.png',
                    fit: BoxFit.cover,
                  )
                ),
                const SizedBox(height: 20,),
                BigText(text: "Yves Saint Laurent", fontWeight: FontWeight.bold),
                const SizedBox(height: 10,),
                SmallText(text: "Suzy Menkes", size: 14,),
                const SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Wrap(
                      children: List.generate(
                        5, (index) {
                          if (index == 4){
                            return Icon(Icons.star_half, color: Color.fromARGB(255, 255, 217, 0), size: 18,);
                          }else{
                            return Icon(Icons.star, color: Color.fromARGB(255, 255, 217, 0), size: 18,);
                          }
                          
                        }
                      ),
                    ),
                    const SizedBox(width: 10,),
                    RichText(
                      text: const TextSpan(
                        text: "4.5 ",
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                            text: "/ 5.0",
                            style: TextStyle(color: Colors.grey)
                          )
                        ]
                      )
                    ),
                    const SizedBox(width: 10,),
                    Container(
                      width: 100,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              
                            )
                          )
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const BookReviewPage()));
                        }, 
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.reviews_outlined,
                              color: Colors.black,
                              size:20
                            ),
                            SmallText(text: "Reviews", color: Colors.black, size: 12,)
                          ],
                        )
                      )
                    )
                  ]
                ),
                const SizedBox(height: 8,),
                Container(
                  child: SmallText(text: "A spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion.",
                    textAlign: TextAlign.left,
                    size: 16,
                    height: 1.5,
                  )
                ),
                const SizedBox(height: 20,),
                // Row(
                //   children: [
                //     Expanded(
                //       flex: 4,
                //       child: Container(
                //         child: ElevatedButton(
                //           onPressed: (){}, 
                //           style: ButtonStyle(
                //             backgroundColor: MaterialStateProperty.all(Colors.white),
                //             shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                //               RoundedRectangleBorder(
                //                 borderRadius: BorderRadius.circular(10),
                                
                //               )
                //             )
                //           ),
                //           child: Row(
                //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //             crossAxisAlignment: CrossAxisAlignment.center,
                //             children: [
                //               const Icon(
                //                 Icons.menu_rounded,
                //                 color: Colors.black
                //               ),
                //               SmallText(text: "Preview", color: Colors.black)
                //             ],
                //           )
                //         )
                //       )
                //     ),
                //     const SizedBox(width: 8,),
                //     Expanded(
                //       flex: 4,
                //       child: Container(
                //         child: ElevatedButton(
                //           style: ButtonStyle(
                //             backgroundColor: MaterialStateProperty.all(Colors.white),
                //             shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                //               RoundedRectangleBorder(
                //                 borderRadius: BorderRadius.circular(10),
                                
                //               )
                //             )
                //           ),
                //           onPressed: (){
                //             Navigator.push(context, MaterialPageRoute(builder: (context)=> const BookReviewPage()));
                //           }, 
                //           child: Row(
                //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //             crossAxisAlignment: CrossAxisAlignment.center,
                //             children: [
                //               const Icon(
                //                 Icons.reviews_outlined,
                //                 color: Colors.black
                //               ),
                //               SmallText(text: "Reviews", color: Colors.black)
                //             ],
                //           )
                //         )
                //       )
                //     )
                //   ]
                // ),
                Container(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.only(top: 10, bottom: 10)),
                      backgroundColor: MaterialStateProperty.all(AppColors.mainColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                      )
                    ),
                    onPressed: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context)=>const BookContentPage())
                      );
                    }, 
                    child:SmallText(text: "Read More", color: Colors.white,),
                  )
                ),
                const SizedBox(height: 10,)
              ],
            )
          )
        )
      )
    );
  }
}