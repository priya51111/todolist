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
          title: Text('TimePicker from TextField'),
        ),
        body: Center(
          child: MyForm(),
        ),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  TimeOfDay? _selectedTime;

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime ?? TimeOfDay.now(),
    );

    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              readOnly: true,
              onTap: () {
                _selectTime(context);
              },
              decoration: InputDecoration(
                labelText: 'Select Time',
                border: OutlineInputBorder(),
              ),
              controller: TextEditingController(
                text:
                    _selectedTime != null ? _selectedTime!.format(context) : '',
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.access_time),
            onPressed: () {
              _selectTime(context);
            },
          ),
        ],
      ),
    );
  }
}
