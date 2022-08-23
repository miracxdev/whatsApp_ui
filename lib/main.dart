import 'package:flutter/material.dart';
import 'package:whatsapp_ui/ui/home_screen/view/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      home: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}
