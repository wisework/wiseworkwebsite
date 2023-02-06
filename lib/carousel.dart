import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarouselPage extends StatefulWidget {
  @override
  _DestinationCarouselState createState() => _DestinationCarouselState();
}

class _DestinationCarouselState extends State<CarouselPage> {
  final String imagePath = 'assets/carousel/';

  final CarouselController _controller = CarouselController();

  List _isHovering = [false, false, false, false, false, false, false];
  List _isSelected = [true, false, false, false, false, false, false];

  int _current = 0;

  final List<String> images = [
    'assets/carousel/crs.png',
    'assets/carousel/crs.png',
    'assets/carousel/crs.png',
    'assets/carousel/crs.png',
    'assets/carousel/crs.png',
  ];

  final List<String> places = [
    '1',
    '2',
    '3',
    '4',
    '5',
    // 'ANTARCTICA',
  ];

  List<Widget> generateImageTiles(screenSize) {
    return images
        .map(
          (element) => SizedBox(
            width: 1440,

            // borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              element,
              fit: BoxFit.cover,
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var imageSliders = generateImageTiles(screenSize);
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Column(
          children: [
            CarouselSlider(
              items: imageSliders,
              options: CarouselOptions(
                  scrollPhysics:
                      //  Responsive.isMobile(context)
                      //     ?
                      PageScrollPhysics(),
                  // : NeverScrollableScrollPhysics(),
                  // enlargeCenterPage: true,
                  aspectRatio: 28 / 8,
                  autoPlay: true,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                      for (int i = 0; i < imageSliders.length; i++) {
                        if (i == index) {
                          _isSelected[i] = true;
                        } else {
                          _isSelected[i] = false;
                        }
                      }
                    });
                  }),
              carouselController: _controller,
            ),
            SizedBox(
                height: Responsive.isDesktop(context)
                    ? 90
                    : Responsive.isTablet(context)
                        ? 40
                        : 20),
            Container(
              height: 10,
              color: Colors.black,
              child: CarouselIndicator(
                width: 10,
                height: 4,
                color: Colors.white,
                activeColor: Color.fromARGB(255, 0, 195, 255),
                // animationDuration: _current,
                count: imageSliders.length,
                index: _current,
              ),
            ),
            SizedBox(height: 10)
          ],
        ),

        // AspectRatio(
        //   aspectRatio: 28 / 10,
        //   child: Center(
        //     child: Text(
        //       places[_current],
        //       style: TextStyle(
        //         letterSpacing: 8,
        //         fontFamily: 'Electrolize',
        //         fontSize: screenSize.width / 25,
        //         color: Colors.white,
        //       ),
        //     ),
        //   ),
        // ),
        // Responsive.isMobile(context)
        //     ? Container()
        //     :
        AspectRatio(
          aspectRatio: 28 / 8,
          child: Center(
            heightFactor: 1,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  left: screenSize.width / 8,
                  right: screenSize.width / 8,
                ),
                child: SizedBox(
                  width: Responsive.isDesktop(context)
                      ? 628
                      : Responsive.isTablet(context)
                          ? 300
                          : 150,
                  height: Responsive.isDesktop(context)
                      ? 88
                      : Responsive.isTablet(context)
                          ? 50
                          : 25,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(75, 195, 211, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(44.0),
                        ),
                      ),
                      child: Text(
                        "Get A free Demo",
                        style: GoogleFonts.ibmPlexSansThai(
                            fontSize: Responsive.isDesktop(context)
                                ? 42
                                : Responsive.isTablet(context)
                                    ? 18
                                    : 12,
                            fontWeight: FontWeight.w500),
                      )),
                ),

                // child: Card(
                //   elevation: 5,
                //   child: Padding(
                //     padding: EdgeInsets.only(
                //       top: screenSize.height / 50,
                //       bottom: screenSize.height / 50,
                //     ),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //       children: [
                //         for (int i = 0; i < places.length; i++)
                //           Column(
                //             mainAxisSize: MainAxisSize.min,
                //             children: [
                //               InkWell(
                //                 splashColor: Colors.transparent,
                //                 hoverColor: Colors.transparent,
                //                 onHover: (value) {
                //                   setState(() {
                //                     value
                //                         ? _isHovering[i] = true
                //                         : _isHovering[i] = false;
                //                   });
                //                 },
                //                 onTap: () {
                //                   _controller.animateToPage(i);
                //                 },
                //                 child: Padding(
                //                   padding: EdgeInsets.only(
                //                       top: screenSize.height / 80,
                //                       bottom: screenSize.height / 90),
                //                   child: Text(
                //                     places[i],
                //                     style: TextStyle(
                //                       color: _isHovering[i]
                //                           ? Theme.of(context)
                //                               .primaryTextTheme
                //                               .button!
                //                               .decorationColor
                //                           : Theme.of(context)
                //                               .primaryTextTheme
                //                               .button!
                //                               .color,
                //                     ),
                //                   ),
                //                 ),
                //               ),
                //               Visibility(
                //                 maintainSize: true,
                //                 maintainAnimation: true,
                //                 maintainState: true,
                //                 visible: _isSelected[i],
                //                 child: AnimatedOpacity(
                //                   duration: Duration(milliseconds: 400),
                //                   opacity: _isSelected[i] ? 1 : 0,
                //                   child: Container(
                //                     height: 5,
                //                     decoration: BoxDecoration(
                //                       color: Colors.blueGrey,
                //                       borderRadius: BorderRadius.all(
                //                         Radius.circular(10),
                //                       ),
                //                     ),
                //                     width: screenSize.width / 10,
                //                   ),
                //                 ),
                //               )
                //             ],
                //           ),
                //       ],
                //     ),
                //   ),
                // ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
