import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        initialData: 'Waiting...',
        future: Future.delayed(const Duration(seconds: 4), () => 'Hello World'),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Text(snapshot.data as String);
          } else {
            return Text(snapshot.error as String);
          }
        },
      ),
    );
  }
}
