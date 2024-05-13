import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            width: 150,
            height: 150,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRF7JH8rte-BFR3jPX9wL5UyFULaKU8z8RTitLUM_5gtw&s",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Birthdays",
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 12),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
