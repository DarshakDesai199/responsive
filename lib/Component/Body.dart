import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive/Component/Blog%20Post.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List categories = [
    "Artificial Intelligences (3)",
    "Augmented reality (4)",
    "Development (10)",
    "Flutter UI (18)",
    "Technology (12)",
    "UI/UX Design (8)"
  ];
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        BlogPost(),
        SizedBox(
          width: w * 0.02,
        ),
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(0.025 * h),
                width: w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Column(children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Search",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    height: 0.01 * h,
                  ),
                  TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      hintText: "Type Here....",
                      suffixIconConstraints:
                          BoxConstraints(maxHeight: 0.1 * h, maxWidth: 0.1 * h),
                      suffixIcon: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: SvgPicture.asset(
                          "assets/feather_search.svg",
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black)),
                    ),
                  )
                ]),
              ),
              SizedBox(
                height: 0.03 * h,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 0.025 * w, vertical: 0.025 * h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Categories",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      height: 0.03 * h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0.02 * h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...List.generate(
                            categories.length,
                            (index) => Column(
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "${categories[index]}",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 0.015 * h,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 0.03 * h,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 0.025 * w, vertical: 0.027 * h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Recent Post",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      height: 0.02 * h,
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 4, child: Image.asset("assets/recent_1.png")),
                        SizedBox(
                          width: 0.015 * w,
                        ),
                        Expanded(
                          flex: 9,
                          child: InkWell(
                            onTap: () {},
                            child: Text(
                              "Our “Secret” Formula to Online Workshops",
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "Raleway",
                                  fontWeight: FontWeight.w700,
                                  height: 1.5),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 0.02 * h,
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 4, child: Image.asset("assets/recent_2.png")),
                        SizedBox(
                          width: 0.015 * w,
                        ),
                        Expanded(
                          flex: 9,
                          child: InkWell(
                            onTap: () {},
                            child: Text(
                              "Digital Product Innovations from Warsaw with Love",
                              maxLines: 2,
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Raleway",
                                  fontSize: 14,
                                  height: 1.5),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
