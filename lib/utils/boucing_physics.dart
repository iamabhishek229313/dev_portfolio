
import 'package:flutter/material.dart';

class EachString extends StatefulWidget {
  final String text;

  const EachString({Key key, @required this.text}) : super(key: key);

  @override
  _EachStringState createState() => _EachStringState();
}

class _EachStringState extends State<EachString> {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
          widget.text.length,
          (index) => TransalteContainer(
            child: Text(
              widget.text[index],
              style: TextStyle(
                  color: widget.text == "I'm " ? Colors.red : Colors.grey,
                  fontSize: 44.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'BioRhyme'),
            ),
          ),
        ));
  }
}



class TransalteContainer extends StatefulWidget {
  final Widget child;

  const TransalteContainer({Key key, @required this.child}) : super(key: key);

  @override
  _TransalteContainerState createState() => _TransalteContainerState();
}

class _TransalteContainerState extends State<TransalteContainer> {
  final onHoverTranslate = Matrix4.identity()..translate(0, -10, 0);
  final onNonHoverTranslate = Matrix4.identity()..translate(0, 0, 0);

  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (e) => _mouseEnter(true),
        onExit: (e) => _mouseEnter(false),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          child: widget.child,
          transform: _hovering ? onHoverTranslate : onNonHoverTranslate,
        ));
  }

  _mouseEnter(bool val) {
    setState(() {
      _hovering = val;
    });
  }
}
