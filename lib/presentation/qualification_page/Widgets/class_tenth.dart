import 'package:dev_portfolio/presentation/qualification_page/Widgets/degree_name.dart';
import 'package:dev_portfolio/presentation/qualification_page/Widgets/degree_summary.dart';
import 'package:flutter/material.dart';

class Class10 extends StatelessWidget {
  const Class10({
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
            degreeName: "Class X",
          ),
          Degree_summary(
            degreeSummary:
                "Qualified CBSE class X \nFrom B.N.S D.A.V Public school, Giridih, India \nYear 2016",
          ),
        ],
      ),
    ));
  }
}
