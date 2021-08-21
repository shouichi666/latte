import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final items = List<String>.generate(100, (index) => "Items $index");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: false,
        title: Row(
          children: [
            Icon(
              Icons.videocam,
              color: Colors.redAccent[700],
            ),
            Padding(padding: EdgeInsets.all(3)),
            Text("Create YoutubeApp")
          ],
        ),
        actions: [
          SizedBox(
            width: 40,
            height: 40,
            child: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ),
          SizedBox(
            width: 40,
            child: IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Container(),
    );
  }
}
