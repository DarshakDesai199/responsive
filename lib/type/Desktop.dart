import 'package:flutter/material.dart';
import 'package:responsive/Component/Body.dart';
import 'package:responsive/Component/panel.dart';

class Desktop extends StatefulWidget {
  const Desktop({Key? key}) : super(key: key);

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Panel(),
              SizedBox(
                height: 0.006 * h,
              ),
              Container(
                padding: EdgeInsets.all(20),
                constraints: BoxConstraints(maxWidth: 1232),
                child: Body(),
              ),
              SizedBox(
                height: 0.6 * h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
