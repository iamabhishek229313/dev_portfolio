import 'package:dev_portfolio/presentation/qualification_page/Widgets/class_tenth.dart';
import 'package:dev_portfolio/presentation/qualification_page/Widgets/class_twelvth.dart';
import 'package:dev_portfolio/presentation/qualification_page/Widgets/undergrad.dart';
import 'package:flutter/material.dart';

class Degrees extends StatelessWidget {
  const Degrees({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          new SizedBox(
            height: 10.0,
          ),
          Undergrad(),
          Class12(),
          Class10(),
        ],
      ),
    );
  }
}
