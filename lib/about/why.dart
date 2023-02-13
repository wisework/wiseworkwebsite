import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/responsive.dart';

class WhyPage extends StatelessWidget {
  const WhyPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> reason = [
      "เติมเต็มให้ครบทั้ง People Process และ Technology",
      "ระบบพัฒนาโดยทีมที่ปรึกษาโดยตรง มั่นใจได้ว่าระบบเป็นไปตามกฎหมายกำหนด",
      "ทีมพัฒนา และ support เป็นคนไทย ปรับให้ทันตามกฎหมายที่เปลี่ยนแปลงได้รวดเร็ว",
      "ติดตั้งได้ทั้ง Private Cloud , On-Premise, Hybrid-Cloud",
      "พัฒนา Function เพิ่มเติมได้ตามต้องการ ให้เหมาะสมกับองค์กรมากที่สุด",
      "มีการวิจัย และร่วมพัฒนา กับสถาบันฯ เพื่อให้ได้เทคโนโลยีขั้นสูงอย่างต่อเนื่อง",
      "รองรับฟังก์ชันมากที่สุด สนับสนุนผู้บริหาร และ DPO",
      "เลือกใช้ Infrastructure ที่มีความปลอดภัยสูง มีทีม support มืออาชีพ",
      "Active Dashboard แสดงและวิเคราะห์ข้อมูลเชิงลึกสำหรับผู้บริหาร"
    ];

    var reasonsList = Container(
      width: 900,
      height: 450,
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
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
          );
        },
      ),
    );
    return Center(
      child: Container(
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
      ),
    );
  }
}
