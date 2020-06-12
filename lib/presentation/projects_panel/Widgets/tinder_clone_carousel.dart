import 'package:dev_portfolio/models/image_url.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class Tinder_clone_carousel extends StatelessWidget {
  const Tinder_clone_carousel({
    Key key,
    @required this.screenHeight,
  }) : super(key: key);

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: screenHeight * 0.6,
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              height: screenHeight * 0.1,
              margin: const EdgeInsets.only(left: 150),
              child: Text(
                "Tinder clone",
                style: TextStyle(
                  fontSize: 44.0,
                  fontFamily: 'Cairo',
                  color: Colors.grey,
                ),
              ),
            ),
            Container(
              height: screenHeight * 0.5,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: image_url_tinder.length,
                  itemBuilder:
                      (BuildContext context, int index) {
                    return Container(
                      width: 350.0,
                      margin: index == 0
                          ? const EdgeInsets.only(
                              left: 160.0)
                          : const EdgeInsets.symmetric(
                              horizontal: 10.0),
                      child: FadeInImage.memoryNetwork(
                        placeholder: kTransparentImage,
                        image: image_url_tinder[index],
                        fit: BoxFit.fitHeight,
                      ),
                    );
                  }),
            )
          ],
        ));
  }
}
