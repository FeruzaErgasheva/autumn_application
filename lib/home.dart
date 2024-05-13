import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lesson34_homework/components/schedule_card.dart';
import 'package:lesson34_homework/peron_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              color: Colors.yellow,
              width: double.infinity,
              height: 400,
              child: Image.asset(
                "assets/bg.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 330,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 241, 93, 34),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                width: 500,
                height: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Autumn day",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Hello Jack",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              letterSpacing: 1.2,
                              fontSize: 16),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PersonPage(),
                                ));
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 252, 59),
                                borderRadius: BorderRadius.circular(20)),
                            child: Image.asset(
                              "assets/hacker.png",
                              width: 35,
                              height: 35,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.more_vert_rounded,
                          color: Colors.white,
                          size: 30,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 450,
              child: Container(
                padding: EdgeInsets.only(left: 40, right: 40, top: 60),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                width: 500,
                height: 500,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 248, 218, 153),
                                borderRadius: BorderRadius.circular(20)),
                            child: Image.asset(
                              "assets/card1.png",
                              width: 50,
                              height: 40,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 248, 182, 188),
                                borderRadius: BorderRadius.circular(20)),
                            child: Image.asset(
                              "assets/card2.png",
                              width: 50,
                              height: 40,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(167, 184, 255, 251),
                                borderRadius: BorderRadius.circular(20)),
                            child: Image.asset(
                              "assets/card3.png",
                              width: 50,
                              height: 40,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 248, 207, 153),
                                borderRadius: BorderRadius.circular(20)),
                            child: Image.asset(
                              "assets/card4.png",
                              width: 50,
                              height: 40,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      RichText(
                        text: TextSpan(
                            text: "Day",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 26,
                                color: Colors.black),
                            children: [
                              TextSpan(
                                  text: "  Schedule",
                                  style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.w200))
                            ]),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ScheduleCard(),
                            ScheduleCard(),
                            ScheduleCard(),
                            ScheduleCard()
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
