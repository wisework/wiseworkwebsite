import 'package:flutter/material.dart';
import 'responsive.dart';
import 'package:google_fonts/google_fonts.dart';

class StoryPage extends StatelessWidget {
  const StoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> storylist = [
      Responsive.isDesktop(context)
          ? "ประสบการณ์การพัฒนาระบบ และตรวจรับรองบริษัทจดทะเบียนฯ"
          : Responsive.isTablet(context)
              ? "ประสบการณ์การพัฒนาระบบ และตรวจรับรองบริษัทจดทะเบียนฯ"
              : "ประสบการณ์การพัฒนาระบบ \nและตรวจรับรองบริษัทจดทะเบียนฯ",
      Responsive.isDesktop(context)
          ? "เชี่ยวชาญงานตรวจสอบ \nและลงนามรับรองตามกฎระเบียบของหน่วยงานกำกับดูแล"
          : Responsive.isTablet(context)
              ? "เชี่ยวชาญงานตรวจสอบ \nและลงนามรับรองตามกฎระเบียบของหน่วยงานกำกับดูแล"
              : "เชี่ยวชาญงานตรวจสอบและลงนามรับรองตามกฎระเบียบของหน่วยงานกำกับดูแล",
      Responsive.isDesktop(context)
          ? "เชี่ยวชาญงานพัฒนาโปรแกรมระบบด้านความมั่นคงปลอดภัยสารสนเทศ"
          : Responsive.isTablet(context)
              ? "เชี่ยวชาญงานพัฒนาโปรแกรมระบบด้านความมั่นคงปลอดภัยสารสนเทศ"
              : "เชี่ยวชาญงานพัฒนาโปรแกรมระบบ\nด้านความมั่นคงปลอดภัยสารสนเทศ",
      Responsive.isDesktop(context)
          ? "เชี่ยวชาญงานพัฒนาโปรแกรมตามกฎหมาย กฎระเบียบ \n และมาตรฐานสากล"
          : Responsive.isTablet(context)
              ? "เชี่ยวชาญงานพัฒนาโปรแกรมตามกฎหมาย กฎระเบียบ \nและมาตรฐานสากล"
              : "เชี่ยวชาญงานพัฒนาโปรแกรม\nตามกฎหมาย กฎระเบียบ และมาตรฐานสากล",
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
      height: 65,
      width: Responsive.isDesktop(context)
          ? 461
          : Responsive.isTablet(context)
              ? 360
              : 300,
      child: Text('wisework Story',
          style: GoogleFonts.ibmPlexSansThai(
              fontSize: Responsive.isDesktop(context)
                  ? 48
                  : Responsive.isTablet(context)
                      ? 44
                      : 38,
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 24, 84, 110))),
    );
    var aboutus = Container(
      color: Color.fromARGB(0, 255, 153, 0),
      height: Responsive.isDesktop(context)
          ? 156
          : Responsive.isTablet(context)
              ? 80
              : 80,
      width: Responsive.isDesktop(context)
          ? 726
          : Responsive.isTablet(context)
              ? 640
              : 330,
      child: Text(
        Responsive.isDesktop(context)
            ? '“เรา คือ ผู้ให้บริการและคำปรึกษาเกี่ยวกับกฎหมาย\n และกฎระเบียบจากหน่วยงานกำกับดูแล โดยทีมนักพัฒนา\n และผู้เชี่ยวชาญมากประสบการณ์"'
            : '“เรา คือ ผู้ให้บริการและคำปรึกษาเกี่ยวกับกฎหมาย และกฎระเบียบจากหน่วยงานกำกับดูแล โดยทีมนักพัฒนาและผู้เชี่ยวชาญมากประสบการณ์"',
        style: GoogleFonts.ibmPlexSansThai(
            fontSize: Responsive.isDesktop(context)
                ? 24
                : Responsive.isTablet(context)
                    ? 22
                    : 16,
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 24, 84, 110)),
      ),
    );
    var aboutlist = Container(
      color: Color.fromARGB(0, 255, 193, 7),
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
      width: 192,
      height: 48,
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
                fontSize: Responsive.isDesktop(context) ? 20 : 17,
                fontWeight: FontWeight.w600),
          )),
    );

    // bool _isLargeScreen() {
    //   final double screenWidth = MediaQuery.of(context).size.width;
    //   return screenWidth > 1400;
    // }

    return Center(
      child: Container(
        width: 1440,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: Responsive.isDesktop(context) ? 42 : 20,
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
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        groupofpic,
                        title,
                        SizedBox(
                          height: Responsive.isTablet(context) ? 10 : 0,
                        ),
                        aboutus,
                        SizedBox(
                          height: Responsive.isTablet(context) ? 10 : 5,
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: aboutlist),
                        SizedBox(
                          height: Responsive.isTablet(context) ? 20 : 5,
                        ),
                        Padding(
                            padding: EdgeInsets.only(right: 0), child: advice)
                      ],
                    ),
                  ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
