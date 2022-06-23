// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:testapp/ui/pages/page.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({ Key? key }) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  // int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('F7F1EC'),
      appBar: AppBar(
        title: const Text('Updates'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Screen()));
          },
        ),
        actions: [
          Image.asset('assets/icon1.png')
        ],
        elevation: 0.0,
        backgroundColor: HexColor("88A8BC"),
      ),
      body: SingleChildScrollView(

        child: Column(
          children: [
            Card(
              child: ListTile(
                contentPadding: const EdgeInsets.all(10),
                leading: Image.asset('assets/Profile.png'),
                title: const Text(
                  'Kenzwin Updated Book'
                ),
                subtitle: const Text('Finished - Feb 15th 2022'),
                trailing: Image.asset('assets/buku1.jpg'),
              ),
            ),
            Card(
              child: ListTile(
                contentPadding: const EdgeInsets.all(10),
                leading: Image.asset('assets/Profile.png'),
                title: const Text(
                  'Kenzwin Updated Book'
                ),
                subtitle: const Text('Finished - Feb 15th 2022'),
                trailing: Image.asset('assets/buku1.jpg'),
              ),
            ),
            Card(
              child: ListTile(
                contentPadding: const EdgeInsets.all(10),
                leading: Image.asset('assets/Profile.png'),
                title: const Text(
                  'Kenzwin Updated Book'
                ),
                subtitle: const Text('Finished - Feb 15th 2022'),
                trailing: Image.asset('assets/buku1.jpg'),
              ),
            ),
            Card(
              child: ListTile(
                contentPadding: const EdgeInsets.all(10),
                leading: Image.asset('assets/Profile.png'),
                title: const Text(
                  'Kenzwin Updated Book'
                ),
                subtitle: const Text('Finished - Feb 15th 2022'),
                trailing: Image.asset('assets/buku1.jpg'),
              ),
            ),
            Card(
              child: ListTile(
                contentPadding: const EdgeInsets.all(10),
                leading: Image.asset('assets/Profile.png'),
                title: const Text(
                  'Kenzwin Updated Book'
                ),
                subtitle: const Text('Finished - Feb 15th 2022'),
                trailing: Image.asset('assets/buku1.jpg'),
              ),
            ),
            Card(
              child: ListTile(
                contentPadding: const EdgeInsets.all(10),
                leading: Image.asset('assets/Profile.png'),
                title: const Text(
                  'Kenzwin Updated Book'
                ),
                subtitle: const Text('Finished - Feb 15th 2022'),
                trailing: Image.asset('assets/buku1.jpg'),
              ),
            ),
          ],
        ),
      ),

      extendBody: true,
      // bottomNavigationBar: FloatingNavbar(
      //   backgroundColor: Colors.white,
      //   selectedBackgroundColor: Colors.transparent,
      //   unselectedItemColor: Colors.grey,
      //   onTap: (int val) {
      //     setState(() {
      //       _index = val;
      //     });
      //         //returns tab id which is user tapped
      //       },
      //       currentIndex: _index,
      //       items: [
      //         FloatingNavbarItem(icon: Icons.home_outlined, title: 'Home'),
      //         FloatingNavbarItem(icon: Icons.bookmark_border, title: 'Library'),
      //         FloatingNavbarItem(icon: Icons.notifications_none, title: 'Notification'),
      //         FloatingNavbarItem(icon: Icons.person_outline,title: 'Profile'),
      //       ],
      //       borderRadius : 25,
      //       elevation: 50,
      //       margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),

      //   ),
        
    );
  }
}