import 'package:flutter/material.dart';

class name extends StatefulWidget {
  const name({super.key});

  @override
  State<name> createState() => _nameState();
}

class _nameState extends State<name> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 580, left: 300),
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: () {
                  // Add your onPressed functionality here
                },
                child: Icon(
                  Icons.add,
                  color: Colors.blue,
                  size: 34,
                ),
                shape: CircleBorder(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                height: 70,
                width: 500,
                child: Container(
                  color: Color.fromARGB(135, 33, 149, 243),
                  child: Row(
                    children: [
                      Icon(
                        Icons.mic,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter Quick Task Here',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      
    );
  }
}