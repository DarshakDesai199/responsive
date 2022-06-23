import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Mobile extends StatefulWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  List panel = ["Cases", "Services", "About Us", "Careers", "Blog", "Contact"];
  var selected = 0;
  List details = [
    {
      "date": "23 September 2020",
      'image': "assets/0.png",
      "title":
          "How Ireland’s biggest bank executed a comp lete security redesign",
      "description":
          "Mobile banking has seen a huge increase since Coronavirus. In fact, CX platform Lightico found that 63 percent of people surveyed said they were more willing to try a new digital banking app than before the pandemic.So while you may be more inclined to bank remotely these days, cybercrime—especially targeting banks—is on the rise.",
    },
    {
      "date": "21 August  2020",
      "image": "assets/1.png",
      "title": "5 Examples of Web Motion Design That Really Catch Your Eye",
      "description":
          "Web animation has become one of the most exciting web design trends in 2020. It breathes more life into a website and makes user interactions even more appealing and intriguing. Animation for websites allows introducing a brand in an exceptionally creative way in modern digital space. It helps create a lasting impression, make a company",
    },
    {
      "date": "23 September 2020",
      "image": 'assets/2.png',
      "title": "The Principles of Dark UI Design",
      "description":
          "Mobile banking has seen a huge increase since Coronavirus. In fact, CX platform Lightico found that 63 percent of people surveyed said they were more willing to try a new digital banking app than before the pandemic.So while you may be more inclined to bank remotely these days, cybercrime—especially targeting banks—is on the rise.",
    },
  ];

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
            MobilePanel(h, w),
            Padding(
              padding: EdgeInsets.all(0.03 * h),
              child: MobileBlogPost(h, w),
            )
          ],
        ),
      ),
    );
  }

  MobileBlogPost(double h, double w) {
    return Column(
      children: [
        ...List.generate(
            details.length,
            (index) => Column(
                  children: [
                    Image.asset("${details[index]['image']}"),
                    Padding(
                      padding: EdgeInsets.only(bottom: 0.03 * h),
                      child: Container(
                        padding: EdgeInsets.all(0.027 * h),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(right: 0.004 * w),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "design".toUpperCase(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14),
                                  ),
                                  SizedBox(
                                    width: 0.02 * w,
                                  ),
                                  Text(
                                    "${details[index]['date']}",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 13),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 0.04 * h,
                              ),
                              Text(
                                "${details[index]['title']}",
                                style: TextStyle(
                                    fontSize: 32,
                                    height: 1.3,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Raleway"),
                              ),
                              SizedBox(
                                height: 0.04 * h,
                              ),
                              Text(
                                "${details[index]['description']}",
                                maxLines: 4,
                                style: TextStyle(
                                    height: 1.5, color: Colors.grey.shade700),
                              ),
                              SizedBox(
                                height: 0.04 * h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                            width: 3.5, color: Colors.red),
                                      ),
                                    ),
                                    child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Read More",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500),
                                        )),
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 0.007 * w),
                                        child: SvgPicture.asset(
                                            "assets/feather_thumbs-up.svg"),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 0.007 * w),
                                        child: SvgPicture.asset(
                                            "assets/feather_message-square.svg"),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 0.007 * w),
                                        child: SvgPicture.asset(
                                            "assets/feather_share-2.svg"),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 0.01 * h,
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )),
      ],
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

  Container MobilePanel(double h, double w) {
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
                ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: EdgeInsets.symmetric(
                        vertical: 0.020 * h, horizontal: 0.065 * w),
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
            ),
          ),
          SizedBox(
            height: h * 0.055,
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
                fontSize: 14,
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
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
