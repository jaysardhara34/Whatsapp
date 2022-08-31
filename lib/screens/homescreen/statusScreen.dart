import 'package:flutter/material.dart';

class Statusscreen extends StatefulWidget {
  const Statusscreen({Key? key}) : super(key: key);

  @override
  State<Statusscreen> createState() => _StatusscreenState();
}

class _StatusscreenState extends State<Statusscreen> {
  List img = [
    'assets/dra.jpeg',
    'assets/cadbury1.jpeg',
    'assets/pra.jpeg',
    'assets/ronik.jpeg',
    'assets/anni.jpeg',
    'assets/kartik.png',
    'assets/rach.jpeg',
    'assets/obi.jpg',
    'assets/obi1.jpg',
    'assets/1.jpeg',
    'assets/13.jpg',
  ];
  List name = [
    'Drashti',
    'Cadbury',
    'Prashant',
    'Ronik',
    'Anniruddh',
    'Kartik',
    'Yash',
    'Ronak',
    'Pratham',
    'Utsav',
    'Preet',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff383838),
      body: Center(
          child: ListView.builder(
              itemCount: name.length,padding: EdgeInsets.symmetric(vertical: 5),
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                      "${img[index]}",
                    ),
                    radius: 30,
                  ),
                  title: Text(
                    "${name[index]}",
                    style: TextStyle(color: Color(0xffffffff)),
                  ),
                );
              })),
    );
  }
}
