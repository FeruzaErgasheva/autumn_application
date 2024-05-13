import 'package:flutter/material.dart';

class OctoberCard extends StatelessWidget {
  const OctoberCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
          border: BorderDirectional(
              bottom: BorderSide(width: 0.1, color: Colors.black))),
      child: ListTile(
        leading: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 248, 218, 153),
              borderRadius: BorderRadius.circular(20)),
          child: Image.asset(
            "assets/card1.png",
            width: 40,
            height: 40,
          ),
        ),
        title: Text(
          "Thanksgiving",
          style: TextStyle(fontWeight: FontWeight.w100, fontSize: 13),
        ),
        subtitle: Text(
          "\$ 174.99",
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.blueGrey.shade300),
              padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
              child: Text(
                "View",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
