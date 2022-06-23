import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive/Component/Body.dart';

class Tablet extends StatefulWidget {
  const Tablet({Key? key}) : super(key: key);

  @override
  State<Tablet> createState() => _TabletState();
}

class _TabletState extends State<Tablet> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  List panel = ["Cases", "Services", "About Us", "Careers", "Blog", "Contact"];
  var selected = 0;

  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      key: _scaffoldKey,
      drawer: drawer(h, w),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TabletPanel(h, w),
            Padding(
              padding: EdgeInsets.all(0.03 * h),
              child: Body(),
            )
          ],
        ),
      ),
    );
  }

  Drawer drawer(double h, double w) {
    return Drawer(
      backgroundColor: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 0.1 * h,
          ),
          Center(child: SvgPicture.asset("assets/logo.svg")),
          SizedBox(
            height: 0.1 * h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.03 * w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...List.generate(
                  panel.length,
                  (index) => Padding(
                    padding: EdgeInsets.symmetric(vertical: 0.025 * h),
                    child: Text(
                      "${panel[index]}",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Container TabletPanel(double h, double w) {
    return Container(
      width: double.infinity,
      color: Colors.black,
      child: Column(
        children: [
          SizedBox(
            height: h * 0.04,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            constraints: BoxConstraints(maxWidth: 1232),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        _scaffoldKey.currentState!.openDrawer();
                      },
                      icon: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                    SvgPicture.asset('assets/logo.svg'),
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset("assets/behance-alt.svg"),
                    SizedBox(
                      width: 8,
                    ),
                    SvgPicture.asset("assets/feather_dribbble.svg"),
                    SizedBox(
                      width: 8,
                    ),
                    SvgPicture.asset("assets/feather_twitter.svg"),
                    SizedBox(
                      width: 15,
                    ),
                    ElevatedButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                        padding: EdgeInsets.symmetric(
                            vertical: 0.025 * h, horizontal: 0.032 * w),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Let's Talk",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: h * 0.06,
          ),
          Text(
            "Welcome to Our Blog",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.w600),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Stay updated with the newest design and development stories, case studies, \nand insights shared by DesignDK Team.",
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1.5,
                fontFamily: "Raleway",
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Learn More   ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.white,
                size: 20,
              )
            ],
          ),
          SizedBox(
            height: h * 0.05,
          ),
        ],
      ),
    );
  }
}
