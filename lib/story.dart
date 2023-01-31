import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class StoryPage extends StatelessWidget {
  const StoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> storylist = [
      "ประสบการณ์การพัฒนาระบบ และตรวจรับรองบริษัทจดทะเบียนฯ",
      "เชี่ยวชาญงานตรวจสอบ \nและลงนามรับรองตามกฎระเบียบของหน่วยงานกำกับดูแล",
      "เชี่ยวชาญงานพัฒนาโปรแกรมระบบด้านความมั่นคงปลอดภัยสารสนเทศ",
      "เชี่ยวชาญงานพัฒนาโปรแกรมตามกฎหมาย กฎระเบียบ \n และมาตรฐานสากล",
    ];
    var groupofpic = Container(
      height: 400.0,
      width: 580.0,
      // alignment: FractionalOffset.center,
      child: new Stack(
        //alignment:new Alignment(x, y)
        children: <Widget>[
          new SizedBox(
            height: 370,
            width: 570,
          ),
          new Positioned(
            height: 348,
            width: 530,
            left: 40.0,
            child: new Image(image: AssetImage("assets/story/storybg.png")),
          ),
          new Positioned(
              height: 327,
              width: 527,
              right: 50.0,
              top: 40.0,
              child: new Image(image: AssetImage("assets/story/storypic.png"))),
        ],
      ),
    );
    var title = Container(
      color: Color.fromARGB(0, 0, 187, 212),
      height: 65,
      width: 461,
      child: Text('wisework Story',
          style: GoogleFonts.ibmPlexSansThai(
              fontSize: 48,
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 24, 84, 110))),
    );
    var aboutus = Container(
      color: Color.fromARGB(0, 255, 153, 0),
      height: 156,
      width: 726,
      child: Text(
        '“เรา คือ ผู้ให้บริการและคำปรึกษาเกี่ยวกับกฎหมาย\n และกฎระเบียบจากหน่วยงานกำกับดูแล โดยทีมนักพัฒนา\n และผู้เชี่ยวชาญมากประสบการณ์"',
        style: GoogleFonts.ibmPlexSansThai(
            fontSize: 24,
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 24, 84, 110)),
      ),
    );
    var aboutlist = Container(
      color: Color.fromARGB(0, 255, 193, 7),
      height: 230,
      width: 660,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: storylist.length,
        itemBuilder: (context, index) {
          return ListTile(
            dense: true,
            leading: Transform.translate(
              offset: Offset(-10, 0),
              child: SizedBox(
                  width: 12,
                  height: 12,
                  child:
                      Image(image: AssetImage("assets/packages/record.png"))),
            ),
            title: Transform.translate(
              offset: Offset(-40, 2.5),
              child: Text(
                storylist[index],
                style: GoogleFonts.ibmPlexSansThai(
                    fontSize: 20, fontWeight: FontWeight.w400),
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
                fontSize: 20, fontWeight: FontWeight.w600),
          )),
    );

    bool _isLargeScreen() {
      final double screenWidth = MediaQuery.of(context).size.width;
      return screenWidth > 1400;
    }

    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 42,
          ),
          _isLargeScreen()
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
                  color: Color.fromARGB(0, 204, 220, 57),
                  child: Column(
                    children: [
                      groupofpic,
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
                          padding: EdgeInsets.only(right: 250), child: advice)
                    ],
                  ),
                ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
