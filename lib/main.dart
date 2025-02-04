import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text(
            'ほし@Flutter大学',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://ca.slack-edge.com/T012UQWDRQC-U08B9L4FKL5-b2942bbd04b7-512'),
                      radius: 120.0,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'hoshility',
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const SizedBox(
                      child: Text(
                        'あのイーハトーヴォのすきとおった風、夏でも底に冷たさをもつ青いそら、うつくしい森で飾られたモリーオ市、郊外のぎらぎらひかる草の波。',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        softWrap: true,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class XTimeline extends StatelessWidget {
  const XTimeline({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TweetTile(),
          TweetTile(),
          TweetTile(),
          TweetTile(),
          TweetTile(),
          TweetTile(),
          TweetTile(),
          TweetTile(),
          TweetTile(),
          TweetTile(),
        ],
      ),
    );
  }
}

class TweetTile extends StatelessWidget {
  const TweetTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://ca.slack-edge.com/T012UQWDRQC-U08B9L4FKL5-b2942bbd04b7-512'),
          ),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('hoshility@Flutter大学'),
                  SizedBox(
                    width: 8,
                  ),
                  Text('2025/02/04'),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Text('最高でした。'),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
