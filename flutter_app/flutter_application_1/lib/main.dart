import 'package:flutter/material.dart';

import 'integer_stream.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder(
      initialData: 'wait...',
      stream: IntegerStream().stream,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text(snapshot.data as String);
        } else {
          return Text('Error: ${snapshot.error}');
        }
      },
    ));
  }
}
