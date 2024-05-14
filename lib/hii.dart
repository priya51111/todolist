import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> item = [
    'Default',
    'Shopping',
    'work',
    'finished',
    'Presonal',
    'New List',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            isExpanded: true,
            hint: const Row(
              children: [
                Icon(
                  Icons.home,
                  size: 16,
                  color: Colors.yellow,
                ),
                SizedBox(
                  width: 4,
                ),
                Expanded(
                  child: Text(
                    'All Lists',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            items: item.map<DropdownMenuItem<String>>((String item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Row(
                  children: <Widget>[
                    if (item == 'Default')
                      Icon(
                        Icons.menu,
                        color: Colors.pink,
                      ),
                    if (item == 'Shopping') Icon(Icons.menu),
                    if (item == 'work') Icon(Icons.menu),
                    if (item == 'finished') Icon(Icons.menu),
                    if (item == 'Presonal') Icon(Icons.menu),
                    if (item == 'New List') Icon(Icons.menu),
                    SizedBox(width: 30), // Space between icon and text
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Center(
                          child: Text(
                        item,
                        style: TextStyle(color: Colors.white),
                        overflow: TextOverflow.ellipsis,
                      )),
                    ),
                  ],
                ),
              );
            }).toList(),
            value: selectedValue,
            onChanged: (String? value) {
              setState(() {
                selectedValue = value;
              });
            },
            buttonStyleData: ButtonStyleData(
              height: 50,
              width: 200,
              padding: const EdgeInsets.only(left: 14, right: 14),
              decoration: BoxDecoration(
                color: Color.fromARGB(135, 33, 149, 243),
              ),
            ),
            iconStyleData: const IconStyleData(
              icon: Icon(
                Icons.arrow_drop_down,
              ),
              iconSize: 14,
              iconEnabledColor: Colors.red,
            ),
            dropdownStyleData: DropdownStyleData(
              maxHeight: 600,
              width: 200,
              decoration: BoxDecoration(
                color: Color.fromARGB(135, 33, 149, 243),
              ),
              offset: const Offset(-20, 0),
            ),
            menuItemStyleData: const MenuItemStyleData(
              height: 40,
              padding: EdgeInsets.only(left: 20, right: 0),
            ),
          ),
        ),
      ),
    );
  }
}
