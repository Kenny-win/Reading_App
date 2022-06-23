// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:testapp/ui/pages/edit_profile.dart';
import 'package:testapp/ui/pages/page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  double coverHeight = 150.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('B9D0DD'),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          buildStackImage(),
          Positioned(
            top: 130,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: 300,
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: HexColor('DBE2E8'),
                ),
              ),
            )
          ),
          Stack(
            children:[Positioned(
              top: 70,
              right: 0,
              left: 0,
              child: buildProfileImage()
            ),
            ]
          ),
        ],
      )
    );
  }
  Widget buildStackImage() {
    return Container(
      height: coverHeight,
      width: double.infinity,
      decoration: BoxDecoration(
        color: HexColor('5A8DAE'),
        borderRadius: BorderRadius.only(
          bottomLeft : Radius.circular(30),
          bottomRight: Radius.circular(30)
        )
      ),
    );
  }
  Widget buildProfileImage(){
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(
            'assets/Profile.png',
          ),
          radius: 60,
        ),
        SizedBox(height: 5,),
        Text(
          'Kenny',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 5,),
        Text(
          'kenny@gmail.com',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        // ignore: sized_box_for_whitespace
        Container(
          width: 300,
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Divider(
                height: 15,
                thickness: 1,
              ),
              ListTile(
                onTap: (){ 
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> EditProfile()));
                },
                title: Text('Edit Profile',style: TextStyle(color: Colors.grey),),
                trailing: Icon(Icons.chevron_right),
              ),
              ListTile(
                title: Text('Privacy',style: TextStyle(color: Colors.grey),),
                trailing: Icon(Icons.chevron_right),
              ),
              Divider(
                height: 10,
                thickness: 1,
              ),
              ListTile(
                title: Text('Help',style: TextStyle(color: Colors.grey),),
                trailing: Icon(Icons.chevron_right),
              ),
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Screen()));
                },
                title: Text('Logout',style: TextStyle(color: Colors.grey),),
                trailing: Icon(Icons.chevron_right),
              ),
            ],
          ),
        ),
        
      ],
    );
  }
}