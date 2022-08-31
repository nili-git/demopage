import 'package:flutter/material.dart';

class ClipCard extends StatelessWidget {
  ClipCard({
    Key? key,
    required this.color,
    required this.name,
    required this.icon,
    this.textcolor,
    this.circlecolor,
  }) : super(key: key);

  Color color;
  String name;
  IconData icon;
  Color? textcolor;
  Color? circlecolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 25,
      width: MediaQuery.of(context).size.width / 3.6,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 15,
            backgroundColor: circlecolor,
            child: Icon(icon, size: 18, color: Colors.white),
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            name,
            style: TextStyle(
                color: textcolor, fontSize: 12, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
