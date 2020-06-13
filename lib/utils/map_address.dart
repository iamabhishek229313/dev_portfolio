import 'package:flutter/material.dart';

class Map_address extends StatelessWidget {
  const Map_address({
    Key key,
    @required this.screenHeight,
    @required Widget iFrameWidget,
  }) : _iFrameWidget = iFrameWidget, super(key: key);

  final double screenHeight;
  final Widget _iFrameWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.5,
      child: _iFrameWidget,
    );
  }
}
