import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wiseintern/responsive.dart';
import 'package:google_fonts/google_fonts.dart';

class CarouselPage extends StatefulWidget {
  @override
  _DestinationCarouselState createState() => _DestinationCarouselState();
}

class _DestinationCarouselState extends State<CarouselPage> {
  final String imagePath = 'assets/carousel/';

  final CarouselController _controller = CarouselController();

  // List _isHovering = [false, false, false, false, false];
  List _isSelected = [true, false, false, false, false];

  int _current = 0;

  final List<String> images = [
    'assets/carousel/crs.png',
    'assets/carousel/crs.png',
    'assets/carousel/crs.png',
    'assets/carousel/crs.png',
    'assets/carousel/crs.png',
  ];
  final controller =
      PageController(viewportFraction: 0.8, keepPage: true, initialPage: 0);

  List<Widget> generateImageTiles(screenSize) {
    return images
        .map(
          (element) => SizedBox(
            width: 1440,
            child: Image.asset(
              element,
              fit: Responsive.isDesktop(context)
                  ? BoxFit.fitWidth
                  : BoxFit.fitHeight,
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var imageSliders = generateImageTiles(screenSize);
    return Center(
      child: Container(
        width: 1440,
        color: Color.fromARGB(255, 232, 242, 254),
        child: Column(
          children: [
            SizedBox(height: 83),
            Stack(
              children: [
                Column(
                  children: [
                    CarouselSlider(
                      items: imageSliders,
                      options: CarouselOptions(
                          scrollPhysics: PageScrollPhysics(),
                          //  NeverScrollableScrollPhysics(),
                          // enlargeCenterPage: true,
                          aspectRatio: 28 / 11,
                          autoPlay: true,
                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _current = index;
                            });
                          }),
                      // carouselController: _controller,
                    ),
                    SizedBox(height: 97),
                  ],
                ),
                Positioned(
                  bottom: 50,
                  left: 410,
                  right: 403,
                  child: SizedBox(
                    width: 628,
                    height: 88,
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
                              fontSize: 42, fontWeight: FontWeight.w500),
                        )),
                  ),
                ),
              ],
            ),
            Container(
              child: AnimatedSmoothIndicator(
                activeIndex: _current,
                count: 5,
                effect: CustomizableEffect(
                  activeDotDecoration: DotDecoration(
                    width: 16,
                    height: 6,
                    color: Color.fromARGB(255, 0, 0, 0),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  dotDecoration: DotDecoration(
                    width: 10,
                    height: 4,
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(50),
                    verticalOffset: 0,
                  ),
                  spacing: 6.0,
                ),
              ),
            ),
            SizedBox(height: 61),
          ],
        ),
      ),
    );
  }
}
