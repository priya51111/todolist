import 'package:flutter/material.dart';
import 'package:tolist/screens.dart/batchmode.dart';
import 'package:tolist/screens.dart/createtask.dart';
import 'package:tolist/hii.dart';
import 'package:tolist/screens.dart/demo.dart';
import 'package:tolist/screens.dart/homepage.dart';
import 'package:tolist/screens.dart/loginpage.dart';
import 'package:tolist/screens.dart/tasklist.dart';

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
      home: homepage(),
    );
  }
}
