import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:test/home_page/home_page_widget.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/internationalization.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'test.dart';

void getApiData() async {
  var client = new http.Client();
  try {
    final response =
        await client.get(Uri.parse('http://nickwood5.pythonanywhere.com'));
    var responseData = json.decode(response.body);
    for (int i = 0; i < 10; i++) {
      String url = responseData[i]['img_link'];
      print(url);
      urls.add(url);
    }
  } finally {
    client.close();
  }
}

void main() async {
  getApiData();
  print("Hello");
  print(urls);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>();
}

class _MyAppState extends State<MyApp> {
  Locale _locale;

  void setLocale(Locale value) => setState(() => _locale = value);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'test',
      localizationsDelegates: [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: const [Locale('en', '')],
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePageWidget(),
    );
  }
}
