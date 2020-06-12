import 'package:dev_portfolio/utils/boucing_physics.dart';
import 'package:flutter/material.dart';

class Bouncing_fonts extends StatelessWidget {
  const Bouncing_fonts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Wrap(
          runAlignment: WrapAlignment.center,
          children:
              ["I'm ", "an ", "app ", "developer ", "and ", "a ", "freelancer."]
                  .map((e) => EachString(
                        text: e,
                      ))
                  .toList()),
    );
  }
}
