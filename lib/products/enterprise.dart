import 'package:flutter/material.dart';
import '../responsive.dart';
import 'package:google_fonts/google_fonts.dart';

class SingleProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> storylist = [
      "ประสบการณ์การพัฒนาระบบ และตรวจรับรองบริษัทจดทะเบียนฯ",
      "เชี่ยวชาญงานตรวจสอบ และลงนามรับรองตามกฎระเบียบของหน่วยงานกำกับดูแล",
      "เชี่ยวชาญงานพัฒนาโปรแกรมระบบด้านความมั่นคงปลอดภัยสารสนเทศ",
      "เชี่ยวชาญงานพัฒนาโปรแกรมตามกฎหมาย กฎระเบียบ และมาตรฐานสากล",
    ];
    var groupofpic = Container(
      height: 582,
      width: 815,
      // alignment: FractionalOffset.center,
      child: new Stack(
        //alignment:new Alignment(x, y)
        children: <Widget>[
          new SizedBox(
            height: 380,
            width: 720,
          ),
          new Positioned(
            height: 348,
            width: 530,
            child: new Image(image: AssetImage("assets/story/storybg.png")),
          ),
          new Positioned(
              height: 328,
              width: 720,
              child: new Image(image: AssetImage("assets/story/storypic.png"))),
        ],
      ),
    );
    var title = Container(
      color: Color.fromARGB(0, 0, 187, 212),
      height: 60,
      width: 444,
      child: Text('PDPA MaNAGEMENT PLATFORM',
          style: GoogleFonts.ibmPlexSansThai(
              // height: 1.25,
              fontSize: 50,
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 24, 84, 110))),
    );
    var productname = Container(
      color: Color.fromARGB(0, 0, 187, 212),
      height: 60,
      width: 444,
      child: Text('Enterprise',
          style: GoogleFonts.ibmPlexSansThai(
              // height: 1.25,
              fontSize: 50,
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 24, 84, 110))),
    );
    var productlicense = Container(
      color: Color.fromARGB(0, 0, 187, 212),
      height: 60,
      width: 444,
      child: Text('Perpetual License',
          style: GoogleFonts.ibmPlexSansThai(
              // height: 1.25,
              fontSize: 50,
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 24, 84, 110))),
    );
    var aboutproduct = Container(
      color: Color.fromARGB(0, 255, 153, 0),
      height: 158,
      width: 313,
      child: Text(
        'ระบบบริหารจัดการข้อมูลส่วนบุคคล PDPA \nเหมาะสำหรับองค์กรขนาดใหญ่ และบริษัทในเครือ\nควบคุมระบบทั้งหมดได้จากศูนย์กลาง \nครอบคลุมทุกฟังก์ชันการใช้งานเต็มรูปแบบ 11 \nModules และไม่มีข้อจำกัดในการเชื่อมต่อกับระบบอื่น',
        style: GoogleFonts.ibmPlexSansThai(
            fontSize: Responsive.isDesktop(context) ? 24 : 18,
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 0, 0, 0)),
      ),
    );
    // var aboutlist = Container(
    //   color: Color.fromARGB(0, 255, 255, 255),
    //   height: Responsive.isDesktop(context) ? 210 : 130,
    //   width: Responsive.isDesktop(context) ? 726 : 621,
    //   child: ListView.builder(
    //     shrinkWrap: true,
    //     itemCount: storylist.length,
    //     itemBuilder: (context, index) {
    //       return ListTile(
    //         minLeadingWidth: 0,
    //         minVerticalPadding: 0,
    //         dense: true,
    //         visualDensity: VisualDensity(vertical: -4, horizontal: -4),
    //         leading: Transform.translate(
    //           offset: Offset(0, 0),
    //           child: SizedBox(
    //               width: Responsive.isDesktop(context) ? 8 : 5,
    //               height: Responsive.isDesktop(context) ? 8 : 5,
    //               child: Image(image: AssetImage("assets/story/record.png"))),
    //         ),
    //         title: Transform.translate(
    //           offset: Offset(0, 0),
    //           child: Text(
    //             storylist[index],
    //             style: GoogleFonts.ibmPlexSansThai(
    //                 color: Colors.white,
    //                 fontSize: Responsive.isDesktop(context) ? 20 : 16,
    //                 fontWeight: FontWeight.w400),
    //           ),
    //         ),
    //       );
    //     },
    //   ),
    // );
    var priceclick = SizedBox(
      width: 192,
      height: 48,
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 52, 145, 206),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          child: Text(
            'รับใบเสนอราคา',
            style: GoogleFonts.ibmPlexSansThai(
                fontSize: 20, fontWeight: FontWeight.w500),
          )),
    );
    var democlick = SizedBox(
      width: 192,
      height: 48,
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 75, 195, 211),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          child: Text(
            'Request Demo',
            style: GoogleFonts.ibmPlexSansThai(
                fontSize: 20, fontWeight: FontWeight.w500),
          )),
    );

    // bool _isLargeScreen() {
    //   final double screenWidth = MediaQuery.of(context).size.width;
    //   return screenWidth > 1400;
    // }

    return Center(
      child: Container(
        color: Colors.white,
        width: 1440,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 22,
            ),
            Row(
              children: [
                Column(
                  children: [
                    title,
                    productname,
                    productlicense,
                    aboutproduct,
                    Row(
                      children: [
                        priceclick,
                        SizedBox(
                          width: 16,
                        ),
                        democlick
                      ],
                    )
                  ],
                ),
                groupofpic
              ],
            )
          ],
        ),
      ),
    );
  }
}
