import 'package:dalkongcare_screen/screens/chat/chat_screen.dart';
import 'package:dalkongcare_screen/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'dalkong_care_screen',
      theme: theme(),
      home: ChatScreen(),
    );
  }
}
