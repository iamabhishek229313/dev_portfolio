
import 'package:flutter/material.dart';

class Custom_divider extends StatelessWidget {
  const Custom_divider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
        height: 1.0,
        indent: 150,
        thickness: 3.0,
        color: Colors.cyanAccent);
  }
}
