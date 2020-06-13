import 'dart:html';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class Map_address extends StatefulWidget {
  final double screenHeight;
  final double screenWidth;
  const Map_address({
    Key key,
    @required this.screenHeight,
    @required this.screenWidth,
  }) : super(key: key);


  @override
  _Map_addressState createState() => _Map_addressState();
}

class _Map_addressState extends State<Map_address> {
  
  Widget _iFrameWidget;
  final IFrameElement _iFrameElement = new IFrameElement();

  @override
  void initState() {
    super.initState();
    _iFrameElement.height = (widget.screenHeight * 0.5).toString();
      _iFrameElement.width = (widget.screenWidth).toString();
      _iFrameElement.src =
          "https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14975.807689257574!2d85.7357383!3d20.2193188!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xc81fc475faa77274!2sC.%20V.%20Raman%20Global%20University!5e0!3m2!1sen!2sin!4v1592023308528!5m2!1sen!2sin";
      _iFrameElement.style.border = 'none';

      // Ignore this issuse .
      ui.platformViewRegistry.registerViewFactory(
        'iframeElement',
        (int viewId) => _iFrameElement,
      );

      _iFrameWidget = HtmlElementView(
        key: UniqueKey(),
        viewType: 'iframeElement',
      );
  }

  @override
  Widget build(BuildContext context) {
    print("Map Widget is build again and agina !!");
    return Container(
      height: widget.screenHeight * 0.5,
      child: _iFrameWidget,
    );
  }
}
