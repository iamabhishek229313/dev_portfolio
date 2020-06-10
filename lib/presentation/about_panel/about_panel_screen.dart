import 'package:dev_portfolio/presentation/about_panel/widgets/about_panel_summary.dart';
import 'package:dev_portfolio/presentation/about_panel/widgets/bouncing_font.dart';
import 'package:dev_portfolio/utils/screen_height_widget.dart';
import 'package:flutter/material.dart';

class About_panel extends StatelessWidget {
  const About_panel({
    Key key,
    @required this.screenHeight,
    @required this.screenWidth,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return ScreenHeightWidget(
      child: Row(
        children: [
          new Expanded(
            flex: 2,
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 150.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Bouncing_fonts(),
                About_panel_summary()
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
    );
  }
}
