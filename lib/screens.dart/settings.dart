import 'package:flutter/material.dart';

class settings extends StatelessWidget {
  const settings({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Color.fromARGB(134, 4, 83, 147),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55), // Set your preferred height here
        child: Padding(
          padding: const EdgeInsets.only(
            top: 35,
          ),
          child: AppBar(
            backgroundColor: Color.fromARGB(135, 33, 149, 243),
            title: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 45,
                  ),
                  child: Text(
                    "Settings",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "General",
                        style: TextStyle(
                            color: Color.fromARGB(135, 33, 149, 243),
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    title: Text(
                      "Remove Ads",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "One payment to remove ads forever",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    title: Text(
                      "List to show at startup",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "All Lists",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    title: Text(
                      "First day of week",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "Sunday",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    title: Text(
                      "Tme format",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "12-hour",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    title: Text(
                      "Sort order",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "Due date + Alphabetically",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Notifications",
                        style: TextStyle(
                            color: Color.fromARGB(135, 33, 149, 243),
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    title: Text(
                      "Sound",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "Default ringtone(Bubble)",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    title: Text(
                      "Task notification",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "On time",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    title: Text(
                      "choose time",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "8:00 AM",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Syncing with Google",
                        style: TextStyle(
                            color: Color.fromARGB(135, 33, 149, 243),
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    title: Text(
                      "Google Account",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "Not set",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    title: Text(
                      "sync mode",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "sync disabled",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Ouick Task",
                        style: TextStyle(
                            color: Color.fromARGB(135, 33, 149, 243),
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    title: Text(
                      "default due date",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "No date",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "About",
                        style: TextStyle(
                            color: Color.fromARGB(135, 33, 149, 243),
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    title: Text(
                      "Invite friends to the app",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    title: Text(
                      "More Apps",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    title: Text(
                      "Send Feedback",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    title: Text(
                      "splenDO",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "Version 4.35",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Follow Us",
                        style: TextStyle(
                            color: Color.fromARGB(135, 33, 149, 243),
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    title: Text(
                      "Facebook",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    title: Text(
                      "Instagram",
                      style: TextStyle(color: Colors.white),
                    ),
                 
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    title: Text(
                      "Twitter",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
