import 'dart:html';
import 'dart:math';
import 'dart:ui' as ui;

import 'package:dev_portfolio/models/image_url.dart';
import 'package:dev_portfolio/presentation/about_panel/about_panel_screen.dart';
import 'package:dev_portfolio/presentation/projects_panel/Widgets/custom_divider.dart';
import 'package:dev_portfolio/presentation/projects_panel/project_panel.dart';
import 'package:dev_portfolio/presentation/qualification_page/Widgets/qualifications_header.dart';
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
  Widget _iFrameWidget;
  final IFrameElement _iFrameElement = new IFrameElement();
  bool _mapLoaded = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    if (!_mapLoaded) {
      _iFrameElement.height =
          (MediaQuery.of(context).size.height * 0.5).toString();
      _iFrameElement.width = (MediaQuery.of(context).size.width).toString();
      _iFrameElement.src =
          "https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14975.807689257574!2d85.7357383!3d20.2193188!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xc81fc475faa77274!2sC.%20V.%20Raman%20Global%20University!5e0!3m2!1sen!2sin!4v1592023308528!5m2!1sen!2sin";
      _iFrameElement.style.border = 'none';

      // Ignore this issuse .
      ui.platformViewRegistry.registerViewFactory(
        'iframeElement',
        (int viewId) => _iFrameElement,
      );

      _iFrameWidget = HtmlElementView(
        key: UniqueKey(),
        viewType: 'iframeElement',
      );

      _mapLoaded = true ;
    }

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
                    Project_panel(screenHeight: screenHeight),
                    Container(
                      height: screenHeight * 1,
                      child: Column(
                        children: [
                          Qualifications_head(screenHeight: screenHeight),
                          Custom_divider(),
                          Expanded(
                              child: Container(
                            color: Colors.red,
                          )),
                          Expanded(
                              child: Container(
                            color: Colors.purple,
                          )),
                          Expanded(
                              child: Container(
                            color: Colors.red,
                          )),
                        ],
                      ),
                    ),
                    Map_address(
                        screenHeight: screenHeight, iFrameWidget: _iFrameWidget)
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
