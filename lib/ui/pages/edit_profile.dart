// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:testapp/ui/pages/page.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({ Key? key }) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(child: IconButton(icon: Icon(Icons.arrow_back_ios),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Screen()));
        },)),
        title: Text(
          'Edit Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: HexColor('88A8BC'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/Profile.png',
                  ),
                  radius: 50,
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'kenny@gmail.com',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )),
                ),
                SizedBox(
                  height: 7,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: '@kenny',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )),
                ),
                SizedBox(
                  height: 7,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'KennyAja',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )),
                ),
                SizedBox(
                  height: 7,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: '08123456789',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )),
                ),
                SizedBox(
                  height: 7,
                ),
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=> Screen()));
                  },
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 135),
                      primary: HexColor('88A8BC'),
                      textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w600),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      elevation: 16,
                    ), 
                  child: Text('Done',style: TextStyle(color: Colors.white),)
                ),
                SizedBox(
                  height: 7,
                ),
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=> Screen()));
                  },
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 125),
                      primary: Colors.white,
                      textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w600),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      elevation: 16,
                      side: const BorderSide(
                        width: 1,color: Colors.black
                      )
                    ), 
                  child: Text('Cancel',style: TextStyle(color: Colors.black),)
                )
              ],
            ),
          ),
        ),
      ),
      
    );
  }
}
