import 'package:flutter/material.dart';
import 'package:htonline/navigator/tab_navigater.dart';
import 'package:htonline/pages/login/login_page.dart';
import 'package:htonline/utils/sputils.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '华图在线',
      theme: ThemeData(
          primaryColor: Colors.white,
      ),
      home: TabNavigator(),
    );
  }
}
