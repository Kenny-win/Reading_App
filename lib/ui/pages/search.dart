// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:testapp/ui/pages/action.dart';
import 'package:testapp/ui/pages/fantasy.dart';
import 'package:testapp/ui/pages/history.dart';
import 'package:testapp/ui/pages/horror.dart';
import 'package:testapp/ui/pages/mysteries.dart';
import 'package:testapp/ui/pages/page.dart';
import 'package:testapp/ui/pages/romance.dart';
import 'package:testapp/ui/pages/science.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({ Key? key }) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('88A8BC'),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Screen()));
          },
        ),
        title: const TextBox() ,
        actions: const [
          Icon(Icons.search,size: 30,)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Positioned(
              child: Center(
                child: Text(
                  'Category',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              )
            ),
            Positioned(
                top: 200,
                child: SingleChildScrollView(
                  child: Container(
                    margin: const EdgeInsets.only(top: 15),
                    padding: const EdgeInsets.only(top: 20,bottom: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
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
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> ActionClass()));
                          },
                          child: Image.asset('assets/categories/action.png')
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> ActionClass()));
                          },
                          child: Image.asset('assets/categories/Adventure.png')),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> FantasyClass()));
                          },
                          child: Image.asset('assets/categories/fantasy.png')
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> HorrorClass()));
                          },
                          child: Image.asset('assets/categories/horror.png')),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> HistoryClass()));
                          },
                          child: Image.asset('assets/categories/hsitory.png')),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> ActionClass()));
                          },
                          child: Image.asset('assets/categories/humor.png')),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> MysteriesClass()));
                          },
                          child: Image.asset('assets/categories/myteries.png')),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> ActionClass()));
                          },
                          child: Image.asset('assets/categories/poetry.png')),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> RomanceClass()));
                          },
                          child: Image.asset('assets/categories/romance.png')),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> ScienceClass()));
                          },
                          child: Image.asset('assets/categories/Science Fiction.png')),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> ActionClass()));
                          },
                          child: Image.asset('assets/categories/Short Story.png')),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> ActionClass()));
                          },
                          child: Image.asset('assets/categories/Thriller.png')),
                      ],
                    )
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}

class TextBox extends StatelessWidget {
  const TextBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      height: 35,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child:const  Center(
        child: TextField(
          decoration: InputDecoration(
              hintText: 'Search...',
              border: InputBorder.none),
        ),
      ),
    );
  }
}