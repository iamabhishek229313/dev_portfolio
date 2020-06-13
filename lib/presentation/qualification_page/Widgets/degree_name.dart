import 'package:flutter/material.dart';

class Degree_name extends StatelessWidget {
  final String degreeName;
  const Degree_name({Key key, @required this.degreeName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Text(
      degreeName,
      style: TextStyle(color: Colors.red, fontFamily: 'Cairo', fontSize: 24.0),
    );
  }
}
