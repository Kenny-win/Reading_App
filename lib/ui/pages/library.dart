// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:testapp/ui/pages/search.dart';

class Library extends StatefulWidget {
  const Library({ Key? key }) : super(key: key);

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar :AppBar(
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
        padding: const EdgeInsets.only(top :10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(width: 10,),
                Icon(Icons.arrow_back_ios,size: 25,),
                Text('Books Library', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700
                ),)
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Positioned(
                top: 200,
                child: Container(
                  margin: const EdgeInsets.only(top: 15),
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: BoxDecoration(
                    color: HexColor('DBE2E8'),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)
                    )
                  ),
                  child: GridView.count(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: <Widget>[
                      Image.asset('assets/buku1.jpg'),
                      Image.asset('assets/buku2.jpg'),
                      Image.asset('assets/buku3.jpg'),
                      Image.asset('assets/buku4.jpg'),
                      Image.asset('assets/buku5.jpg'),
                      Image.asset('assets/buku6.jpg'),
                    ],
                  )
                )
            )
          ],
        ),
      ),
    );
  }
}