import 'package:flutter/material.dart';
import 'package:whatsapp_ui/app/app_constants/padding_size.dart';
import 'package:whatsapp_ui/ui/chat_screen/view/chat_screen.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0b141b),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 90,
            ),
            CircleAvatar(
                radius: 65,
                backgroundImage: AssetImage("assets/images/deniz.png")),
                SizedBox(height: 35,),
                Text("A-Z",style: TextStyle(color: Colors.white,fontSize: 26),),
                SizedBox(height: 15,),
                Text("Ringing",style: TextStyle(color: Color(0xff919699),fontSize: 17))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 3.0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              backgroundColor: Color(0xff1f2c34),
              icon: Icon(Icons.volume_up, color: Colors.white),
              label: ""),
          BottomNavigationBarItem(
            label: "Video Call",
            icon: Icon(Icons.video_call_rounded, color: Colors.white),
          ),
          BottomNavigationBarItem(
            label: "Microphone",
            icon: Icon(
              Icons.mic_off,
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            label: "Cancalled",
            icon: Icon(
              Icons.phone_missed,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
