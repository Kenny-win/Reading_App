// ignore_for_file: prefer_const_constructors

import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:testapp/ui/pages/search.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState(){
    return CheckboxWidget();
  } 
}

class CheckboxWidget extends State<CheckBox> {
  // int _index = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: HexColor("DBE2E8"),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          margin: EdgeInsets.only(top: 30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10,right: 20),
                child: Image.asset('assets/Profile.png',height: 50,)),
              Text("Hi, Kenny!", style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: HexColor("2F5C79")),),
            ],
          ),
        ),
        // leading: Center(
        //   child: Image.asset('assets/Profile.png',height: 50,),
        // ),
        // title: Text("Hi, Kenny!", style: TextStyle(color: HexColor("2F5C79")),),
        actions: [
          IconButton(
            icon :Icon(
              Icons.search_outlined,
              size: 40,
              color: HexColor("2F5C79"),
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SearchPage()));
            },
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
    
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        // ignore: avoid_unnecessary_containers
        child: Container(
          // margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("Popular Books",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: HexColor("2F5C79")
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal :5),
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: 110,
                          margin: const EdgeInsets.all(5),
                          child: Image.asset('assets/buku3.jpg')
                        ),
                        Container(
                          width: 110,
                          margin: const EdgeInsets.all(5),
                          child: Image.asset('assets/buku2.jpg')
                         ),
                        Container(
                          width: 110,
                          margin: const EdgeInsets.all(5),
                          child: Image.asset('assets/buku5.jpg')
                        ),
                        Container(
                          width: 110,
                          margin: const EdgeInsets.all(5),
                          child: Image.asset('assets/buku1.jpg')
                        ),
                        Container(
                          width: 110,
                          margin: const EdgeInsets.all(5),
                          child: Image.asset('assets/buku6.jpg')
                        ),
                      ]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("Newest",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: HexColor("2F5C79")
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    margin: const EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          margin: const EdgeInsets.only(right:10),
                          child: Image.asset('assets/buku1.jpg')
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Yves Saint Laurent",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: HexColor("2F5C79")
                                ),
                              ),
                            
                            const SizedBox(
                              height: 10,
                            ),
                            Text("Suzy Menkes",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: HexColor("2F5C79")
                                ),
                              ),
                            const SizedBox(
                              height: 10,
                            ),
                            Image.asset('assets/4stars.png',height: 20,)
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 120,
                    margin: const EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          margin: const EdgeInsets.only(right:10),
                          child: Image.asset('assets/buku2.jpg')
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Yves Saint Laurent",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: HexColor("2F5C79")
                                ),
                              ),
                            
                            const SizedBox(
                              height: 10,
                            ),
                            Text("Suzy Menkes",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: HexColor("2F5C79")
                                ),
                              ),
                            const SizedBox(
                              height: 10,
                            ),
                            Image.asset('assets/5stars.png',height: 20)
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 120,
                    margin: const EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          margin: const EdgeInsets.only(right:10),
                          child: Image.asset('assets/buku3.jpg')
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Yves Saint Laurent",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: HexColor("2F5C79")
                                ),
                              ),
                            
                            const SizedBox(
                              height: 10,
                            ),
                            Text("Suzy Menkes",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: HexColor("2F5C79")
                                ),
                              ),
                            const SizedBox(
                              height: 10,
                            ),
                            Image.asset('assets/5stars.png',height: 20)
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    
    );
  }
}

