import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/responsive.dart';

class WhyPage extends StatelessWidget {
  const WhyPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> reason = [
      Responsive.isMobile(context)
          ? "เติมเต็มให้ครบทั้ง People Process และ\nTechnology"
          : "เติมเต็มให้ครบทั้ง People Process และ Technology",
      Responsive.isMobile(context)
          ? "ระบบพัฒนาโดยทีมที่ปรึกษาโดยตรง มั่นใจ\nได้ว่าระบบเป็นไปตามกฎหมายกำหนด"
          : "ระบบพัฒนาโดยทีมที่ปรึกษาโดยตรง มั่นใจได้ว่าระบบเป็นไปตามกฎหมายกำหนด",
      Responsive.isMobile(context)
          ? "ทีมพัฒนา และ support เป็นคนไทย ปรับให้\nทันตามกฎหมายที่เปลี่ยนแปลงได้รวดเร็ว"
          : "ทีมพัฒนา และ support เป็นคนไทย ปรับให้ทันตามกฎหมายที่เปลี่ยนแปลงได้รวดเร็ว",
      Responsive.isMobile(context)
          ? "ติดตั้งได้ทั้ง Private Cloud , On-Premise,\nHybrid-Cloud"
          : "ติดตั้งได้ทั้ง Private Cloud , On-Premise, Hybrid-Cloud",
      Responsive.isMobile(context)
          ? "พัฒนา Function เพิ่มเติมได้ตามต้องการ\nให้เหมาะสมกับองค์กรมากที่สุด"
          : "พัฒนา Function เพิ่มเติมได้ตามต้องการ ให้เหมาะสมกับองค์กรมากที่สุด",
      Responsive.isMobile(context)
          ? "มีการวิจัย และร่วมพัฒนา กับสถาบันฯ\nเพื่อให้ได้เทคโนโลยีขั้นสูงอย่างต่อเนื่อง"
          : "มีการวิจัย และร่วมพัฒนา กับสถาบันฯ เพื่อให้ได้เทคโนโลยีขั้นสูงอย่างต่อเนื่อง",
      Responsive.isMobile(context)
          ? "รองรับฟังก์ชันมากที่สุด สนับสนุนผู้บริหาร\nและDPO"
          : "รองรับฟังก์ชันมากที่สุด สนับสนุนผู้บริหาร และ DPO",
      Responsive.isMobile(context)
          ? "เลือกใช้ Infrastructure ที่มีความ\nปลอดภัยสูงมีทีม support มืออาชีพ"
          : "เลือกใช้ Infrastructure ที่มีความปลอดภัยสูง มีทีม support มืออาชีพ",
      Responsive.isMobile(context)
          ? "Active Dashboard แสดงและ\nวิเคราะห์ข้อมูลเชิงลึกสำหรับผู้บริหาร"
          : "Active Dashboard แสดงและวิเคราะห์ข้อมูลเชิงลึกสำหรับผู้บริหาร"
    ];

    var reasonsList = Container(
      width: Responsive.isDesktop(context)
          ? 900
          : Responsive.isTablet(context)
              ? 680
              : 360,
      height: Responsive.isMobile(context) ? 580 : 450,
      // color: Colors.amber,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: reason.length,
        itemBuilder: (context, index) {
          return ListTile(
            dense: true,
            leading: Transform.translate(
              offset: Offset(-10, 0),
              child: SizedBox(
                  width: 25,
                  height: 26,
                  child: Image(image: AssetImage("/about/why/check.png"))),
            ),
            title: Transform.translate(
              offset: Offset(-20, 2.5),
              child: Text(
                reason[index],
                style: GoogleFonts.ibmPlexSansThai(
                    fontSize: Responsive.isDesktop(context)
                        ? 24
                        : Responsive.isTablet(context)
                            ? 18
                            : 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
          );
        },
      ),
    );
    return Center(
        child: Responsive.isDesktop(context)
            ? Container(
                width: 1440,
                height: 1209,
                child: Stack(
                  children: [
                    Container(
                      width: 1440,
                      height: 1209,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                            Colors.white,
                            Color.fromARGB(255, 232, 242, 254)
                          ])),
                    ),
                    new Positioned(
                      top: 63,
                      right: 1148,
                      child: Container(
                        width: 312,
                        height: 1058,
                        // color: Colors.amber,
                        child: Image.asset("/about/why/wisework.png"),
                      ),
                    ),
                    new Positioned(
                      top: 95,
                      left: 174,
                      child: Container(
                        width: 449,
                        height: 130,
                        child: Text(
                          "WHY?",
                          style: GoogleFonts.bebasNeue(
                              fontSize: 120,
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 5, 45, 97)),
                        ),
                      ),
                    ),
                    new Positioned(
                      top: 195,
                      left: 174,
                      child: Container(
                        width: 449,
                        height: 130,
                        child: Text(
                          "WISEWORK",
                          style: GoogleFonts.bebasNeue(
                              fontSize: 120,
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 5, 45, 97)),
                        ),
                      ),
                    ),
                    new Positioned(
                      top: 87,
                      left: 640,
                      child: Container(
                          width: 704.61,
                          height: 220,
                          child: Image.asset("/about/why/successful.png")),
                    ),
                    new Positioned(
                      top: 350,
                      left: 174,
                      child: Container(
                        width: 760,
                        height: 76,
                        child: Text(
                          'เพราะอะไร ... ทำไมต้อง "เรา"',
                          style: GoogleFonts.inter(
                              fontSize: 48,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 5, 45, 97)),
                        ),
                      ),
                    ),
                    new Positioned(
                      top: 452,
                      left: 406.6,
                      // right: 213.53,
                      child: Container(
                        width: 900,
                        height: 450,
                        // color: Colors.red,
                        child: reasonsList,
                      ),
                    ),
                    new Positioned(
                      top: 985,
                      left: 270,
                      // right: 213.53,
                      child: Container(
                        width: 1123,
                        height: 201,
                        child: Text(
                          "“เรายังคงมองไปข้างหน้าอย่างต่อเนื่องในการสร้างสรรค์บริการและผลิตภัณฑ์ Software Solutions ที่พร้อมตอบโจทย์ให้ทุกองค์กร\nโดยบูรณาการทำข้อตกลงความร่วมมือทางวิชาการกับคณะวิศวกรรมศาสตร์ มหาวิทยาลัยเกษตรศาสตร์\nด้วยวิสัยทัศน์ที่เล็งเห็นถึงความสำคัญ ในการพัฒนาระบบของเทคโนโลยีสารสนเทศ มุ่งเน้นการส่งเสริม สนับสนุน และพัฒนา\nพร้อมขับเคลื่อนให้เกิดนวัตกรรมใหม่ สำหรับอนาคต และมอบประสบการณ์แห่งความคิดสร้างสรรค์ให้กับธุรกิจต่อไป”",
                          style: GoogleFonts.ibmPlexSansThai(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
              )
            : Responsive.isTablet(context)
                ? Container(
                    width: 1440,
                    // height: 1630,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                          Colors.white,
                          Color.fromARGB(255, 232, 242, 254)
                        ])),
                    child: Center(
                      child: Container(
                        width: 768,
                        height: 1530,
                        child: Stack(
                          children: [
                            Container(
                              width: 768,
                              // height: 1630,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                    Colors.white,
                                    Color.fromARGB(255, 232, 242, 254)
                                  ])),
                            ),
                            new Positioned(
                              top: 200,
                              // right: 1148,
                              child: Container(
                                width: 296,
                                height: 1539,
                                // color: Colors.amber,
                                child: Image.asset("/about/why/wisework.png"),
                              ),
                            ),
                            new Positioned(
                              top: 80,
                              left: 100,
                              child: Container(
                                width: 449,
                                // height: 130,
                                child: Text(
                                  "WHY?",
                                  style: GoogleFonts.bebasNeue(
                                      fontSize: 120,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 5, 45, 97)),
                                ),
                              ),
                            ),
                            new Positioned(
                              top: 180,
                              left: 100,
                              child: Container(
                                width: 449,
                                // height: 130,
                                child: Text(
                                  "WISEWORK",
                                  style: GoogleFonts.bebasNeue(
                                      fontSize: 120,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 5, 45, 97)),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 350),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 40),
                                    child: Container(
                                      width: 593,
                                      // height: 76,
                                      child: Text(
                                        'เพราะอะไร ... ทำไมต้อง "เรา"',
                                        style: GoogleFonts.inter(
                                            fontSize: 36,
                                            fontWeight: FontWeight.w500,
                                            color:
                                                Color.fromARGB(255, 5, 45, 97)),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, top: 80),
                                    child: Container(
                                        width: 616,
                                        height: 193,
                                        child: Image.asset(
                                            "/about/why/successful.png")),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 50, left: 60),
                                    child: Container(
                                      width: 680,
                                      // height: 450,
                                      // color: Colors.red,
                                      child: reasonsList,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 50, left: 20),
                                    child: Container(
                                      width: 600,
                                      // height: 201,
                                      child: Text(
                                        "“เรายังคงมองไปข้างหน้าอย่างต่อเนื่องในการสร้างสรรค์บริการและผลิตภัณฑ์\nSoftware Solutions ที่พร้อมตอบโจทย์ให้ทุกองค์กร\nโดยบูรณาการทำข้อตกลงความร่วมมือทางวิชาการกับคณะวิศวกรรมศาสตร์\nมหาวิทยาลัยเกษตรศาสตร์ด้วยวิสัยทัศน์ที่เล็งเห็นถึงความสำคัญ\nในการพัฒนาระบบของเทคโนโลยีสารสนเทศ มุ่งเน้นการส่งเสริม สนับสนุน และพัฒนา\nพร้อมขับเคลื่อนให้เกิดนวัตกรรมใหม่ สำหรับอนาคต\nและมอบประสบการณ์แห่งความคิดสร้างสรรค์ให้กับธุรกิจต่อไป”",
                                        style: GoogleFonts.ibmPlexSansThai(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                : Container(
                    width: 1440,
                    // height: 1630,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                          Colors.white,
                          Color.fromARGB(255, 232, 242, 254)
                        ])),
                    child: Center(
                      child: Container(
                        width: 375,
                        height: 1530,
                        child: Stack(
                          children: [
                            Container(
                              width: 375,
                              // height: 1630,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                    Colors.white,
                                    Color.fromARGB(255, 232, 242, 254)
                                  ])),
                            ),
                            new Positioned(
                              top: 350,
                              left: 50,
                              // right: 1148,
                              child: Container(
                                width: 145,
                                height: 1500,
                                // color: Colors.amber,
                                child: Image.asset("/about/why/wisework.png"),
                              ),
                            ),
                            new Positioned(
                              top: 80,
                              left: 50,
                              child: Container(
                                width: 449,
                                // height: 130,
                                child: Text(
                                  "WHY?",
                                  style: GoogleFonts.bebasNeue(
                                      fontSize: 64,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 5, 45, 97)),
                                ),
                              ),
                            ),
                            new Positioned(
                              top: 135,
                              left: 50,
                              child: Container(
                                width: 449,
                                // height: 130,
                                child: Text(
                                  "WISEWORK",
                                  style: GoogleFonts.bebasNeue(
                                      fontSize: 64,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 5, 45, 97)),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 230),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 50),
                                    child: Container(
                                      width: 593,
                                      // height: 76,
                                      child: Text(
                                        'เพราะอะไร ... ทำไมต้อง "เรา"',
                                        style: GoogleFonts.inter(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w500,
                                            color:
                                                Color.fromARGB(255, 5, 45, 97)),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Container(
                                        width: 275,
                                        height: 247,
                                        decoration: BoxDecoration(
                                            color:
                                                Color.fromARGB(255, 5, 45, 97),
                                            borderRadius:
                                                BorderRadius.circular(16)),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 20),
                                              child: Container(
                                                height: 42,
                                                // color: Colors.amber,
                                                child: Text(
                                                  "50+",
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          fontSize: 36,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color: Color.fromARGB(
                                                              255,
                                                              75,
                                                              196,
                                                              213)),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "Successful Projects",
                                              style:
                                                  GoogleFonts.ibmPlexSansThai(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color.fromARGB(
                                                          255, 75, 196, 213)),
                                              textAlign: TextAlign.center,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 20),
                                              child: Text(
                                                "โครงการต่างๆ\nที่เราได้รับความไว้วางใจ\nเราพร้อมเติมเต็มสิ่งที่ดีที่สุด\nให้ธุรกิจของคุณ",
                                                style: GoogleFonts.ibmPlexSans(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.white),
                                                textAlign: TextAlign.center,
                                              ),
                                            )
                                          ],
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 50, left: 20),
                                    child: Container(
                                      width: 360,
                                      // height: 450,
                                      // color: Colors.red,
                                      child: reasonsList,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 50,
                                    ),
                                    child: Container(
                                      width: 330,
                                      // height: 201,
                                      child: Text(
                                        "“เรายังคงมองไปข้างหน้าอย่างต่อเนื่องในการสร้าง\nสรรค์บริการและผลิตภัณฑ์Software Solutions\nที่พร้อมตอบโจทย์ให้ทุกองค์กร โดยบูรณาการ\nทำข้อตกลงความร่วมมือทางวิชาการกับ\nคณะวิศวกรรมศาสตร์มหาวิทยาลัยเกษตรศาสตร์\nด้วยวิสัยทัศน์ที่เล็งเห็นถึงความสำคัญ\nในการพัฒนาระบบของเทคโนโลยีสารสนเทศ\nมุ่งเน้นการส่งเสริม สนับสนุน และพัฒนา\nพร้อมขับเคลื่อนให้เกิดนวัตกรรมใหม่\nสำหรับอนาคตและมอบประสบการณ์\nแห่งความคิดสร้างสรรค์ให้กับธุรกิจต่อไป”",
                                        style: GoogleFonts.ibmPlexSansThai(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ));
  }
}
