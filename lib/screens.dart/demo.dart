import 'package:flutter/material.dart';



class MyHmePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHmePage> {
  TextEditingController _timeController = TextEditingController();

  Future<void> _selectTime(BuildContext context) async {
    TimeOfDay? pickedTime = await showTimePicker(
      
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (pickedTime != null) {
      setState(() {
        _timeController.text = pickedTime.format(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Picker Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: TextField(
                controller: _timeController,
                decoration: InputDecoration(
                  hintText: 'Select time',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.access_time),
                    onPressed: () {
                      _selectTime(context);
                    },
                  ),
                ),
                readOnly: true,
                onTap: () {
                  _selectTime(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
