import 'package:flutter/material.dart';

class NewsFeedCard extends StatelessWidget {
  NewsFeedCard({
    Key? key,
    required this.width,
    required this.name,
    required this.circleimage,
    required this.time,
  }) : super(key: key);

  final double width;
  String name;
  String circleimage;
  String time;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Row(
            children: [
              const CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage("assets/image1.jpg"),
              ),
              SizedBox(
                width: width * 0.05,
              ),
              Text(
                name,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Spacer(),
              Text(time),
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Image(
            image: AssetImage(circleimage),
            fit: BoxFit.fill,
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Text(
            "Light of a Ferrari 458 in the streets of London. Look at this is amazing",
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Divider(
          height: 5,
          thickness: 4,
          color: Colors.grey[200],
        ),
      ],
    );
  }
}
