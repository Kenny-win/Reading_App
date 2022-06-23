
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:testapp/ui/pages/home.dart';
import 'package:testapp/ui/pages/library.dart';
import 'package:testapp/ui/pages/notification.dart';
import 'package:testapp/ui/pages/profile.dart';

class Screen extends StatefulWidget {
  const Screen({ Key? key }) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  var _index = 0;
  final pages = const[
    CheckBox(),
    Library(),
    NotificationPage(),
    ProfilePage()
  ];

  void changePage(int index){
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[_index],
      extendBody: true,

      bottomNavigationBar: FloatingNavbar(
        currentIndex: _index,
        backgroundColor: Colors.white,
        selectedBackgroundColor: Colors.transparent,
        unselectedItemColor: Colors.grey,
        items: [
          FloatingNavbarItem(icon: Icons.home_outlined, title: 'Home'),
          FloatingNavbarItem(icon: Icons.bookmark_border, title: 'Library'),
          FloatingNavbarItem(icon: Icons.notifications_none, title: 'Notification'),
          FloatingNavbarItem(icon: Icons.person_outline,title: 'Profile'),
        ],
        onTap: (index) {
          setState(() {
            _index = index;
          });
          //Handle button tap
        },
        borderRadius : 25,
        elevation: 50,
        margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),

      ),
    );
  }
}
