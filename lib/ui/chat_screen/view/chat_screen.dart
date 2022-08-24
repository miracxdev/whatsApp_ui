import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/app/app_constants/padding_size.dart';
import 'package:whatsapp_ui/ui/call_screen/view/call_screen.dart';

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
              backgroundImage: AssetImage("assets/images/deniz.png"),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 23),
              child: Icon(Icons.video_call_rounded),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CallScreen(),
                            ));
                      },
                      icon: Icon(Icons.phone_rounded))),
            ),
            Padding(
              padding: EdgeInsets.only(right: 8),
              child: Row(
                children: [
                  DropdownButton<String>(
                    isDense: false,
                    iconEnabledColor: Colors.white,
                    icon: Icon(Icons.more_vert),
                    items:
                        <String>['A', 'B', 'C', 'D', 'E'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(growable: true),
                    onChanged: (_) {},
                  ),
                ],
              ),
            )
          ]),
      body: Column(children: [
        Flexible(
          child: ConstrainedBox(
            constraints: new BoxConstraints(
              minHeight: double.infinity,

            ),
          ),
        ),
        Row(children: [
          Expanded(
            flex: 18,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: TextField(
                cursorWidth: 3,
                cursorColor: Colors.green,
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.folder),
                    prefixIcon: Icon(Icons.emoji_emotions_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.black),
                    hintText: "Message",
                    fillColor: Colors.white),
              ),
            ),
          ),
          Spacer(),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: TextButton(
                onPressed: () {},
                child: Icon(
                  Icons.mic,
                  color: Colors.white,
                ),
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xff00a881),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(200),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: paddingS, vertical: paddingM),
                ),
              ),
            ),
          ),
        ])
      ]),
    );
  }
}
