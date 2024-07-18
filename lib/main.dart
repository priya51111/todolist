import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import 'package:tolist/screens.dart/batchmode.dart';
import 'package:tolist/screens.dart/createtask.dart';
import 'package:tolist/hii.dart';
import 'package:tolist/screens.dart/demo.dart';

import 'package:tolist/screens.dart/homepage.dart';
import 'package:tolist/screens.dart/loginpage.dart';
>>>>>>> 3ffbcc1fff7786583192706c053561d2f666a16b
import 'package:tolist/screens.dart/loginscreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home:createtask(),
    );
  }
}
