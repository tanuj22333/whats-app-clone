import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 120,
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              ListTile(
                leading: CircleAvatar(
                  child: Image.network(""),
                  backgroundColor: Colors.grey,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Mary Com",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "12:12",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    )
                  ],
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
                  child: Text("Some message here"),
                ),
              ),
              Divider(
                height: 10,
              ),
            ],
          );
        });
  }
}
