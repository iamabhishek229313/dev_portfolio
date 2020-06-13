import 'package:dev_portfolio/presentation/qualification_page/Widgets/degree_name.dart';
import 'package:dev_portfolio/presentation/qualification_page/Widgets/degree_summary.dart';
import 'package:flutter/material.dart';

class Class12 extends StatelessWidget {
  const Class12({
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
            degreeName: "CBSE XII",
          ),
          Degree_summary(
              degreeSummary:
                  "Qualified CBSE class XII in Maths\nFrom B.N.S D.A.V Public school, Giridih, India \nYear 2018")
        ],
      ),
    ));
  }
}
