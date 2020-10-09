import 'package:flutter/material.dart';
import 'package:youtube_app/videl_detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.videocam),
          title: Text(
              'kbyのflutter大学'
          ),
          actions: <Widget>[
            SizedBox(
              width: 36,
              child: FlatButton(
                child: Icon(Icons.search),
                onPressed: () {
                  // todo
                },
              ),
            ),
            SizedBox(
              width: 36,
              child: FlatButton(
                child: Icon(Icons.more_vert),
                onPressed: () {
                  // todo
                },
              ),
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.network(
                      'https://pbs.twimg.com/profile_images/1269267428476719106/6yYseCYR_400x400.jpg',
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    children: <Widget>[
                      const Text(
                        'kboyのflutter大学',
                      ),
                      FlatButton(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.video_call,
                              color: Colors.red,
                            ),
                            Text('登録する'),
                          ],
                        ),
                        onPressed: () {
                          //todo
                        },
                      )
                    ],
                  )
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () async {
                        // todo: 画面遷移
                        await Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => VideoDetailPage()
                            ),
                          );


                      },
                      contentPadding: EdgeInsets.all(8),
                      leading: Image.network(
                          'https://i.ytimg.com/vi/PXnqg_Ozouk/hqdefault.jpg?sqp=-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE=&rs=AOn4CLAmjUdKEw-jfDH8nwyy3_F1VMXlfw'
                      ),
                      title: Column(
                        children: <Widget>[
                          Text(
                              'flutter超入門',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Row(
                        children: <Widget>[
                          Text(
                              '267回再生',
                            style: TextStyle(fontSize: 13),
                          ),
                          Text('5日間'),
                        ],
                      ),
                      ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    );
                  },
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}




