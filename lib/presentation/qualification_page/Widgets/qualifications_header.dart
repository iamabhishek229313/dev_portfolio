import 'package:flutter/material.dart';

class Qualifications_head extends StatelessWidget {
  const Qualifications_head({
    Key key,
    @required this.screenHeight,
  }) : super(key: key);

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: screenHeight * 0.1,
      margin: const EdgeInsets.only(left: 150),
      child: Text(
        "Qualifications",
        style: TextStyle(
          fontSize: 44.0,
          fontFamily: 'Cairo',
          color: Colors.grey,
        ),
      ),
    );
  }
}
