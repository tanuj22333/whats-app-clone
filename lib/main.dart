import 'package:flutter/material.dart';

import 'chatScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: new Color(0xff075E54),
        accentColor: new Color(0xff25D366),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
            child: Icon(
              Icons.message,
              color: Colors.white,
            ),
            onPressed: () {
              print("fab click");
            }),
        appBar: AppBar(
          elevation: 2,
          title: Text("WhatsApp"),
          bottom: TabBar(indicatorColor: Colors.white, tabs: [
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: "CHATS"),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            ),
          ]),
          actions: <Widget>[
            Icon(Icons.search),
            SizedBox(
              width: 8,
            ),
            Icon(Icons.more_vert),
          ],
        ),
        body: new TabBarView(
          children: <Widget>[
            Icon(Icons.directions_bike),
            ChatScreen(),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
