import 'package:flutter/material.dart';

class StoriesCard extends StatelessWidget {
  const StoriesCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 6,
            width: MediaQuery.of(context).size.width / 3.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: Colors.blue,
              image: const DecorationImage(
                  image: AssetImage("assets/image2.jpg"), fit: BoxFit.cover),
            ),
            child: Stack(
              children: const [
                Positioned(
                  right: 36,
                  bottom: -10,
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 14,
                      backgroundImage: AssetImage("assets/image1.jpg"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text("Laura Laporic"),
        ],
      ),
    );
  }
}
