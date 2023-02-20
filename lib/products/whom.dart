import 'package:flutter/material.dart';
import '../responsive.dart';
import 'package:google_fonts/google_fonts.dart';

class SingleWhomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> whomlist = [
      "องค์กรขนาดใหญ่ มีสาขา มีบริษัทในเครือ",
      "มีความเสี่ยงในการเก็บข้อมูลส่วนบุคคลจำนวนมาก",
      "มีความเสี่ยงในการเก็บข้อมูลอ่อนไหว (Sensitivity Data)",
      "องค์กรอยู่ในตลาดหลักทรัพย์",
      "มีการติดต่อกับต่างประเทศที่มีกฎหมายลักษณะเดียวกัน",
      "องค์กรอยู่ภายใต้ระเบียบของหน่วยงานกำกับ เช่น กลต. คปภ. ธปท.",
      "ธุรกิจเฉพาะต้องการปรับแต่งให้เข้ากับการทำงานสูงมาก",
      "ต้องการเชื่อมต่อกับระบบภายในที่มีอยู่เดิม เช่น ERP, Single Sign-On",
      "ต้องการใช้ Storage จำนวนมาก",
      "ต้องการ Security ที่สามารถควบคุมเองได้ทั้งหมด",
    ];
    var title = Container(
      color: Color.fromARGB(0, 0, 187, 212),
      height: 60,
      width: 461,
      child: Text('เหมาะกับใคร?',
          style: GoogleFonts.ibmPlexSansThai(
              // letterSpacing: 2,
              // height: 1.25,
              fontSize: 48,
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 24, 84, 110))),
    );
    var whoselist = Container(
      color: Color.fromARGB(0, 255, 255, 255),
      height: 486,
      width: 740,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: whomlist.length,
        itemBuilder: (context, index) {
          return ListTile(
            // horizontalTitleGap: 0,
            // minLeadingWidth: 0,
            // minVerticalPadding: 0,
            dense: true,
            visualDensity: VisualDensity(vertical: -4, horizontal: -4),
            leading: Transform.translate(
              offset: Offset(0, 0),
              child: SizedBox(
                  width: 25,
                  height: 25,
                  child: Image(image: AssetImage("assets/packages/check.png"))),
            ),
            title: Transform.translate(
              offset: Offset(0, 0),
              child: Text(
                whomlist[index],
                style: GoogleFonts.ibmPlexSansThai(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 24,
                    fontWeight: FontWeight.w400),
              ),
            ),
          );
        },
      ),
    );

    return Center(
      child: Container(
        color: Colors.white,
        width: 1440,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 84,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    title,
                    SizedBox(
                      height: 19,
                    ),
                    whoselist,
                    SizedBox(height: 32),
                    Row(
                      children: [
                        SizedBox(
                          width: 42,
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                        height: 453,
                        width: 506,
                        child: Image(
                            image: AssetImage("assets/product/whosepic.png"))),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 140,
            )
          ],
        ),
      ),
    );
  }
}
