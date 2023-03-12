import 'package:eschool/screen/home_page.dart';
import 'package:eschool/screen/login_page.dart';
import 'package:eschool/screen/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';





void main(){
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      )
  );
  return runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: LoginPage(),
      home: MyHomePage(),


    );
  }
}
