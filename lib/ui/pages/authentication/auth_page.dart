// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_print

import 'package:flutter/material.dart';
import 'package:testapp/ui/pages/authentication/login_page.dart';
import 'package:testapp/ui/pages/authentication/register_page.dart';
import 'package:testapp/ui/utils/auth_dimension.dart';
import 'package:testapp/ui/utils/colors.dart';
import 'package:testapp/ui/widgets/authbutton_widget.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.backgroundColor,
            appBar: AppBar(
              backgroundColor: AppColors.backgroundColor,
              elevation: 0,
              toolbarHeight: AuthDimensions.toolbarHeight50,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            body: Center(
                child: Container(
                    // color: Colors.red,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(
                        left: AuthDimensions.padLeftRight5,
                        right: AuthDimensions.padLeftRight5,
                        top: AuthDimensions.padTop5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: AuthDimensions.height10,
                        ),
                        Container(
                            width: AuthDimensions.width225,
                            height: AuthDimensions.height225,
                            child: Image.asset("assets/images/auth.png",
                                fit: BoxFit.cover)),
                        SizedBox(
                          height: AuthDimensions.height40,
                        ),
                        MyAuthButton(
                          text: "Login",
                          fontWeight: FontWeight.bold,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          },
                        ),
                        SizedBox(
                          height: AuthDimensions.height10,
                        ),
                        MyAuthButton(
                          text: "Register",
                          fontWeight: FontWeight.bold,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        RegisterPage()));
                          },
                        ),
                        SizedBox(
                          height: AuthDimensions.height15,
                        ),
                        ActionChip(
                            avatar: const CircleAvatar(
                              backgroundColor: Colors.purple,
                              child: Text('K'),
                            ),
                            elevation: 5,
                            label: Container(
                                width: AuthDimensions.width215,
                                child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("Continue as Kenny"),
                                          SizedBox(
                                            height: AuthDimensions.height2,
                                          ),
                                          Text("KennyWin88@gmail.com",
                                              style: TextStyle(
                                                  color: Color(0xff888383),
                                                  fontSize: AuthDimensions
                                                      .fontSize12))
                                        ],
                                      ),
                                      Container(
                                        width: AuthDimensions.width30,
                                        height: AuthDimensions.height30,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              AuthDimensions.radius50),
                                        ),
                                        child: Image.asset(
                                            "assets/images/google.png",
                                            fit: BoxFit.cover),
                                      )
                                    ])),
                            backgroundColor: Colors.white,
                            onPressed: () {
                              print('berhasil');
                            }),
                        SizedBox(
                          height: AuthDimensions.height10,
                        ),
                        ActionChip(
                            avatar: const CircleAvatar(
                              backgroundColor: Colors.purple,
                              child: Text('A'),
                            ),
                            elevation: 5,
                            label: Container(
                                width: AuthDimensions.width215,
                                child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("Continue as Andrew"),
                                          SizedBox(
                                            height: AuthDimensions.height2,
                                          ),
                                          Text("andreweliezer@gmail.com",
                                              style: TextStyle(
                                                  color: Color(0xff888383),
                                                  fontSize: AuthDimensions
                                                      .fontSize12))
                                        ],
                                      ),
                                      Container(
                                        width: AuthDimensions.width30,
                                        height: AuthDimensions.height30,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              AuthDimensions.radius50),
                                        ),
                                        child: Icon(
                                          Icons.facebook_rounded,
                                          size: AuthDimensions.width30 + 5,
                                          color:
                                              Color.fromARGB(255, 33, 44, 243),
                                        ),
                                      )
                                    ])),
                            backgroundColor: Colors.white,
                            onPressed: () {
                              print('berhasil');
                            })
                      ],
                    )))));
  }
}
