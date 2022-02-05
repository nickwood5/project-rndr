import 'package:flutter/material.dart';
import 'RNDR.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// hi
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const MyHomePage(title: 'RNDR'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

Future<String> getData() async {
  final response =
      await http.get(Uri.parse('http://nickwood5.pythonanywhere.com'));

  var responseData = json.decode(response.body);
  print(responseData);

  return responseData['name'];
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(child: RNDR()),
    );
  }
}
