import 'package:flutter/material.dart';

class Statusscreen extends StatefulWidget {
  const Statusscreen({Key? key}) : super(key: key);

  @override
  State<Statusscreen> createState() => _StatusscreenState();
}

class _StatusscreenState extends State<Statusscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xff383838),
      body: Center(
        child: Text("Statusscreen"),
      ),
    );
  }
}
