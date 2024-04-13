import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dropdown Button Example'),
        ),
        body: Center(
          child: DropdownButton<String>(
            icon: Icon(Icons.arrow_drop_down), // Icon for the dropdown button
            hint: Text('Select option'), // Hint text for the dropdown button
            onChanged: (String? newValue) {
              // Handle dropdown value change
              print(newValue);
            },
            items: <String>['All List', 'Personal', 'Working', 'Shopping']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Row(
                  children: <Widget>[
                    // You can add an icon before the text
                    if (value == 'All List') Icon(Icons.all_inclusive),
                    if (value == 'Personal') Icon(Icons.person),
                    if (value == 'Working') Icon(Icons.work),
                    if (value == 'Shopping') Icon(Icons.shopping_cart),
                    SizedBox(width: 10), // Space between icon and text
                    Text(value),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}