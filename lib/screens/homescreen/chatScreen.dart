import 'dart:io';

import 'package:flutter/material.dart';

class Chatscrren extends StatefulWidget {
  const Chatscrren({Key? key}) : super(key: key);

  @override
  State<Chatscrren> createState() => _ChatscrrenState();
}

class _ChatscrrenState extends State<Chatscrren> {
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
  List chat = [
    'Hoy',
    'Hllw',
    'Hllw',
    'Hey',
    'Hey',
    'Hey',
    'Hey',
    'Hey',
    'Onega',
    'Dattebayo',
    'Kimimaro',
  ];
  List time = [
    '6:20 pm',
    '6:00 pm',
    '5:30 pm',
    '5:20 pm',
    '5:00 pm',
    '4:20 pm',
    '4:00 pm',
    '3:20 pm',
    '3:00 pm',
    '2:20 pm',
    '2:00 pm',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff383838),
      body: Center(
          child: ListView.builder(
              itemCount: name.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                      "${img[index]}",
                    ),
                    radius: 25,
                  ),
                  title: Text(
                    "${name[index]}",
                    style: TextStyle(color: Color(0xffffffff)),
                  ),
                  subtitle: Text(
                    "${chat[index]}",
                    style: TextStyle(color: Color(0xffa1a1a1)),
                  ),
                  trailing: Text(
                    '${time[index]}',
                    style: TextStyle(color: Color(0xffa1a1a1)),
                  ),
                );
              })),
    );
  }
}
