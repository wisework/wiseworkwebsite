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

  // final CarouselController _controller = CarouselController();

  int _current = 0;

  final List<Widget> images = [
    Container(
      height: 551,
      width: 1440,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/carousel/crs.png'),
          fit: BoxFit.fill,
        ),
      ),
    ),
    Container(
      height: 551,
      width: 1440,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/carousel/crs.png'),
          fit: BoxFit.fill,
        ),
      ),
    ),
    Container(
      height: 551,
      width: 1440,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/carousel/crs.png'),
          fit: BoxFit.fill,
        ),
      ),
    ),
    Container(
      height: 551,
      width: 1440,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/carousel/crs.png'),
          fit: BoxFit.fill,
        ),
      ),
    ),
    Container(
      height: 551,
      width: 1440,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/carousel/crs.png'),
          fit: BoxFit.fill,
        ),
      ),
    ),
  ];
  List<Widget> med_images = [
    Container(
      height: 554,
      width: 768,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/carousel/med_crs.png'),
          fit: BoxFit.fill,
        ),
      ),
    ),
    Container(
      height: 554,
      width: 768,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/carousel/med_crs.png'),
          fit: BoxFit.fill,
        ),
      ),
    ),
    Container(
      height: 554,
      width: 768,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/carousel/med_crs.png'),
          fit: BoxFit.fill,
        ),
      ),
    ),
    Container(
      height: 554,
      width: 768,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/carousel/med_crs.png'),
          fit: BoxFit.fill,
        ),
      ),
    ),
    Container(
      height: 554,
      width: 768,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/carousel/med_crs.png'),
          fit: BoxFit.fill,
        ),
      ),
    ),
  ];
  List<Widget> min_images = [
    Container(
      height: 528,
      width: 375,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/carousel/min_crs.png'),
          fit: BoxFit.fill,
        ),
      ),
    ),
    Container(
      height: 528,
      width: 375,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/carousel/min_crs.png'),
          fit: BoxFit.fill,
        ),
      ),
    ),
    Container(
      height: 528,
      width: 375,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/carousel/min_crs.png'),
          fit: BoxFit.fill,
        ),
      ),
    ),
    Container(
      height: 528,
      width: 375,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/carousel/min_crs.png'),
          fit: BoxFit.fill,
        ),
      ),
    ),
    Container(
      height: 528,
      width: 375,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/carousel/min_crs.png'),
          fit: BoxFit.fill,
        ),
      ),
    ),
  ];
  final controller =
      PageController(viewportFraction: 0.8, keepPage: true, initialPage: 0);

  // List<Widget> generateImageTiles(screenSize) {
  //   return images
  //       .map(
  //         (element) => SizedBox(
  //           width: 1440,
  //           child: Image.asset(
  //             element,
  //             // fit: Responsive.isDesktop(context)
  //             //     ? BoxFit.fitWidth
  //             //     : BoxFit.fitHeight,
  //           ),
  //         ),
  //       )
  //       .toList();
  // }

  @override
  Widget build(BuildContext context) {
    // var screenSize = MediaQuery.of(context).size;
    // var imageSliders = generateImageTiles(screenSize);
    return
        // Responsive.isDesktop(context)
        // ?
        Center(
      child: Container(
        width: 1440,
        color: Responsive.isDesktop(context)
            ? Color.fromARGB(255, 232, 242, 254)
            : Color.fromARGB(255, 5, 45, 97),
        child: Column(
          children: [
            SizedBox(height: Responsive.isDesktop(context) ? 83 : 0),
            Stack(
              children: [
                Column(
                  children: [
                    CarouselSlider(
                      items: Responsive.isDesktop(context)
                          ? images
                          : Responsive.isTablet(context)
                              ? med_images
                              : min_images,
                      options: CarouselOptions(
                          scrollPhysics: PageScrollPhysics(),
                          //  NeverScrollableScrollPhysics(),
                          // enlargeCenterPage: true,
                          aspectRatio: Responsive.isDesktop(context)
                              ? 28 / 11
                              : Responsive.isTablet(context)
                                  ? 768 / 554
                                  : 375 / 538,
                          autoPlay: true,
                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _current = index;
                            });
                          }),
                      // carouselController: _controller,
                    ),
                    SizedBox(height: Responsive.isDesktop(context) ? 164 : 40),
                  ],
                ),
                Positioned(
                  bottom: Responsive.isDesktop(context) ? 120 : 17,
                  left: Responsive.isDesktop(context)
                      ? 410
                      : Responsive.isTablet(context)
                          ? 266
                          : 90,
                  right: Responsive.isDesktop(context)
                      ? 403
                      : Responsive.isTablet(context)
                          ? 266
                          : 96,
                  child: SizedBox(
                    width: Responsive.isDesktop(context)
                        ? 628
                        : Responsive.isTablet(context)
                            ? 219
                            : 189,
                    height: Responsive.isDesktop(context)
                        ? 88
                        : Responsive.isTablet(context)
                            ? 50
                            : 40,
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
                                      ? 20
                                      : 16,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                ),
                Positioned(
                  bottom: Responsive.isDesktop(context)
                      ? 61
                      : Responsive.isTablet(context)
                          ? 100
                          : 70,
                  left: Responsive.isDesktop(context)
                      ? 681
                      : Responsive.isTablet(context)
                          ? 344
                          : 148,
                  right: Responsive.isDesktop(context)
                      ? 672
                      : Responsive.isTablet(context)
                          ? 336
                          : 139,
                  child: Container(
                    child: AnimatedSmoothIndicator(
                      activeIndex: _current,
                      count: 5,
                      effect: CustomizableEffect(
                        activeDotDecoration: DotDecoration(
                          width: 16,
                          height: 6,
                          color: Responsive.isDesktop(context)
                              ? Color.fromARGB(255, 0, 0, 0)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        dotDecoration: DotDecoration(
                          width: 10,
                          height: 4,
                          color: Responsive.isDesktop(context)
                              ? Colors.grey
                              : Color.fromARGB(40, 255, 255, 255),
                          borderRadius: BorderRadius.circular(50),
                          verticalOffset: 0,
                        ),
                        spacing: 6.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // Container(
            //   child: AnimatedSmoothIndicator(
            //     activeIndex: _current,
            //     count: 5,
            //     effect: CustomizableEffect(
            //       activeDotDecoration: DotDecoration(
            //         width: 16,
            //         height: 6,
            //         color: Responsive.isDesktop(context)
            //             ? Color.fromARGB(255, 0, 0, 0)
            //             : Colors.white,
            //         borderRadius: BorderRadius.circular(50),
            //       ),
            //       dotDecoration: DotDecoration(
            //         width: 10,
            //         height: 4,
            //         color: Colors.grey,
            //         borderRadius: BorderRadius.circular(50),
            //         verticalOffset: 0,
            //       ),
            //       spacing: 6.0,
            //     ),
            //   ),
            // ),
            // SizedBox(height: 61),
          ],
        ),
      ),
    );
    // : Container(
    //     color: Colors.amber,
    //     width: 768,
    //     // height: 600,
    //     child: Stack(
    //       children: [
    //         Column(
    //           children: [
    //             CarouselSlider(
    //               items: med_images,
    //               options: CarouselOptions(
    //                   scrollPhysics: PageScrollPhysics(),
    //                   //  NeverScrollableScrollPhysics(),
    //                   // enlargeCenterPage: true,
    //                   aspectRatio: 768 / 554,
    //                   autoPlay: true,
    //                   viewportFraction: 1,
    //                   onPageChanged: (index, reason) {
    //                     setState(() {
    //                       _current = index;
    //                     });
    //                   }),
    //               // carouselController: _controller,
    //             ),
    //             SizedBox(height: 97),
    //           ],
    //         ),
    //         Positioned(
    //           bottom: 50,
    //           left: 410,
    //           right: 403,
    //           child: SizedBox(
    //             width: 628,
    //             height: 88,
    //             child: ElevatedButton(
    //                 onPressed: () {},
    //                 style: ElevatedButton.styleFrom(
    //                   backgroundColor: Color.fromRGBO(75, 195, 211, 1),
    //                   shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(44.0),
    //                   ),
    //                 ),
    //                 child: Text(
    //                   "Get A free Demo",
    //                   style: GoogleFonts.ibmPlexSansThai(
    //                       fontSize: 42, fontWeight: FontWeight.w500),
    //                 )),
    //           ),
    //         ),
    //         Positioned(
    //           child: Container(
    //             child: AnimatedSmoothIndicator(
    //               activeIndex: _current,
    //               count: 5,
    //               effect: CustomizableEffect(
    //                 activeDotDecoration: DotDecoration(
    //                   width: 16,
    //                   height: 6,
    //                   color: Color.fromARGB(255, 0, 0, 0),
    //                   borderRadius: BorderRadius.circular(50),
    //                 ),
    //                 dotDecoration: DotDecoration(
    //                   width: 10,
    //                   height: 4,
    //                   color: Colors.grey,
    //                   borderRadius: BorderRadius.circular(50),
    //                   verticalOffset: 0,
    //                 ),
    //                 spacing: 6.0,
    //               ),
    //             ),
    //           ),
    //         )
    //       ],
    //     ),
    //   );
  }
}
