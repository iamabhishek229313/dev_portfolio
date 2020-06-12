import 'package:dev_portfolio/models/image_url.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class Project_panel extends StatelessWidget {
  const Project_panel({
    Key key,
    @required this.screenHeight,
  }) : super(key: key);

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 2,
      child: Column(
        children: [
          Project_head(screenHeight: screenHeight),
          Custom_divider(),
          Tinder_clone_carousel(screenHeight: screenHeight),
          Whatsapp_clone_carousel(screenHeight: screenHeight),
          Music_player_carousel(screenHeight: screenHeight)
        ],
      ),
    );
  }
}

class Music_player_carousel extends StatelessWidget {
  const Music_player_carousel({
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
                "Flute Music player",
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
                  itemCount:
                      image_url_flute_music_player.length,
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
                        image:
                            image_url_flute_music_player[
                                index],
                        fit: BoxFit.fitHeight,
                      ),
                    );
                  }),
            )
          ],
        ));
  }
}

class Whatsapp_clone_carousel extends StatelessWidget {
  const Whatsapp_clone_carousel({
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
                "Whatsapp clone",
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
                  itemCount: image_url_whatsapp.length,
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
                        image: image_url_whatsapp[index],
                        fit: BoxFit.fitHeight,
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}

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

class Project_head extends StatelessWidget {
  const Project_head({
    Key key,
    @required this.screenHeight,
  }) : super(key: key);

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: screenHeight * 0.1,
      margin: const EdgeInsets.only(left: 150),
      child: Text(
        "Projects",
        style: TextStyle(
          fontSize: 44.0,
          fontFamily: 'Cairo',
          color: Colors.grey,
        ),
      ),
    );
  }
}

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
