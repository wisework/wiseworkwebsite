import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/responsive.dart';

class WhoPage extends StatelessWidget {
  const WhoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            width: 1440,
            height: 81,
            color: Color.fromARGB(255, 232, 242, 254),
          ),
          Container(
            width: 1440,
            height: 655,
            color: Colors.white,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 125),
                  child: Column(
                    children: [
                      Container(
                          width: 784.45,
                          height: 527,
                          child: Image.asset("/about/who/computer.png"))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 124,
                        ),
                        child: Container(
                          width: 486,
                          height: 71,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'WHO',
                                  style: GoogleFonts.ibmPlexSansThai(
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromARGB(255, 5, 45, 97),
                                  ),
                                ),
                                TextSpan(
                                  text: ' WE',
                                  style: GoogleFonts.ibmPlexSansThai(
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromARGB(255, 75, 196, 213),
                                  ),
                                ),
                                TextSpan(
                                  text: ' ARE?',
                                  style: GoogleFonts.ibmPlexSansThai(
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromARGB(255, 5, 45, 97),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 28),
                        child: Container(
                          width: 574,
                          height: 151,
                          child: Text(
                            "“เรา คือ ผู้ให้บริการและคำปรึกษาเกี่ยวกับกฎหมาย\nและกฎระเบียบจากหน่วยงานกำกับดูแล โดยทีมนักพัฒนา\nและผู้เชี่ยวชาญมากประสบการณ์”",
                            style: GoogleFonts.ibmPlexSansThai(
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 5, 45, 97)),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                      Container(
                        width: 570,
                        height: 188,
                        child: Text.rich(TextSpan(children: [
                          TextSpan(
                              text:
                                  '\u2022 ประสบการณ์การพัฒนาระบบ และตรวจรับรองบริษัทจดทะเบียนฯ\n',
                              style: GoogleFonts.ibmPlexSansThai(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black)),
                          TextSpan(
                              text:
                                  '\u2022 เชี่ยวชาญงานตรวจสอบ และลงนามรับรองตามกฎระเบียบของ\n   หน่วยงานกำกับดูแล\n',
                              style: GoogleFonts.ibmPlexSansThai(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black)),
                          TextSpan(
                              text:
                                  '\u2022 เชี่ยวชาญงานพัฒนาโปรแกรมระบบด้านความมั่นคงปลอดภัยสารสนเทศ\n',
                              style: GoogleFonts.ibmPlexSansThai(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black)),
                          TextSpan(
                              text:
                                  '\u2022 เชี่ยวชาญงานพัฒนาโปรแกรมตามกฎหมาย กฎระเบียบ และมาตรฐานสากล\n',
                              style: GoogleFonts.ibmPlexSansThai(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black)),
                        ])),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 1440,
            height: 848,
            color: Color.fromARGB(255, 232, 242, 254),
            child: Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 81, left: 93),
                      child: Container(
                        width: 619,
                        height: 55,
                        child: Text(
                          "The Wise Works Co.,Ltd",
                          style: GoogleFonts.poppins(
                              fontSize: 48,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 5, 45, 97)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 34, left: 93),
                      child: Container(
                        width: 619,
                        height: 70,
                        child: Text(
                          "บริษัท เดอะไวซ์เวิร์ค จำกัด ก่อตั้งขึ้นเมื่อปี พ.ศ.2562\nโดยการรวมตัวของผู้เชี่ยวชาญด้านเทคโนโลยีสารสนเทศ ",
                          style: GoogleFonts.ibmPlexSansThai(
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 93),
                      child: Container(
                        width: 620.32,
                        height: 560,
                        // color: Colors.amber,
                        child: Text(
                          "เพราะข้อมูลเป็นหัวใจสำคัญในการดำเนินธุรกิจ และช่วงเวลาของ Digital\nTransformation เป็นเรื่องที่ต้องจับตามอง เพื่อเป็นการเสริมประสิทธิภาพ\nให้กับการดำเนินธุรกิจขององค์กร การใช้เทคโนโลยีเข้ามาช่วยบริหารจัดการข้อมูล\nเป็นเรื่องที่องค์กรควรให้ความสำคัญ\n\nเรามีจุดมุ่งหมายเพื่อเสริมความแข็งแกร่งให้กับธุรกิจ ลดความยุ่งยาก\nและลดค่าใช้จ่าย ขั้นตอนต่างๆ ของการพัฒนาระบบ Software และการดูแล\n(Maintenances) ของลูกค้า\n\nจากความมุ่งมั่นในการพัฒนาทำให้เราเติบโตจนเป็นบริษัทที่มีความเชี่ยวชาญในการ\nให้บริการ ด้านกฎหมาย PDPA โดยออกแบบ พัฒนา และดูแลระบบอย่างครบวงจร\nให้คำปรึกษาทุกขั้นตอน ตั้งแต่เริ่มต้นจนเสร็จสิ้นกระบวนการภายใต้กรอบของระเบียบ\nข้อบังคับทางกฎหมาย\n\nนอกจากนี้ ทางบริษัทยังมีทีมงานที่สามารถรองรับงานออกแบบ และพัฒนา Software\nทั้งแบบ On-Premise / On-Cloud ซึ่งสามารถพัฒนาร่วมกันกับหน่วยงานสารสนเทศ\n(IT) ของลูกค้า  เพื่อให้การพัฒนาระบบเป็นไปอย่างถูกต้อง ต่อเนื่องและเหมาะสมที่สุด\nสำหรับแต่ละองค์กร",
                          style: GoogleFonts.ibmPlexSansThai(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 110, right: 17),
                      child: Container(
                          width: 672,
                          height: 500,
                          child: Image.asset("/about/who/diagram.png")),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 109, left: 183),
                          child: SizedBox(
                            width: 193,
                            height: 48,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 75, 195, 211),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0)),
                              ),
                              child: Text(
                                'ติดต่อเรา',
                                style: GoogleFonts.ibmPlexSansThai(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 109, left: 19),
                          child: SizedBox(
                            width: 193,
                            height: 48,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 52, 145, 206),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0)),
                              ),
                              child: Text(
                                'ผลิตภัณฑ์ของเรา',
                                style: GoogleFonts.ibmPlexSansThai(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
