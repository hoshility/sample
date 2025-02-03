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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
