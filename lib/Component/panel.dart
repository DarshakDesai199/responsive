import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Panel extends StatefulWidget {
  const Panel({Key? key}) : super(key: key);

  @override
  State<Panel> createState() => _PanelState();
}

class _PanelState extends State<Panel> {
  List panel = ["Cases", "Services", "About Us", "Careers", "Blog", "Contact"];
  var selected = 0;
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
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
                SvgPicture.asset('assets/logo.svg'),
                Row(
                  children: [
                    ...List.generate(
                      panel.length,
                      (index) => Padding(
                        padding: EdgeInsets.symmetric(horizontal: 13),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              selected = index;
                            });
                          },
                          onHover: (value) {
                            setState(() {
                              isHover = value;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: selected == index
                                        ? Colors.red
                                        : Colors.transparent,
                                    width: 2),
                              ),
                            ),
                            child: Text(
                              "${panel[index]}",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: selected == index ? 17 : 15),
                            ),
                          ),
                        ),
                      ),
                    )
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
                                vertical: 0.025 * h, horizontal: 0.025 * w)),
                        onPressed: () {},
                        child: Text(
                          "Let's Talk",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
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
            children: [
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
