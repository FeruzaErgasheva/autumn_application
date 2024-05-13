import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  const ScheduleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            width: 120,
            height: 140,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Image.network(
              "https://koala.sh/api/image/v2-130zr-0q9xf.jpg?width=832&height=1216&dream",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Wedding",
            style: TextStyle(
                fontWeight: FontWeight.w600, letterSpacing: 0.9, fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          RichText(
            text: TextSpan(
              text: "03:50",
              style:
                  TextStyle(fontWeight: FontWeight.w300, color: Colors.black),
              children: [
                TextSpan(
                  text: "  Time",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 10,
                      color: Colors.black),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
