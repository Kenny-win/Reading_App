// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testapp/provider/textfield_provider.dart';
import 'package:testapp/ui/pages/authentication/login_page.dart';
import 'package:testapp/ui/utils/auth_dimension.dart';
import 'package:testapp/ui/utils/colors.dart';
import 'package:testapp/ui/widgets/authbutton_widget.dart';
import 'package:testapp/ui/widgets/bigtext_widget.dart';
import 'package:testapp/ui/widgets/register_field_widget.dart';
import 'package:testapp/ui/widgets/smalltext_widget.dart';

// ignore: must_be_immutable
class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);
  var isTap1 = false;
  var isTap2 = false;
  var isTap3 = false;
  var isTap4 = false;
  var isTap5 = false;
  var isTap6 = false;
  @override
  Widget build(BuildContext context) {
    var textfieldProvider = Provider.of<TextFieldProvider>(context);
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
            body: Stack(
              children: [
                Positioned(
                  // right: MediaQuery.of(context).size.width/2,
                  child: Center(
                      child: Container(
                    margin: const EdgeInsets.only(bottom: 50),
                    width: AuthDimensions.width200,
                    height: AuthDimensions.height200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                AppColors.backgroundColor.withOpacity(0.4),
                                BlendMode.dstATop),
                            image: const AssetImage("assets/images/auth.png"))),
                  )),
                ),
                Positioned(
                    // ignore: sized_box_for_whitespace
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: ListView(
                          children: [
                            BigText(
                                text: "Doesn't Have Account ?",
                                color: AppColors.mainColor),
                            const SizedBox(
                              height: 30,
                            ),
                            // ignore: avoid_unnecessary_containers
                            Container(
                              child: Center(
                                  child: Column(children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SmallText(
                                      text: "First Name",
                                      color: Colors.black,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    MyTextField(
                                      text: "Type your first name",
                                      fillColor: textfieldProvider.isOnTap1
                                          ? AppColors.mainColor.withOpacity(0.3)
                                          : Colors.blue,
                                      filled: textfieldProvider.isOnTap1,
                                      onTap: () {
                                        textfieldProvider.isOnTap1 = !isTap1;
                                        isTap1 = !isTap1;
                                        if (textfieldProvider.isOnTap1) {
                                          textfieldProvider.isOnTap2 = false;
                                          textfieldProvider.isOnTap3 = false;
                                          textfieldProvider.isOnTap4 = false;
                                          textfieldProvider.isOnTap5 = false;
                                          textfieldProvider.isOnTap6 = false;
                                          isTap2 = false;
                                          isTap3 = false;
                                          isTap4 = false;
                                          isTap5 = false;
                                          isTap6 = false;
                                        }
                                      },
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SmallText(
                                      text: "Last Name",
                                      color: Colors.black,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    MyTextField(
                                      text: "Type your last name",
                                      fillColor: textfieldProvider.isOnTap2
                                          ? AppColors.mainColor.withOpacity(0.3)
                                          : Colors.blue,
                                      filled: textfieldProvider.isOnTap2,
                                      onTap: () {
                                        textfieldProvider.isOnTap2 = !isTap2;
                                        isTap2 = !isTap2;
                                        if (textfieldProvider.isOnTap2) {
                                          textfieldProvider.isOnTap1 = false;
                                          textfieldProvider.isOnTap3 = false;
                                          textfieldProvider.isOnTap4 = false;
                                          textfieldProvider.isOnTap5 = false;
                                          textfieldProvider.isOnTap6 = false;
                                          isTap1 = false;
                                          isTap3 = false;
                                          isTap4 = false;
                                          isTap5 = false;
                                          isTap6 = false;
                                        }
                                      },
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SmallText(
                                      text: "Phone Number",
                                      color: Colors.black,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    MyTextField(
                                      text: "Type your phone number",
                                      fillColor: textfieldProvider.isOnTap3
                                          ? AppColors.mainColor.withOpacity(0.3)
                                          : Colors.blue,
                                      filled: textfieldProvider.isOnTap3,
                                      onTap: () {
                                        textfieldProvider.isOnTap3 = !isTap3;
                                        isTap3 = !isTap3;
                                        if (textfieldProvider.isOnTap3) {
                                          textfieldProvider.isOnTap1 = false;
                                          textfieldProvider.isOnTap2 = false;
                                          textfieldProvider.isOnTap4 = false;
                                          textfieldProvider.isOnTap5 = false;
                                          textfieldProvider.isOnTap6 = false;
                                          isTap1 = false;
                                          isTap2 = false;
                                          isTap4 = false;
                                          isTap5 = false;
                                          isTap6 = false;
                                        }
                                      },
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SmallText(
                                      text: "Email Address",
                                      color: Colors.black,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    MyTextField(
                                      text: "Type your email address",
                                      fillColor: textfieldProvider.isOnTap4
                                          ? AppColors.mainColor.withOpacity(0.3)
                                          : Colors.blue,
                                      filled: textfieldProvider.isOnTap4,
                                      onTap: () {
                                        textfieldProvider.isOnTap4 = !isTap4;
                                        isTap4 = !isTap4;
                                        if (textfieldProvider.isOnTap4) {
                                          textfieldProvider.isOnTap1 = false;
                                          textfieldProvider.isOnTap2 = false;
                                          textfieldProvider.isOnTap3 = false;
                                          textfieldProvider.isOnTap5 = false;
                                          textfieldProvider.isOnTap6 = false;
                                          isTap1 = false;
                                          isTap2 = false;
                                          isTap3 = false;
                                          isTap5 = false;
                                          isTap6 = false;
                                        }
                                      },
                                      icon: Icon(Icons.email),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SmallText(
                                      text: "Password",
                                      color: Colors.black,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    MyTextField(
                                      text: "Type your password",
                                      fillColor: textfieldProvider.isOnTap5
                                          ? AppColors.mainColor.withOpacity(0.3)
                                          : Colors.blue,
                                      filled: textfieldProvider.isOnTap5,
                                      onTap: () {
                                        textfieldProvider.isOnTap5 = !isTap5;
                                        isTap5 = !isTap5;
                                        if (textfieldProvider.isOnTap5) {
                                          textfieldProvider.isOnTap1 = false;
                                          textfieldProvider.isOnTap2 = false;
                                          textfieldProvider.isOnTap3 = false;
                                          textfieldProvider.isOnTap4 = false;
                                          textfieldProvider.isOnTap6 = false;
                                          isTap1 = false;
                                          isTap2 = false;
                                          isTap3 = false;
                                          isTap4 = false;
                                          isTap6 = false;
                                        }
                                      },
                                      icon: Icon(Icons.visibility_off),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SmallText(
                                      text: "Confirm Password",
                                      color: Colors.black,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    MyTextField(
                                      text: "Retype your password",
                                      fillColor: textfieldProvider.isOnTap6
                                          ? AppColors.mainColor.withOpacity(0.3)
                                          : Colors.blue,
                                      filled: textfieldProvider.isOnTap6,
                                      onTap: () {
                                        textfieldProvider.isOnTap6 = !isTap6;
                                        isTap6 = !isTap6;
                                        if (textfieldProvider.isOnTap6) {
                                          textfieldProvider.isOnTap1 = false;
                                          textfieldProvider.isOnTap2 = false;
                                          textfieldProvider.isOnTap3 = false;
                                          textfieldProvider.isOnTap4 = false;
                                          textfieldProvider.isOnTap5 = false;
                                          isTap1 = false;
                                          isTap2 = false;
                                          isTap3 = false;
                                          isTap4 = false;
                                          isTap5 = false;
                                        }
                                      },
                                      icon: Icon(Icons.visibility_off),
                                    ),
                                  ],
                                ),
                                // SizedBox(
                                //   height: AuthDimensions.height10*2,
                                // ),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: AuthDimensions.padLeft20, right: AuthDimensions.padRight15),
                                    child: RichText(
                                      textAlign: TextAlign.start,
                                      text: TextSpan(
                                        text:
                                            'By registering, you\'re agree to our ',
                                        style: TextStyle(
                                            fontSize: AuthDimensions.fontSize12,
                                            color: Colors.black,
                                            height: 1.4),
                                        children: const <TextSpan>[
                                          TextSpan(
                                              text: 'Terms & Conditions',
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 0, 140, 255))),
                                          TextSpan(text: ' and '),
                                          TextSpan(
                                              text: 'Privacy Policy',
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 0, 140, 255))),
                                        ],
                                      ),
                                    )),
                                const SizedBox(
                                  height: 30,
                                ),
                                MyAuthButton(
                                    text: "Register",
                                    buttonWidth: 280,
                                    onPressed: () {}),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SmallText(
                                      text: "Already Have Account ?",
                                      size: 14,
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context)=>LoginPage())
                                          );
                                        },
                                        child: const Text("Login",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 0, 140, 255))))
                                  ],
                                )
                              ])),
                            ),
                          ],
                        )))
              ],
            )));
  }
}
