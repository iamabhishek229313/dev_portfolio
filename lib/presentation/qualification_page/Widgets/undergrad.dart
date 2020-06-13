import 'package:dev_portfolio/presentation/qualification_page/Widgets/degree_name.dart';
import 'package:dev_portfolio/presentation/qualification_page/Widgets/degree_summary.dart';
import 'package:flutter/material.dart';

class Undergrad extends StatelessWidget {
  const Undergrad({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.only(left: 200.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Degree_name(
            degreeName: "Undergraduation",
          ),
          Degree_summary(
              degreeSummary:
                  "B.Tech in Computer Science and Technology.\nFrom C.V Raman College of Engineering, Bhubaneswar, India \nFrom 2018 - 2022 (present)")
        ],
      ),
    ));
  }
}
