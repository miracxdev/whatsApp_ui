import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xff008166),
          title: const Text("A-Z kişilerinin chat'i ",
              style: TextStyle(fontSize: 15)),
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://i4.hurimg.com/i/hurriyet/75/750x0/5f48b969c9de3d1068d44630.jpg"),
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 23),
              child: Icon(Icons.video_call_rounded),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Padding(
                padding: EdgeInsets.only(right: 8),
                child: Icon(Icons.phone_rounded),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 8),
              child: Icon(Icons.more_vert),
            )
          ]),
      body: Container(
        child: Column(
          children: [
            TextField(
                decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
