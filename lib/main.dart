import 'package:flutter/material.dart';
import 'package:responsive/type/Desktop.dart';
import 'package:responsive/type/Mobile.dart';
import 'package:responsive/type/Tablet.dart';
import 'package:responsive/view/responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Responsive(
        mobile: Mobile(),
        desktop: Desktop(),
        tablet: Tablet(),
      ),
    );
  }
}
