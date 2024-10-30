import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Container onPressed Example')),
        body: Center(
          child: InkWell(
            onTap: () {
              // Action when the container is tapped
              print('Container tapped!');
            },
            child: Container(
              height: 100,
              width: 200,
              color: Colors.blue,
              alignment: Alignment.center,
              child: const Text(
                'Tap Me',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
