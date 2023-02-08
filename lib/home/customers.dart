import 'dart:html';

import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:google_fonts/google_fonts.dart';
import '../navbar.dart';
import '../responsive.dart';

class CustomerModel {
  final String imageUrl;
  CustomerModel(
    this.imageUrl,
  );
}

class CustomerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List customer = [
      'customer/nia.png',
      'customer/viriya.png',
      'customer/royalTH.png',
      'customer/bitkub.png',
      'customer/bdms.png',
      'customer/boonrawd.png',
      'customer/brr.png',
      'customer/pat.png',
      'customer/advice.png',
      'customer/ichitan.png',
      'customer/singha.png',
      'customer/click.png',
      'customer/p-pat.png',
      'customer/rise-consulting.png',
      'customer/meng.png',
      'customer/singha-beer.png',
      'customer/daiichi.png',
      'customer/kdn.png',
      'customer/national-economic.png',
      'customer/intrarat.png',
      'customer/singha-park.png',
      'customer/muzik.png',
      'customer/santafe.png',
      'customer/ku.png',
      'customer/sbp.png',
      'customer/win.png',
    ];
    var screenSize = MediaQuery.of(context).size;
    // if (screenSize.width > 1000) {
    //   isLargeScreen = true;

    // }
    return Center(
      child: Container(
        width: 1440,
        color: Colors.white,
        margin: EdgeInsets.all(00.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 123,
              ),
              Text(
                'ลูกค้าคนสำคัญของเรา',
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 24, 84, 110),
                  fontSize: Responsive.isDesktop(context)
                      ? 48
                      : Responsive.isTablet(context)
                          ? 35
                          : 25,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                children: [
                  Text(
                    Responsive.isDesktop(context)
                        ? 'ด้วยประสบการณ์ Software Solutions ครบวงจร เราได้รับความไว้วางใจ\nให้ดูแลธุรกิจทั้งองค์กรภาครัฐ องค์กรเอกชน ตลอดจนธุรกิจขนาดเล็ก หรือ SME '
                        : 'ด้วยประสบการณ์ Software Solutions ครบวงจร เราได้รับความไว้วางใจให้ดูแลธุรกิจทั้งองค์กรภาครัฐ องค์กรเอกชน ตลอดจนธุรกิจขนาดเล็ก หรือ SME ',
                    style: GoogleFonts.ibmPlexSansThai(
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 24, 84, 110),
                      fontSize: Responsive.isDesktop(context)
                          ? 20
                          : Responsive.isTablet(context)
                              ? 20
                              : 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  Container(
                    width: 1440,
                    child: GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: Responsive.isDesktop(context)
                              ? 5
                              : Responsive.isTablet(context)
                                  ? 3
                                  : 2,
                          crossAxisSpacing: Responsive.isDesktop(context)
                              ? 20
                              : Responsive.isTablet(context)
                                  ? 20
                                  : 10,
                          mainAxisSpacing: Responsive.isDesktop(context)
                              ? 20
                              : Responsive.isTablet(context)
                                  ? 20
                                  : 10,
                        ),
                        itemCount: customer.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            // decoration: BoxDecoration(
                            //   borderRadius: BorderRadius.circular(20),
                            //   color: Color.fromARGB(255, 178, 205, 244),
                            // ),
                            child: new Material(
                              child: new Container(
                                width: 165,
                                height: 165,
                                child: Center(
                                  child: Container(
                                    margin: EdgeInsets.all(15),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 140
                                              : Responsive.isTablet(context)
                                                  ? 140
                                                  : 100,
                                          height: Responsive.isDesktop(context)
                                              ? 140
                                              : Responsive.isTablet(context)
                                                  ? 140
                                                  : 100,
                                          child: Image.asset(customer[index]),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              color: Colors.transparent,
                            ),
                          );
                        }),
                  ),
                  Container(
                    height: 206,
                    width: 1440,
                    color: Color.fromARGB(255, 5, 45, 97),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            new SizedBox(
                              height: 206,
                              width: 1440,
                            ),
                            new Positioned(
                                top: 0,
                                right: 1350,
                                child: Container(
                                  height: 205,
                                  width: 205,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(90, 68, 137, 255),
                                      shape: BoxShape.circle),
                                )),
                            new Positioned(
                              top: 33,
                              left: 212,
                              child: Container(
                                height: 80,
                                width: 539.82,
                                // color: Colors.pink,
                                child: Text(
                                  "พร้อมวางแผนธุรกิจให้คุณ!",
                                  style: GoogleFonts.ibmPlexSansThai(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 48,
                                      color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            new Positioned(
                                // top: 99.5,
                                top: 110.5,
                                left: 213.36,
                                child: Container(
                                  height: 66.5,
                                  width: 539.82,
                                  // color: Colors.red,
                                  child: Text(
                                    "ให้องค์กรของคุณ วางแผนและจัดการกับ DATA หัวใจสำคัญของธุรกิจ ได้ถูกต้องตามกฎหมาย ปรึกษาเรา #TeamWiseWork",
                                    style: GoogleFonts.ibmPlexSansThai(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ),
                                )),
                            new Positioned(
                              left: 803.34,
                              top: 79,
                              child: SizedBox(
                                width: 193,
                                height: 48,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(255, 75, 195, 211),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0)),
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
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 51),
                    child: Container(
                      height: 900,
                      width: 1440,
                      // color: Colors.green,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 167.39, left: 124.74),
                                child: Container(
                                  height: 700,
                                  width: 583.78,
                                  // color: Colors.amber,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 70,
                                        width: 500,
                                        // color: Colors.white,
                                        child: Text(
                                          "ลูกค้าคนสำคัญของเรา",
                                          style: GoogleFonts.ibmPlexSansThai(
                                              fontSize: 48,
                                              fontWeight: FontWeight.w700,
                                              color: Color.fromARGB(
                                                  255, 24, 84, 110)),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        height: 160,
                                        width: 519,
                                        // color: Colors.black,
                                        child: Text(
                                          "จากประสบการณ์ของทีมผู้ให้คำปรึกษามามากกว่า 50+ โครงการ ทีมงานผู้เชี่ยวชาญที่พร้อมให้คำปรึกษา วางแผน และวางระบบ ตามกฎหมาย สำหรับองค์กรและธุรกิจต่างๆ  ดูแลอย่างใกล้ชิด ตลอดการใช้งาน ตั้งแต่เริ่มต้นจนเสร็จสิ้นกระบวนการ",
                                          style: GoogleFonts.ibmPlexSansThai(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  255, 87, 87, 87)),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                      Container(
                                        height: 60,
                                        width: 519,
                                        child: Text(
                                          "พร้อมให้คำปรึกษาแนะนำเพื่อสิ่งที่ดีที่สุดสำหรับธุรกิจคุณ \nปรึกษาเรา #Teamwisework",
                                          style: GoogleFonts.ibmPlexSansThai(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: Color.fromARGB(
                                                255, 75, 195, 211),
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 68.27,
                                      ),
                                      Row(
                                        children: [
                                          Wrap(children: [
                                            SizedBox(
                                              width: 191.67,
                                              height: 56.7,
                                              child: ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Color.fromARGB(
                                                          255, 75, 195, 211),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30.0)),
                                                ),
                                                child: Text(
                                                  'รับคำปรึกษา',
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.white),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 66.45,
                                            ),
                                            SizedBox(
                                              width: 191.67,
                                              height: 56.7,
                                              child: ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Color.fromARGB(
                                                          255, 231, 251, 253),
                                                  shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                          color: Color.fromARGB(
                                                              255,
                                                              75,
                                                              195,
                                                              211),
                                                          width: 2.0),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30.0)),
                                                ),
                                                child: Text(
                                                  'ลูกค้าของเรา',
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.black),
                                                ),
                                              ),
                                            ),
                                          ]),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 100.03, left: 37.92),
                                child: Container(
                                  height: 550.85,
                                  width: 553.2,
                                  child: Image.asset("/customer/team.png"),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
