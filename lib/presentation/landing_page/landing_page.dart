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
      body: Row(
        children: [
          new Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
                children: ["A", "b", "h", "i", "s", "h", "e", "k"]
                    .map((e) => TransalteContainer(
                            child: Text(
                          e,
                          style: TextStyle(
                              fontSize: 32.0,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'BioRhyme'),
                        )))
                    .toList()),
          ),
          new Expanded(
              child: Center(
            child: Image(
                height: screenHeight,
                width: screenWidth * 0.45,
                fit: BoxFit.contain,
                image: AssetImage('assets/images/Portfolio_image_final.jpg')),
          ))
        ],
      ),
    );
  }
}

class TransalteContainer extends StatefulWidget {
  final Widget child;

  const TransalteContainer({Key key, this.child}) : super(key: key);

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
