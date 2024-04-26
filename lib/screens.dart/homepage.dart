import 'package:flutter/material.dart';

const List<String> list = <String>[
  'All List',
  'Personal',
  'Shopping',
  'work',
  "finished",
  "default",
  "New List"
];

enum Menu {
  TaskLists,
  AddINBatchMode,
  RemoveAds,
  Moreapps,
  SendFeedback,
  followus,
  invite,
  setting
}

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(134, 4, 83, 147),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(135, 33, 149, 243),
        foregroundColor: Colors.white,
        title: Row(
          children: [
            Icon(Icons.done_outline_rounded, size: 45),
            SizedBox(
              width: 10,
            ),
            DropdownButton<String>(
              value: dropdownValue,
              dropdownColor: Color.fromARGB(135, 33, 149, 243),
              icon: const Icon(Icons.arrow_drop_down),
              elevation: 16,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 19),
              onChanged: (String? value) {
                // This is called when the user selects an item.
                setState(() {
                  dropdownValue = value!;
                });
              },
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Row(
                    children: <Widget>[
                      if (value == 'All List') Icon(Icons.home),
                      if (value == 'Personal') Icon(Icons.menu),
                      if (value == 'Shopping') Icon(Icons.menu),
                      if (value == 'work') Icon(Icons.menu),
                      if (value == 'finished') Icon(Icons.menu),
                      if (value == 'default') Icon(Icons.menu),
                      if (value == 'New List') Icon(Icons.menu),
                      SizedBox(width: 0), // Space between icon and text
                      Text(value),
                    ],
                  ),
                );
              }).toList(),
            )
          ],
        ),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    size: 34,
                    color: Colors.white,
                  )),
              PopupMenuButton<Menu>(
                color: Colors.blue,
                icon: const Icon(
                  Icons.more_vert,
                  size: 30,
                  color: Colors.white,
                ),
                onSelected: (Menu item) {},
                itemBuilder: (BuildContext context) => <PopupMenuEntry<Menu>>[
                  const PopupMenuItem<Menu>(
                    value: Menu.TaskLists,
                    child: ListTile(
                      title: Text('Task Lists',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  const PopupMenuItem<Menu>(
                    value: Menu.AddINBatchMode,
                    child: ListTile(
                      title: Text('Add in Batch Mode',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  const PopupMenuItem<Menu>(
                    value: Menu.RemoveAds,
                    child: ListTile(
                      title: Text('Remove Ads',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  const PopupMenuItem<Menu>(
                    value: Menu.Moreapps,
                    child: ListTile(
                      title: Text('More Apps',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  const PopupMenuItem<Menu>(
                    value: Menu.SendFeedback,
                    child: ListTile(
                      title: Text('Send Feedback',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  const PopupMenuItem<Menu>(
                    value: Menu.followus,
                    child: ListTile(
                      title: Text('Follow us',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  const PopupMenuItem<Menu>(
                    value: Menu.followus,
                    child: ListTile(
                      title: Text('Follow us',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  const PopupMenuItem<Menu>(
                    value: Menu.setting,
                    child: ListTile(
                      title: Text('Settings',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
      body: Container(
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
