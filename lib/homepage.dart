import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(135, 33, 149, 243),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(135, 33, 149, 243),
        foregroundColor: Colors.white,
        title: Row(
          children: [
            Icon(Icons.done_outline_rounded, size: 45),
            DropdownButton<String>(
              dropdownColor: Color.fromARGB(135, 33, 149, 243),
              icon: Icon(Icons.arrow_drop_down), // Icon for the dropdown button
              // Hint text for the dropdown button
              onChanged: (String? newValue) {
                // Handle dropdown value change
                print(newValue);
              },
              items: <String>[
                'All List',
                'Personal',
                'Working',
                'Shopping',
                "work",
                "finished"
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Row(
                    children: <Widget>[
                      // You can add an icon before the text
                      if (value == 'All List') Icon(Icons.home),
                      if (value == 'Personal') Icon(Icons.menu),
                      if (value == 'Working') Icon(Icons.menu),
                      if (value == 'Shopping') Icon(Icons.menu),
                      if (value == 'work') Icon(Icons.menu),
                      if (value == 'finished') Icon(Icons.menu),
                      SizedBox(width: 0), // Space between icon and text
                      Text(value),
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.search, size: 34)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_vert_outlined, size: 34))
            ],
          )
        ],
      ),
    );
  }
}
