import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BlogPost extends StatefulWidget {
  const BlogPost({Key? key}) : super(key: key);

  @override
  State<BlogPost> createState() => _BlogPostState();
}

class _BlogPostState extends State<BlogPost> {
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
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Expanded(
      flex: 4,
      child: Column(
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
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
      ),
    );
  }
}
