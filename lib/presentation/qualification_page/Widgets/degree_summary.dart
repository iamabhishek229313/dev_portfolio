import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Degree_summary extends StatelessWidget {
  final String degreeSummary;
  const Degree_summary({Key key, @required this.degreeSummary})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        new SizedBox(
          height: 5.0,
        ),
        TypewriterAnimatedTextKit(
          speed: Duration(milliseconds: 50),
          isRepeatingAnimation: true,
          totalRepeatCount: 2,
          onTap: () {
            print("Tap Event");
          },
          text: [degreeSummary],
          textStyle: TextStyle(
              fontSize: 18.0, fontFamily: "BioRhyme", color: Colors.grey),
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}
