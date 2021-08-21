import 'dart:ui';

import 'package:clone_youtube_practice/detail_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ListPage(),
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
    );
  }
}

class ListPage extends StatelessWidget {
  final items = List<String>.generate(100, (index) => "Items $index");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.videocam,
          color: Colors.redAccent[700],
        ),
        centerTitle: false,
        title: Text(
          'Clone Youtube App',
        ),
        automaticallyImplyLeading: true,
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
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: Image.asset('images/logo.png'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      const Text(
                        'Chirs Haria',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.redAccent[700],
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(Icons.video_call),
                            Padding(padding: EdgeInsets.only(right: 5)),
                            Text('登録する'),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Image.asset('images/logo.png'),
                      title: Text('Title $index'),
                      subtitle: Text('subtitle $index'),
                      trailing: Icon(Icons.more_vert),
                      enabled: true,
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
