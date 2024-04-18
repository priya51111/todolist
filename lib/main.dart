import 'package:flutter/material.dart';
import 'package:tolist/createtask.dart';
import 'package:tolist/hii.dart';
import 'package:tolist/homepage.dart';
import 'package:tolist/loginpage.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
<<<<<<< HEAD

  
      home:loginpage(),

=======
      home: createtask(),
>>>>>>> db15b1f46f1688e9173dd3f35796d732208997d8
    );
  }
}
