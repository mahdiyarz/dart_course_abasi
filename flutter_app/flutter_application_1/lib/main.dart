import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

// import 'integer_stream.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future dollarPrice() {
    return Future.delayed(
      const Duration(seconds: 2),
      () => dollarAPI(),
    );
  }

  String arrangeMap(Map theMap, String searchText) {
    for (var thisJson in theMap.values) {
      return thisJson[searchText];
    }
    return 'Not Found';
  }

  Future dollarAPI() async {
    final http.Response response = await http.post(
      Uri.parse(
          'http://api.navasan.tech/latest/?api_key=free3HSIkITicxJLc7c38A98JrEYslzu&item=usd_buy'),
    );
    var json = jsonDecode(response.body);
    return arrangeMap(json, 'value');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: FutureBuilder(
          future: dollarPrice(),
          initialData: 'Waiting...',
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data as String);
            } else {
              return Text(snapshot.error as String);
            }
          },
        ),
      ),
    )
        //   StreamBuilder(
        // initialData: 'wait...',
        // stream: IntegerStream().stream,
        // builder: (context, snapshot) {
        //   if (snapshot.hasData) {
        //     return Text(snapshot.data as String);
        //   } else {
        //     return Text('Error: ${snapshot.error}');
        //   }
        // },
        // )
        );
  }
}
