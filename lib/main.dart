import 'package:cloudgo_app/Login/IntroPage.dart';
import 'package:cloudgo_app/Login/LoginPage.dart';
import 'package:cloudgo_app/News/CustomBottomBar.dart';
import 'package:cloudgo_app/SALES/DanhSach.dart';
import 'package:flutter/material.dart';
import 'MenuAccount/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const ScreenMenuAcc(),
    );
  }
}


