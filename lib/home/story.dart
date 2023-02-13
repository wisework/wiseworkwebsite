import 'package:flutter/material.dart';
import '../responsive.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class StoryPage extends StatefulWidget {
  @override
  _DestinationCarouselState createState() => _DestinationCarouselState();
}

class _DestinationCarouselState extends State<StoryPage> {
  final String imagePath = 'assets/carousel/';

  final CarouselController _controller = CarouselController();

  // List _isHovering = [false, false, false, false, false];
  List _isSelected = [true, false, false, false, false];

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
          opacity: 80,
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

  @override
  Widget build(BuildContext context) {
    List<String> storylist = [
      "ประสบการณ์การพัฒนาระบบ และตรวจรับรองบริษัทจดทะเบียนฯ",
      "เชี่ยวชาญงานตรวจสอบ \nและลงนามรับรองตามกฎระเบียบของหน่วยงานกำกับดูแล",
      "เชี่ยวชาญงานพัฒนาโปรแกรมระบบด้านความมั่นคงปลอดภัยสารสนเทศ",
      "เชี่ยวชาญงานพัฒนาโปรแกรมตามกฎหมาย กฎระเบียบ \n และมาตรฐานสากล",
    ];
    var groupofpic = Container(
      height: Responsive.isDesktop(context)
          ? 400
          : Responsive.isTablet(context)
              ? 380
              : 200,
      width: Responsive.isDesktop(context)
          ? 580
          : Responsive.isTablet(context)
              ? 580
              : 290,
      // alignment: FractionalOffset.center,
      child: new Stack(
        //alignment:new Alignment(x, y)
        children: <Widget>[
          new SizedBox(
            height: Responsive.isDesktop(context)
                ? 370
                : Responsive.isTablet(context)
                    ? 370
                    : 185,
            width: Responsive.isDesktop(context)
                ? 570
                : Responsive.isTablet(context)
                    ? 570
                    : 285,
          ),
          new Positioned(
            height: Responsive.isDesktop(context)
                ? 348
                : Responsive.isTablet(context)
                    ? 348
                    : 174,
            width: Responsive.isDesktop(context)
                ? 530
                : Responsive.isTablet(context)
                    ? 530
                    : 265,
            left: Responsive.isDesktop(context)
                ? 40.0
                : Responsive.isTablet(context)
                    ? 40
                    : 20.0,
            child: new Image(image: AssetImage("assets/story/storybg.png")),
          ),
          new Positioned(
              height: Responsive.isDesktop(context)
                  ? 327
                  : Responsive.isTablet(context)
                      ? 327
                      : 163.5,
              width: Responsive.isDesktop(context)
                  ? 527
                  : Responsive.isTablet(context)
                      ? 527
                      : 263.5,
              right: Responsive.isDesktop(context)
                  ? 50.0
                  : Responsive.isTablet(context)
                      ? 50
                      : 25.0,
              top: Responsive.isDesktop(context)
                  ? 40.0
                  : Responsive.isTablet(context)
                      ? 40
                      : 20.0,
              child: new Image(image: AssetImage("assets/story/storypic.png"))),
        ],
      ),
    );
    var title = Container(
      color: Color.fromARGB(0, 0, 187, 212),
      height: !Responsive.isMobile(context) ? 65 : 120,
      width: Responsive.isDesktop(context)
          ? 461
          : Responsive.isTablet(context)
              ? 360
              : 313,
      child: Text(
          !Responsive.isMobile(context) ? 'wisework Story' : 'wisework\nStory',
          style: GoogleFonts.ibmPlexSansThai(
              height: 1.25,
              fontSize: 48,
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 255, 255, 255))),
    );
    var aboutus = Container(
      color: Color.fromARGB(0, 255, 153, 0),
      height: Responsive.isDesktop(context)
          ? 156
          : Responsive.isTablet(context)
              ? 100
              : 158,
      width: Responsive.isDesktop(context)
          ? 726
          : Responsive.isTablet(context)
              ? 640
              : 313,
      child: Text(
        Responsive.isDesktop(context)
            ? '“เรา คือ ผู้ให้บริการและคำปรึกษาเกี่ยวกับกฎหมาย\n และกฎระเบียบจากหน่วยงานกำกับดูแล โดยทีมนักพัฒนา\n และผู้เชี่ยวชาญมากประสบการณ์"'
            : Responsive.isTablet(context)
                ? '“เรา คือ ผู้ให้บริการและคำปรึกษาเกี่ยวกับกฎหมาย\n และกฎระเบียบจากหน่วยงานกำกับดูแลโดย\nทีมนักพัฒนาและผู้เชี่ยวชาญมากประสบการณ์"'
                : '“เรา คือ ผู้ให้บริการและคำปรึกษาเกี่ยวกับ\nกฎหมาย และกฎระเบียบจากหน่วยงาน\nกำกับดูแล โดยทีมนักพัฒนาและผู้เชี่ยวชาญ\nมากประสบการณ์"',
        style: GoogleFonts.ibmPlexSansThai(
            fontSize: Responsive.isDesktop(context)
                ? 24
                : Responsive.isTablet(context)
                    ? 22
                    : 16,
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 255, 255, 255)),
      ),
    );
    var aboutlist = Container(
      color: Color.fromARGB(0, 255, 255, 255),
      height: Responsive.isDesktop(context)
          ? 230
          : Responsive.isTablet(context)
              ? 230
              : 230,
      width: Responsive.isDesktop(context)
          ? 660
          : Responsive.isTablet(context)
              ? 660
              : 340,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: storylist.length,
        itemBuilder: (context, index) {
          return ListTile(
            dense: true,
            leading: Transform.translate(
              offset: Offset(
                  Responsive.isDesktop(context)
                      ? -10
                      : Responsive.isTablet(context)
                          ? -10
                          : -10,
                  Responsive.isDesktop(context)
                      ? 0
                      : Responsive.isTablet(context)
                          ? 0
                          : -3),
              child: SizedBox(
                  width: Responsive.isDesktop(context) ? 12 : 10,
                  height: Responsive.isDesktop(context) ? 12 : 10,
                  child:
                      Image(image: AssetImage("assets/packages/record.png"))),
            ),
            title: Transform.translate(
              offset: Offset(-40, 2.5),
              child: Text(
                storylist[index],
                style: GoogleFonts.ibmPlexSansThai(
                    color: Colors.white,
                    fontSize: Responsive.isDesktop(context)
                        ? 20
                        : Responsive.isTablet(context)
                            ? 20
                            : 14,
                    fontWeight: FontWeight.w400),
              ),
            ),
          );
        },
      ),
    );
    var advice = SizedBox(
      width: Responsive.isDesktop(context) ? 192 : 143,
      height: Responsive.isDesktop(context) ? 48 : 28,
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromRGBO(75, 195, 211, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          child: Text(
            'รับคำปรึกษา',
            style: GoogleFonts.ibmPlexSansThai(
                fontSize: Responsive.isDesktop(context) ? 20 : 16,
                fontWeight: FontWeight.w600),
          )),
    );

    // bool _isLargeScreen() {
    //   final double screenWidth = MediaQuery.of(context).size.width;
    //   return screenWidth > 1400;
    // }

    return Center(
      child: Container(
        color: Color.fromARGB(255, 5, 45, 97),
        width: 1440,
        child: Column(
          children: [
            Container(
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
                          SizedBox(
                              height: Responsive.isDesktop(context) ? 164 : 40),
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
                                backgroundColor:
                                    Color.fromRGBO(75, 195, 211, 1),
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
            Container(
              width: 1440,
              color: Color.fromARGB(255, 5, 45, 97),
              child: Column(
                children: [
                  SizedBox(
                    height: Responsive.isDesktop(context)
                        ? 42
                        : Responsive.isTablet(context)
                            ? 35
                            : 80,
                  ),
                  Responsive.isDesktop(context)
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              color: Color.fromARGB(0, 204, 220, 57),
                              child: Column(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      title,
                                      SizedBox(
                                        height: 14,
                                      ),
                                      aboutus,
                                    ],
                                  ),
                                  aboutlist,
                                  SizedBox(
                                    height: 32,
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(right: 250),
                                      child: advice)
                                ],
                              ),
                            ),
                            groupofpic
                          ],
                        )
                      : Container(
                          // padding: const EdgeInsets.only(left: 0),
                          color: Color.fromARGB(0, 204, 220, 57),
                          child: Column(
                            children: [
                              Responsive.isTablet(context)
                                  ? Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        title,
                                        SizedBox(
                                          height: Responsive.isTablet(context)
                                              ? 39
                                              : 0,
                                        ),
                                        aboutus,
                                        SizedBox(
                                          height: Responsive.isTablet(context)
                                              ? 60
                                              : 5,
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(left: 5),
                                            child: advice)
                                      ],
                                    )
                                  : Column(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            title,
                                            SizedBox(
                                              height:
                                                  Responsive.isTablet(context)
                                                      ? 39
                                                      : 0,
                                            ),
                                            aboutus,
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            SizedBox(
                                              height:
                                                  Responsive.isTablet(context)
                                                      ? 60
                                                      : 5,
                                              width: 313,
                                            ),
                                            advice,
                                          ],
                                        )
                                      ],
                                    ),
                            ],
                          ),
                        ),
                  SizedBox(
                    height: Responsive.isDesktop(context)
                        ? 54
                        : Responsive.isTablet(context)
                            ? 71
                            : 51,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
