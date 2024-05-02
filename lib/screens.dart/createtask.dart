import 'package:flutter/material.dart';
import 'package:tolist/hii.dart';
import 'package:intl/intl.dart';

class createtask extends StatefulWidget {
  const createtask({super.key});

  @override
  State<createtask> createState() => _createtaskState();
}

TimeOfDay selectedTime = TimeOfDay.now();


TextEditingController dateInput = TextEditingController();

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
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 300),
              child: Text(
                "Due date",
                style: TextStyle(
                    color: Color.fromARGB(135, 33, 149, 243),
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
            ListTile(
              title: TextField(
                controller: dateInput,
                //editing controller of this TextField
                decoration: InputDecoration(
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
                //set it true, so that user will not able to edit text
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1950),
                    //DateTime.now() - not to allow to choose before today.
                    lastDate: DateTime(2100),
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
                    print(
                        pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                    String formattedDate =
                        DateFormat('yyyy-MM-dd').format(pickedDate);
                    print(
                        formattedDate); //formatted date output using intl package =>  2021-03-16
                    setState(() {
                      dateInput.text =
                          formattedDate; //set output date to TextField value.
                    });
                  } else {}
                },
              ),
              trailing: Icon(
                Icons.calendar_today,
                color: Colors.white,
              ),
            ),
             TextField(
              
              
                onTap: () async {
                  final TimeOfDay? pickedTime = await showTimePicker(
                      context: context,
                      initialTime: selectedTime,
                      builder: (BuildContext context, Widget? child) {
                        return MediaQuery(
                          data: MediaQuery.of(context)
                              .copyWith(alwaysUse24HourFormat: false),
                          child: child!,
                        );
                      });

                  if (pickedTime != null && pickedTime != selectedTime)
                    setState(() {
                      selectedTime = pickedTime;
                    });
                },
              ),
            
          ],
        ),
      ),
    );
  }
}
