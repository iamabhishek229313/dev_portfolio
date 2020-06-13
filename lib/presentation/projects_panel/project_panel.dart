import 'package:dev_portfolio/presentation/projects_panel/Widgets/animated_text_wrap.dart';
import 'package:dev_portfolio/presentation/projects_panel/Widgets/custom_divider.dart';
import 'package:dev_portfolio/presentation/projects_panel/Widgets/music_player_carousel.dart';
import 'package:dev_portfolio/presentation/projects_panel/Widgets/project_head.dart';
import 'package:dev_portfolio/presentation/projects_panel/Widgets/tinder_clone_carousel.dart';
import 'package:dev_portfolio/presentation/projects_panel/Widgets/whatsapp_clone_carousel.dart';
import 'package:flutter/material.dart';

class Project_panel extends StatelessWidget {
  const Project_panel({
    Key key,
    @required this.screenHeight,
  }) : super(key: key);

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 2.1,
      child: Column(
        children: [
          Project_head(screenHeight: screenHeight),
          Custom_divider(),
          Tinder_clone_carousel(screenHeight: screenHeight),
          Whatsapp_clone_carousel(screenHeight: screenHeight),
          Music_player_carousel(screenHeight: screenHeight),
          Animated_text_wrap()
        ],
      ),
    );
  }
}

