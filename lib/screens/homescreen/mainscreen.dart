import 'package:flutter/material.dart';
import 'package:whatsapp/screens/homescreen/callScreen.dart';
import 'package:whatsapp/screens/homescreen/chatScreen.dart';
import 'package:whatsapp/screens/homescreen/statusScreen.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({Key? key}) : super(key: key);

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
          child: Scaffold(
        backgroundColor: Color(0xff383838),
        appBar: AppBar(
          elevation: 00,
          backgroundColor: Color(0xff383838),
          title: Text(
            'Whatsapp',
            style: TextStyle(
                color: Color(0xff3eccff),
                fontWeight: FontWeight.w500,
                fontSize: 25),
          ),bottom: TabBar(indicatorColor: Color(0xff3eccff),tabs: [
          Tab(
            child: Text("Chat",style: TextStyle(color: Color(0xff3eccff),),),
          ),
          Tab(
            child: Text("Status",style: TextStyle(color: Color(0xff3eccff),),),
          ),
          Tab(
            child: Text("Calls",style: TextStyle(color: Color(0xff3eccff),),),
          ),
        ]),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.search,
                color: Color(0xff3eccff),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.more_vert_rounded,
                color: Color(0xff3eccff),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(child: TabBarView(children: [Chatscrren(),Statusscreen(),Callscreen(),])),
          ],
        ),
      )),
    );
  }
}
