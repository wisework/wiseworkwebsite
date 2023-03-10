import 'package:flutter/material.dart';
import '../responsive.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';

class PackageModel {
  final String title;
  final String lisence;
  final String imageUrl;
  final String? routePath;
  PackageModel(this.title, this.lisence, this.imageUrl, this.routePath);
}

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
            horizontalTitleGap: 0,
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
    var relate = Container(
      color: Color.fromARGB(0, 0, 187, 212),
      height: 48,
      width: 1087,
      child: Text('Related Package ดูรายละเอียดแพ็กเกจอื่น',
          style: GoogleFonts.ibmPlexSansThai(
              // letterSpacing: 2,
              // height: 1.25,
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 24, 84, 110))),
    );
    List<PackageModel> features = [
      PackageModel("Express Package", "(SaaS)", "assets/packages/cloud.png",
          "routePath"),
      PackageModel("Standard Package", "(Subscription License)",
          "assets/packages/clouds.png", "routePath"),
      PackageModel("Enterprise Package", "(Perpeptual License)",
          "assets/packages/rainbow_cloud.png", "routePath"),
    ];

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
              height: 94,
            ),
            Container(
              height: 342,
              width: 1140,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  relate,
                  SizedBox(
                    height: 38,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      HoverContainer(
                        padding: const EdgeInsets.only(top: 27, left: 40),
                        width: 363,
                        height: 256,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color.fromARGB(255, 255, 255, 255),
                            border: Border.all(
                                color: Color.fromARGB(255, 225, 232, 240))),
                        hoverDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color.fromARGB(255, 241, 251, 252),
                            border: Border.all(
                                color: Color.fromARGB(255, 75, 195, 211))),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  height: 60,
                                  width: 60,
                                  child:
                                      Image.asset("assets/packages/cloud.png")),
                              SizedBox(height: 24),
                              Text('Express Package',
                                  style: GoogleFonts.ibmPlexSansThai(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500)),
                              Text('(SaaS)',
                                  style: GoogleFonts.ibmPlexSansThai(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400)),
                              SizedBox(height: 16),
                              Text('Read more >',
                                  style: GoogleFonts.ibmPlexSansThai(
                                      color: Color.fromARGB(255, 75, 196, 213),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600))
                            ]),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      HoverContainer(
                        padding: const EdgeInsets.only(top: 40, left: 40),
                        width: 363,
                        height: 256,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color.fromARGB(255, 255, 255, 255),
                            border: Border.all(
                                color: Color.fromARGB(255, 225, 232, 240))),
                        hoverDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color.fromARGB(255, 241, 251, 252),
                            border: Border.all(
                                color: Color.fromARGB(255, 75, 195, 211))),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  height: 45,
                                  width: 75,
                                  child: Image.asset(
                                      "assets/packages/clouds.png")),
                              SizedBox(height: 24),
                              Text('Standard Package',
                                  style: GoogleFonts.ibmPlexSansThai(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500)),
                              Text('(Subscription License)',
                                  style: GoogleFonts.ibmPlexSansThai(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400)),
                              SizedBox(height: 16),
                              Text('Read more >',
                                  style: GoogleFonts.ibmPlexSansThai(
                                      color: Color.fromARGB(255, 75, 196, 213),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600))
                            ]),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      HoverContainer(
                        padding: const EdgeInsets.only(top: 40, left: 40),
                        width: 363,
                        height: 256,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color.fromARGB(255, 255, 255, 255),
                            border: Border.all(
                                color: Color.fromARGB(255, 225, 232, 240))),
                        hoverDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color.fromARGB(255, 241, 251, 252),
                            border: Border.all(
                                color: Color.fromARGB(255, 75, 195, 211))),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  height: 47,
                                  width: 80,
                                  child: Image.asset(
                                      "assets/packages/rainbow_cloud.png")),
                              SizedBox(height: 24),
                              Text('Enterprise Package',
                                  style: GoogleFonts.ibmPlexSansThai(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500)),
                              Text('(Perpeptual License)',
                                  style: GoogleFonts.ibmPlexSansThai(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400)),
                              SizedBox(height: 16),
                              Text('Read more >',
                                  style: GoogleFonts.ibmPlexSansThai(
                                      color: Color.fromARGB(255, 75, 196, 213),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600))
                            ]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
