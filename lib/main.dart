import 'package:flutter/material.dart';
import 'package:hw7_navigation_app/ThirdPage.dart';
import 'package:hw7_navigation_app/home_page.dart';

import 'not_found_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (BuildContext context){
          return NotFoundPage();
        });
      },
      title: 'Flutter Demo',
      routes: {
        '/third_page': (BuildContext context) => ThirdPage()
      },
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}


