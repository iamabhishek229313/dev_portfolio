import 'dart:math';

import 'package:dev_portfolio/presentation/about_panel/about_panel_screen.dart';
import 'package:dev_portfolio/utils/colors.dart';
import 'package:dev_portfolio/utils/screen_height_widget.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: BgColor,
      appBar: AppBar(
        backgroundColor: BgColor,
        elevation: 0.0,
        title: Text(
          "Abhishek",
          style: TextStyle(fontSize: 24.0, color: White, fontFamily: 'Varela'),
        ),
        actions: [
          Container(
            width: MediaQuery.of(context).size.width * 0.25,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Projects",
                  style: TextStyle(fontSize: 18.0),
                ),
                Spacer(),
                Text("Reviews", style: TextStyle(fontSize: 18.0)),
                Spacer(),
                Text("Contact", style: TextStyle(fontSize: 18.0)),
                SizedBox(width: 30.0)
              ],
            ),
          ),
        ],
      ),
      body: ListView(physics: BouncingScrollPhysics(), children: [
        Container(
          height: screenHeight * 5, // Height of entire Container .
          child: Row(
            children: [
              Expanded(
                // The main Carousel .
                flex: 12,
                child: Column(
                  children: [
                    About_panel(
                        screenHeight: screenHeight, screenWidth: screenWidth),
                    Container(
                      height: screenHeight * 2,
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            height: screenHeight * 0.1,
                            margin: const EdgeInsets.only(left: 150),
                            child: Text(
                              "Projects",
                              style: TextStyle(
                                  fontSize: 44.0,
                                  fontFamily: 'Cairo',
                                  color: Colors.grey,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                          Container(
                              height: screenHeight * 0.7,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    height: screenHeight * 0.1,
                                    margin: const EdgeInsets.only(left: 150),
                                    child: Text(
                                      "Tinder clone",
                                      style: TextStyle(
                                        fontSize: 44.0,
                                        fontFamily: 'Cairo',
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: screenHeight * 0.6,
                                    child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: 10,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return Container(
                                            width: 500.0,
                                            margin:index == 0 ?  const EdgeInsets.only(
                                                left: 160.0) :const EdgeInsets.symmetric(
                                                horizontal: 10.0),
                                            color: Colors.red,
                                          );
                                        }),
                                  )
                                ],
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              new Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: List.generate(
                        (screenHeight * 4 / 40.0).floor(),
                        (index) => Text(
                              "|",
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold),
                            )),
                  ))
            ],
          ),
        ),
      ]),
    );
  }
}
