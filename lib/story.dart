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
      height: MediaQuery.of(context).size.width < 1000 ? 200 : 400,
      width: MediaQuery.of(context).size.width < 1000 ? 290 : 580,
      // alignment: FractionalOffset.center,
      child: new Stack(
        //alignment:new Alignment(x, y)
        children: <Widget>[
          new SizedBox(
            height: MediaQuery.of(context).size.width < 1000 ? 185 : 370,
            width: MediaQuery.of(context).size.width < 1000 ? 285 : 570,
          ),
          new Positioned(
            height: MediaQuery.of(context).size.width < 1000 ? 174 : 348,
            width: MediaQuery.of(context).size.width < 1000 ? 265 : 530,
            left: MediaQuery.of(context).size.width < 1000 ? 20.0 : 40.0,
            child: new Image(image: AssetImage("assets/story/storybg.png")),
          ),
          new Positioned(
              height: MediaQuery.of(context).size.width < 1000 ? 163.5 : 327,
              width: MediaQuery.of(context).size.width < 1000 ? 263.5 : 527,
              right: MediaQuery.of(context).size.width < 1000 ? 25.0 : 50.0,
              top: MediaQuery.of(context).size.width < 1000 ? 20.0 : 40.0,
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
              fontSize: MediaQuery.of(context).size.width < 1000 ? 38 : 48,
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 24, 84, 110))),
    );
    var aboutus = Container(
      color: Color.fromARGB(0, 255, 153, 0),
      height: MediaQuery.of(context).size.width < 1000 ? 80 : 156,
      width: 726,
      child: Text(
        '“เรา คือ ผู้ให้บริการและคำปรึกษาเกี่ยวกับกฎหมาย\n และกฎระเบียบจากหน่วยงานกำกับดูแล โดยทีมนักพัฒนา\n และผู้เชี่ยวชาญมากประสบการณ์"',
        style: GoogleFonts.ibmPlexSansThai(
            fontSize: MediaQuery.of(context).size.width < 1000 ? 14 : 24,
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 24, 84, 110)),
      ),
    );
    var aboutlist = Container(
      color: Color.fromARGB(0, 255, 193, 7),
      height: MediaQuery.of(context).size.width < 1000 ? 180 : 230,
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
                  width: MediaQuery.of(context).size.width < 1000 ? 10 : 12,
                  height: MediaQuery.of(context).size.width < 1000 ? 10 : 12,
                  child:
                      Image(image: AssetImage("assets/packages/record.png"))),
            ),
            title: Transform.translate(
              offset: Offset(-40, 2.5),
              child: Text(
                storylist[index],
                style: GoogleFonts.ibmPlexSansThai(
                    fontSize:
                        MediaQuery.of(context).size.width < 1000 ? 10 : 20,
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
                fontSize: MediaQuery.of(context).size.width < 1000 ? 17 : 20,
                fontWeight: FontWeight.w600),
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
            height: MediaQuery.of(context).size.width < 1000 ? 20 : 42,
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
                  padding: const EdgeInsets.only(left: 20),
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
                        height:
                            MediaQuery.of(context).size.width < 1000 ? 12 : 32,
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              right: MediaQuery.of(context).size.width < 1000
                                  ? 20
                                  : 250),
                          child: advice)
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
