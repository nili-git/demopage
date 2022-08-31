import 'package:demopage/constants/colors.dart';
import 'package:demopage/view/widget/clipcard_widget.dart';
import 'package:demopage/view/widget/news_feed_card_widget.dart';
import 'package:demopage/view/widget/storiescard_widget.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 20,
                    left: 20,
                    top: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "facebook",
                        style: TextStyle(
                            color: Colors.blue[600],
                            fontSize: 22,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w800),
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.grey[400],
                            child: const Icon(
                              Icons.search,
                              size: 15,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.redAccent[400],
                            child: const Icon(
                              Icons.notifications,
                              size: 13,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Stack(
                            children: const [
                              CircleAvatar(
                                radius: 12,
                                backgroundColor:
                                    Color.fromRGBO(130, 190, 250, 1),
                                child: Icon(
                                  Icons.people,
                                  size: 13,
                                  color: Colors.white,
                                ),
                              ),
                              Positioned(
                                top: -1,
                                left: 16,
                                child: CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 3,
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.grey[400],
                            child: const Icon(
                              Icons.messenger,
                              size: 13,
                              color: Colors.white,
                            ),
                          ),
                          // CircleAvatar(
                          //   radius: 12,
                          //   backgroundColor: Colors.grey[400],
                          //   backgroundImage:
                          //       const AssetImage("assets/messenger_png.png",
                          //     ),

                          // ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Row(
                  children: [
                    const CircleAvatar(
                        radius: 24,
                        backgroundImage: AssetImage("assets/image1.jpg")),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    const Text(
                      "What's on your mind, Lisa?",
                      style: TextStyle(color: Colors.grey, wordSpacing: 1),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
                child: Row(
                  children: [
                    ClipCard(
                      color: lightgreen,
                      name: "Gallery",
                      icon: Icons.image_rounded,
                      textcolor: Colors.lightGreen[500],
                      circlecolor: Colors.lightGreen[400],
                    ),
                    SizedBox(width: width * 0.03),
                    ClipCard(
                      name: "Tag Friends",
                      color: lightblue,
                      icon: Icons.people,
                      textcolor: const Color.fromRGBO(130, 190, 250, 1),
                      circlecolor: const Color.fromRGBO(130, 190, 250, 1),
                    ),
                    SizedBox(width: width * 0.03),
                    ClipCard(
                      name: "Live",
                      color: lightamber,
                      icon: Icons.video_call,
                      textcolor: const Color.fromRGBO(230, 150, 115, 1),
                      circlecolor: const Color.fromRGBO(230, 150, 115, 1),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 4,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, index) {
                      return const StoriesCard();
                    }),
              ),
              Divider(
                thickness: 4,
                color: Colors.grey[200],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (BuildContext context, index) {
                      return NewsFeedCard(
                        width: width,
                        name: "Mathilda Rebus",
                        time: "8 min",
                        circleimage: "assets/image2.jpg",
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
