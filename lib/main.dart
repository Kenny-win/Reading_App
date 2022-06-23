import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:testapp/provider/password_provider.dart';
import 'package:testapp/provider/textfield_provider.dart';
import 'package:testapp/ui/pages/landing_page_app.dart';



void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<PasswordProvider>(create: (context)=>PasswordProvider()),
        ChangeNotifierProvider<TextFieldProvider>(create: (context)=>TextFieldProvider()),
      ],
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: Landing()),
    );
  }
}
