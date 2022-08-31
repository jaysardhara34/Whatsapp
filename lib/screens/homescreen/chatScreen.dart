import 'package:flutter/material.dart';

class Chatscrren extends StatefulWidget {
  const Chatscrren({Key? key}) : super(key: key);

  @override
  State<Chatscrren> createState() => _ChatscrrenState();
}

class _ChatscrrenState extends State<Chatscrren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff383838),
      body: Center(
        child: Text("Chatscreen"),
      ),
    );
  }
}
