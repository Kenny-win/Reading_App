// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:testapp/ui/pages/search.dart';
import 'package:testapp/ui/pages/theme.dart';

class FantasyClass extends StatelessWidget {
  const FantasyClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
       leading: Center(
        child: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> SearchPage()));
          },
          icon: Icon(Icons.arrow_back_ios,color: Colors.black,)
        ),
       ),
       title: Text(
        'Action',
        style: TextStyle(
          color: Colors.black,
          fontSize: 24,
        ),
       ),
       centerTitle: true,
       actions: [
        Center(
          child: IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SearchPage()));
            },
            icon: Icon(
              Icons.search_outlined,
              color: Colors.black,
              size: 30,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        )
       ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(40),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Newest',
                      style: newest,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/fendys.png',
                          width: 74,
                          height: 111,
                        ),
                        SizedBox(
                          width: 31,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Fendy Power',
                              style: judul,
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Andrew E T',
                              style: penulis,
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Image.asset(
                              'assets/4stars.png',
                              width: 92.2,
                              height: 14,
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(Icons.bookmark_outline),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/richards.png',
                          width: 74,
                          height: 111,
                        ),
                        SizedBox(
                          width: 31,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Richard Red Eye',
                              style: judul,
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Vinnie F',
                              style: penulis,
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Image.asset(
                              'assets/4stars.png',
                              width: 92.2,
                              height: 14,
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(Icons.bookmark_outline),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/saranghae.png',
                          width: 74,
                          height: 111,
                        ),
                        SizedBox(
                          width: 31,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Saranghae Vinnie',
                              style: judul,
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Kenny',
                              style: penulis,
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Image.asset(
                              'assets/5stars.png',
                              width: 92.2,
                              height: 14,
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(Icons.bookmark_outline),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
