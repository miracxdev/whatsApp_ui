import 'package:flutter/material.dart';
import 'package:whatsapp_ui/ui/chat_screen/view/chat_screen.dart';
import 'package:whatsapp_ui/ui/home_screen/controller/home_screen_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  HomeScreenController homeScreenController = HomeScreenController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff008166),
        title: const Text('WhatsApp'),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Row(
              children: [
                DropdownButton<String>(
                  isDense: false,
                  iconEnabledColor: Colors.white,
                  icon: Icon(Icons.more_vert),
                  items: <String>[
                    'A',
                    'B',
                    'C',
                    'D',
                    'E'
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),
              ],
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading:
                        CircleAvatar(child: homeScreenController.avatar[index]),
                    title: Text(homeScreenController.titles[index]),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff00a881),
        child: Icon(Icons.message),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChatScreen(),
              ));
        },
      ),
    );
  }
}
