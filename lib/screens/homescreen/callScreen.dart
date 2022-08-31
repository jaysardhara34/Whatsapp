import 'package:flutter/material.dart';

class Callscreen extends StatefulWidget {
  const Callscreen({Key? key}) : super(key: key);

  @override
  State<Callscreen> createState() => _CallscreenState();
}

class _CallscreenState extends State<Callscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xff383838),
      body: Center(
        child: Text("Callscreen"),
      ),
    );
  }
}
