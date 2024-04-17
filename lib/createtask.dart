import 'package:flutter/material.dart';

class createtask extends StatefulWidget {
  const createtask({super.key});

  @override
  State<createtask> createState() => _createtaskState();
}

class _createtaskState extends State<createtask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(135, 33, 149, 243),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(135, 33, 149, 243),
        foregroundColor: Colors.white,
        title: Row(
          children: [
            Icon(Icons.arrow_back),
            SizedBox(
              width: 20,
            ),
            Text(
              "New Task",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            )
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 220),
              child: Text(
                "What is to be done?",
                style: TextStyle(
                    color: Color.fromARGB(135, 33, 149, 243),
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
            ListTile(
              trailing: Icon(
                Icons.mic,
                color: Colors.white,
              ),
              title: TextField(
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  hintText: ("Enter Task here"),
                  fillColor: Colors.white,
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
