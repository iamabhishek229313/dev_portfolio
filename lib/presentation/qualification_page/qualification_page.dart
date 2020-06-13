import 'package:dev_portfolio/presentation/projects_panel/Widgets/custom_divider.dart';
import 'package:dev_portfolio/presentation/qualification_page/Widgets/degrees.dart';
import 'package:dev_portfolio/presentation/qualification_page/Widgets/qualifications_header.dart';
import 'package:flutter/material.dart';

class Qualification_panel extends StatelessWidget {
  const Qualification_panel({
    Key key,
    @required this.screenHeight,
  }) : super(key: key);

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Qualifications_head(screenHeight: screenHeight),
          Custom_divider(),
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Degrees(),
                Expanded(child: Container(color: Colors.transparent))
              ],
            ),
          )
        ],
      ),
    );
  }
}
