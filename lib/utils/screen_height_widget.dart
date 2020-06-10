import 'package:flutter/material.dart';

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
