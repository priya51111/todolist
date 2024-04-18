import 'package:flutter/material.dart';

class loginpage extends StatelessWidget {
  const loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A345B),
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 580),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  "assets/snows.png",
                ),
              )),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 110, top: 30),
                child: Text(
                  'Todo',
                  style: TextStyle(
                      color: Color(0xFFC2C8D4),
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 160, left: 20),
            child: Column(
              children: [
                Text(
                  'Enter Mail',
                  style: TextStyle(color: Color(0xFFFFF8F8), fontSize: 18),
                ),
                TextFormField(
                  decoration: InputDecoration(fillColor: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
