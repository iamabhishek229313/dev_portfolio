import 'dart:html';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:dev_portfolio/models/image_url.dart';
import 'package:dev_portfolio/presentation/about_panel/about_panel_screen.dart';
import 'package:dev_portfolio/presentation/projects_panel/Widgets/custom_divider.dart';
import 'package:dev_portfolio/presentation/projects_panel/project_panel.dart';
import 'package:dev_portfolio/presentation/qualification_page/Widgets/qualifications_header.dart';
import 'package:dev_portfolio/presentation/qualification_page/qualification_page.dart';
import 'package:dev_portfolio/utils/colors.dart';
import 'package:dev_portfolio/utils/map_address.dart';
import 'package:dev_portfolio/utils/screen_height_widget.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  bool _mapLoaded;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    print("Landing page constructor is called with Widget build ");
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
          height: screenHeight * 8, // Height of entire Container .
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Row(
                  children: [
                    // The main Carousel .
                    Expanded(
                      flex: 12,
                      child: Column(
                        children: [
                          About_panel(
                              screenHeight: screenHeight,
                              screenWidth: screenWidth),
                          Project_panel(screenHeight: screenHeight),
                          // Qualification_panel(screenHeight: screenHeight),
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
              // Map_address(
              //   screenHeight: screenHeight,
              //   screenWidth: screenWidth,
              // ),
              Container(
                height: screenHeight * 0.5,
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 100.0, vertical: 30.0),
                  child: Column(
                    children: [
                      Divider(color:Colors.grey , height: 5.0 ,thickness: 2.0,),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                                child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 50.0),
                              child: Column(
                                children: [
                                  Container(
                                    height: screenHeight * 0.08,
                                    color: Colors.indigo,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        new Text(
                                          "Contact",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30.0,
                                              fontFamily: 'Cairo'),
                                        ),
                                        SizedBox(width: 20.0),
                                        new Text(
                                          "Abhishek",
                                          style: TextStyle(
                                              fontSize: 44.0,
                                              color: Colors.red,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'BioRhyme'),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )),
                            Expanded(
                                child: Container(
                              color: Colors.amber,
                            ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
