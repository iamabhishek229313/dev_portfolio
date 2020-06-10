import 'dart:math';

import 'package:dev_portfolio/utils/colors.dart';
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
                    ScreenHeightWidget(
                      child: Row(
                        children: [
                          new Expanded(
                            flex: 2,
                              child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 50),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Wrap(
                                      runAlignment: WrapAlignment.center,
                                      children: [
                                        "I'm ",
                                        "an ",
                                        "app ",
                                        "developer ",
                                        "and ",
                                        "a ",
                                        "freelancer."
                                      ]
                                          .map((e) => EachString(
                                                text: e,
                                              ))
                                          .toList()),
                                ),
                                Expanded(
                                  child: Wrap(
                                    runAlignment: WrapAlignment.center,
                                    children: [
                                      Text(
                                        "```\nHi! I'm Abhishek Kumar, a Flutter Developer living in Bhubaneswar, India.A flutter/Dart enthusiast who loves contributing to open source community.\n\n```",
                                        style: TextStyle(
                                            fontFamily: 'FiraCode',
                                            fontSize: 24.0,
                                            fontWeight: FontWeight.w200,
                                            color: Colors.blueGrey.shade50),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )),
                          new Expanded(
                              child: Center(
                            child: Image(
                                height: screenHeight,
                                width: screenWidth * 0.45,
                                fit: BoxFit.contain,
                                image: AssetImage(
                                    'assets/images/Portfolio_image_final.jpg')),
                          )),
                        ],
                      ),
                    ),
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
                                  fontSize: 40.0, fontWeight: FontWeight.bold),
                            )),
                  ))
            ],
          ),
        ),
      ]),
    );
  }
}

class EachString extends StatefulWidget {
  final String text;

  const EachString({Key key, @required this.text}) : super(key: key);

  @override
  _EachStringState createState() => _EachStringState();
}

class _EachStringState extends State<EachString> {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
          widget.text.length,
          (index) => TransalteContainer(
            child: Text(
              widget.text[index],
              style: TextStyle(
                  color: widget.text == "I'm " ? Colors.red : Colors.grey,
                  fontSize: 44.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'BioRhyme'),
            ),
          ),
        ));
  }
}

class TransalteContainer extends StatefulWidget {
  final Widget child;

  const TransalteContainer({Key key, @required this.child}) : super(key: key);

  @override
  _TransalteContainerState createState() => _TransalteContainerState();
}

class _TransalteContainerState extends State<TransalteContainer> {
  final onHoverTranslate = Matrix4.identity()..translate(0, -10, 0);
  final onNonHoverTranslate = Matrix4.identity()..translate(0, 0, 0);

  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (e) => _mouseEnter(true),
        onExit: (e) => _mouseEnter(false),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          child: widget.child,
          transform: _hovering ? onHoverTranslate : onNonHoverTranslate,
        ));
  }

  _mouseEnter(bool val) {
    setState(() {
      _hovering = val;
    });
  }
}

class ScreenHeightWidget extends StatelessWidget {
  final Widget child;

  const ScreenHeightWidget({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: child,
    );
  }
}
