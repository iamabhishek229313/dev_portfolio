import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Animated_text_wrap extends StatelessWidget {
  const Animated_text_wrap({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 150.0),
          TypewriterAnimatedTextKit(
            speed: Duration(milliseconds : 200),
            isRepeatingAnimation: true,
            totalRepeatCount: 5,
            onTap: () {
              print("Tap Event");
            },
            text: ["Even this portfolio is made with Flutter.💙"],
            textStyle: TextStyle(fontSize: 70.0, fontFamily: "BioRhyme" , color: Colors.grey),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
