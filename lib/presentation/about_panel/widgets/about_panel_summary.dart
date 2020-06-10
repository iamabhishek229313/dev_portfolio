import 'package:flutter/material.dart';

class About_panel_summary extends StatelessWidget {
  const About_panel_summary({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }
}
