import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class createtask extends StatefulWidget {
  const createtask({super.key});

  @override
  State<createtask> createState() => _createtaskState();
}

const List<String> list = <String>[
  'No repeat',
  'Once a day',
  'Once a day (mon-fri)',
  "Once a week",
  "Once a Month",
  "Once a year",
  "Other.."
];
const List<String> task = <String>["default", "personal", "Shopping", "work"];
String dropdownValue = list.first;
String downValue = task.first;
TextEditingController _dateController = TextEditingController();
TextEditingController _timeController = TextEditingController();

class _createtaskState extends State<createtask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(134, 4, 83, 147),
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
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    "What is to be done?",
                    style: TextStyle(
                        color: Color.fromARGB(135, 33, 149, 243),
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ],
              ),
            ),
            ListTile(
              title: TextField(
                style: TextStyle(color: Colors.white),
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
              trailing: Icon(
                Icons.mic,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    "Due date",
                    style: TextStyle(
                        color: Color.fromARGB(135, 33, 149, 243),
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ],
              ),
            ),
            ListTile(
              title: TextField(
                style: TextStyle(color: Colors.white),
                controller: _dateController,
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.av_timer_outlined),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    //icon of text field
                    hintText: "Date not set",
                    hintStyle:
                        TextStyle(color: Colors.white) //label text of field
                    ),
                readOnly: true,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2101),
                    builder: (BuildContext context, Widget? child) {
                      return Theme(
                        data: ThemeData.light().copyWith(
                          primaryColor: Colors.blue.shade900,
                          dialogBackgroundColor: Colors.white,
                          colorScheme: ColorScheme.light(
                            primary: Colors.blue.shade900, // Header text color
                            onPrimary: Colors.white, // Header text color
                            surface: Colors.blue.shade900, // Background color
                            onSurface: Colors.blue.shade900, // Text color
                          ).copyWith(
                            secondary: Colors.indigo.shade800,
                          ), // Dialog background color
                        ),
                        child: child!,
                      );
                    },
                  );

                  if (pickedDate != null) {
                    setState(() {
                      _dateController.text =
                          "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
                    });
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: TextField(
                style: TextStyle(color: Colors.white),
                controller: _timeController,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  hintText: "Time no set (all day)",
                  hintStyle: TextStyle(color: Colors.white),
                  suffixIcon: Icon(Icons.access_time),
                ),
                readOnly: true,
                onTap: () async {
                  TimeOfDay? pickedTime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                    builder: (BuildContext context, Widget? child) {
                      return Theme(
                        data: ThemeData.light().copyWith(
                          primaryColor: Colors.blue.shade900,
                          dialogBackgroundColor: Colors.white,
                          colorScheme: ColorScheme.light(
                            primary: Colors.blue.shade900, // Header text color
                            onPrimary: Colors.white, // Header text color
                            surface: Colors.white, // Background color
                            onSurface: Colors.black, // Text color
                          ).copyWith(
                            secondary: Colors.indigo.shade800,
                          ), // Dialog background color
                        ),
                        child: child!,
                      );
                    },
                  );
                  if (pickedTime != null) {
                    setState(() {
                      _timeController.text = pickedTime.format(context);
                    });
                  }
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    "Repeat",
                    style: TextStyle(
                        color: Color.fromARGB(135, 33, 149, 243),
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  DropdownButton<String>(
                    value: dropdownValue,
                    underline: Container(
                      color: Color.fromARGB(135, 33, 149, 243),
                    ),
                    dropdownColor: Color.fromARGB(135, 33, 149, 243),
                    icon: const Icon(Icons.arrow_drop_down),
                    style: const TextStyle(color: Colors.white, fontSize: 19),
                    onChanged: (String? value) {
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                    items: list.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 0, right: 30),
                              child: Center(child: Text(value)),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    "Add to List",
                    style: TextStyle(
                        color: Color.fromARGB(135, 33, 149, 243),
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  DropdownButton<String>(
                    value: downValue,
                    underline: Container(
                      color: Color.fromARGB(135, 33, 149, 243),
                    ),
                    dropdownColor: Color.fromARGB(135, 33, 149, 243),
                    icon: const Icon(Icons.arrow_drop_down),
                    style: const TextStyle(color: Colors.white, fontSize: 19),
                    onChanged: (String? value) {
                      setState(() {
                        downValue = value!;
                      });
                    },
                    items: task.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 0, right: 170),
                              child: Center(child: Text(value)),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Icon(
                    Icons.post_add_sharp,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}