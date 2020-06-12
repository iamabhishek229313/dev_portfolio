import 'dart:math';

import 'package:dev_portfolio/models/image_url.dart';
import 'package:dev_portfolio/presentation/about_panel/about_panel_screen.dart';
import 'package:dev_portfolio/presentation/projects_panel/project_panel.dart';
import 'package:dev_portfolio/utils/colors.dart';
import 'package:dev_portfolio/utils/screen_height_widget.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

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
                    Project_panel(screenHeight: screenHeight)
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

