// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:testapp/provider/password_provider.dart';
import 'package:testapp/ui/pages/authentication/register_page.dart';
import 'package:testapp/ui/pages/home.dart';
import 'package:testapp/ui/pages/page.dart';
import 'package:testapp/ui/utils/auth_dimension.dart';
import 'package:testapp/ui/utils/colors.dart';
import 'package:provider/provider.dart';
import 'package:testapp/ui/widgets/authbutton_widget.dart';
import 'package:testapp/ui/widgets/bigtext_widget.dart';
import 'package:testapp/ui/widgets/smalltext_widget.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  var isChecked = true;
  @override
  Widget build(BuildContext context) {
    var passwordProvider = Provider.of<PasswordProvider>(context);
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
          elevation: 0,
          backgroundColor: Colors.transparent.withOpacity(0),
          toolbarHeight: AuthDimensions.toolbarHeight50,
        ),
        body: SingleChildScrollView(
            child: Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 40),
                // color: Colors.red,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 200,
                        height: 200,
                        child: Image.asset(
                          "assets/images/auth.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                          padding: const EdgeInsets.only(left: 20),
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BigText(text: "Log in", size: 32),
                              const SizedBox(
                                height: 20,
                              ),
                              BigText(
                                text: "Email Address",
                                size: 16,
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              SizedBox(
                                  width: MediaQuery.of(context).size.width - 40,
                                  height: 36,
                                  child: const TextField(
                                    // maxLines: 1,
                                    // maxLength: 50,
                                    style: TextStyle(fontSize: 14, height: 1),
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            top: 0, bottom: 0, left: 14),
                                        hintText: "Type your email",
                                        // icon: const Icon(Icons.email),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.black,
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(40)),
                                        )),
                                  )),
                              const SizedBox(
                                height: 20,
                              ),
                              BigText(
                                text: "Password",
                                size: 16,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              SizedBox(
                                  width: MediaQuery.of(context).size.width - 40,
                                  height: 36,
                                  child: TextField(
                                    // maxLines: 1,
                                    // maxLength: 50,
                                    obscureText: passwordProvider.isPress,
                                    style: const TextStyle(
                                        fontSize: 14, height: 1),
                                    decoration: InputDecoration(
                                        contentPadding: const EdgeInsets.only(
                                            top: 0, bottom: 0, left: 14),
                                        hintText: "Type your password",
                                        suffixIcon: IconButton(
                                            onPressed: () {
                                              passwordProvider.isPress =
                                                  !isChecked;
                                              isChecked = !isChecked;
                                            },
                                            icon: Icon(passwordProvider.isPress?Icons.visibility:Icons.visibility_off)),
                                        border: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.black,
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(40)),
                                        )),
                                  ))
                            ],
                          )),
                      const SizedBox(
                        height: 24,
                      ),
                      MyAuthButton(text: "Login", backgroundButtonColor: AppColors.mainColor,textColor: Colors.white, arrShadow: [
                          BoxShadow(
                              color: AppColors.mainColor.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 8,
                              offset: Offset(0, 2))
                        ], onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Screen()));
                        },),
                      const SizedBox(
                        height: 12,
                      ),
                      MyAuthButton(text: "Create an Account", backgroundButtonColor: Colors.white, textColor: AppColors.mainColor, 
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>RegisterPage()));
                      }),
                      const SizedBox(
                        height: 12,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: SmallText(
                            text: "Forgot Password?",
                            size: 12,
                          )),
                      const SizedBox(
                        height: 16,
                      ),
                    ]))));
  }
}
