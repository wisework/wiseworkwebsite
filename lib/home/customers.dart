import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wiseintern/home/carousel.dart';
import 'package:wiseintern/responsive.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';
// import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CustomerModel {
  final String imageUrl;
  CustomerModel(
    this.imageUrl,
  );
}

class CustomerPage extends StatefulWidget {
  @override
  _CustomerState createState() => _CustomerState();
}

class _CustomerState extends State<CustomerPage> {
  final CarouselController _controller = CarouselController();
  final controller =
      PageController(viewportFraction: 0.8, keepPage: true, initialPage: 0);
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    List<Card> cards = [
      Card(
        child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            width: Responsive.isTablet(context) ? 450 : 343,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 14.02,
                    ),
                    child: SizedBox(
                        width: 54.71,
                        height: 61.15,
                        child: Image.asset("/customer/Nutt.png")),
                  ),
                  Container(
                    width: Responsive.isTablet(context) ? 192 : 244,
                    height: Responsive.isTablet(context) ? 38 : 40,
                    child: Text(
                      "คุณณัฏฐ์ ณัฐนิธิการัตน์",
                      style: GoogleFonts.josefinSans(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 35, 34, 51)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: Responsive.isTablet(context) ? 182 : 244,
                    height: Responsive.isTablet(context) ? 48 : 45,
                    child: Text(
                      "ประธานเจ้าหน้าที่บริหาร\nAdvice IT Infinite Co.,Ltd.",
                      style: GoogleFonts.josefinSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 57, 128, 237)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: Responsive.isTablet(context) ? 374 : 316,
                    height: Responsive.isTablet(context) ? 70 : 100,
                    child: Text(
                      Responsive.isTablet(context)
                          ? "“เราตระหนักถึงความสำคัญการคุ้มครอง ข้อมูลส่วนบุคคล\nหนึ่งในรากฐานที่สร้างความสัมพันธ์ทางธุรกิจ\nและสร้างความน่าเชื่อถือที่ลูกค้ามีต่อเรา”"
                          : "“เราตระหนักถึงความสำคัญการคุ้มครอง\nข้อมูลส่วนบุคคล หนึ่งในรากฐาน\nที่สร้างความสัมพันธ์ทางธุรกิจ\nและสร้างความน่าเชื่อถือที่ลูกค้ามีต่อเรา”",
                      style: GoogleFonts.josefinSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 35, 34, 51)),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            )),
      ),
      Card(
        child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            width: Responsive.isTablet(context) ? 450 : 343,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 14.02,
                    ),
                    child: SizedBox(
                        width: 54.71,
                        height: 61.15,
                        child: Image.asset("/customer/Jirayuth.png")),
                  ),
                  Container(
                    width: Responsive.isTablet(context) ? 200 : 244,
                    height: Responsive.isTablet(context) ? 30 : 40,
                    child: Text(
                      "คุณจิรายุส ทรัพย์ศรีโสภา",
                      style: GoogleFonts.josefinSans(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 35, 34, 51)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: Responsive.isTablet(context) ? 182 : 244,
                    height: Responsive.isTablet(context) ? 30 : 30,
                    child: Text(
                      "Founder & Group CEO",
                      style: GoogleFonts.josefinSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 57, 128, 237)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: Responsive.isTablet(context) ? 450 : 316,
                    height: Responsive.isTablet(context) ? 120 : 170,
                    // color: Colors.amber,
                    child: Text(
                      Responsive.isTablet(context)
                          ? "BitKub ให้ความสำคัญกับการคุ้มครองข้อมูลส่วนบุคคล\nของกลุ่มผู้ใช้งานดังนั้นเราจึงให้ความสำคัญอย่างมาก\nเกี่ยวกับ การปฏิบัติตามกฎหมาย PDPAโดยเรา\nเลือกใช้ระบบโมดูลที่มีCenterเข้ามาช่วยในการบริหาร\nจัดการข้อมูลคุ้มครองข้อมูลส่วนบุคคลได้ครอบคลุม "
                          : "BitKub ให้ความสำคัญกับการคุ้มครอง\nข้อมูลส่วนบุคคลของกลุ่มผู้ใช้งานดังนั้น\nเราจึงให้ความสำคัญอย่างมากเกี่ยวกับ\nการปฏิบัติตามกฎหมาย PDPAโดยเรา\nเลือกใช้ระบบโมดูลที่มีCenterเข้ามา\nช่วยในการบริหารจัดการข้อมูล\nคุ้มครองข้อมูลส่วนบุคคลได้ครอบคลุม ",
                      style: GoogleFonts.josefinSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 35, 34, 51)),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            )),
      ),
      Card(
        child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            width: Responsive.isTablet(context) ? 450 : 343,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 14.02,
                    ),
                    child: SizedBox(
                        width: 54.71,
                        height: 61.15,
                        child: Image.asset("/customer/Ann.png")),
                  ),
                  Container(
                    width: Responsive.isTablet(context) ? 192 : 244,
                    height: Responsive.isTablet(context) ? 30 : 40,
                    child: Text(
                      "ANN LUBIN",
                      style: GoogleFonts.josefinSans(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 35, 34, 51)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: Responsive.isTablet(context) ? 182 : 244,
                    height: Responsive.isTablet(context) ? 30 : 30,
                    child: Text(
                      "Co-Funder",
                      style: GoogleFonts.josefinSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 57, 128, 237)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: Responsive.isTablet(context) ? 374 : 316,
                    height: Responsive.isTablet(context) ? 120 : 165,
                    child: Text(
                      Responsive.isTablet(context)
                          ? "เรามองเห็นภาพกว้างของการทำ PDPA ได้ชัดเจนยิ่งขึ้น\nเมื่อทีม wisework เข้ามาให้คำแนะนำและวางแผนระบบ\nทำให้เรามั่นใจว่าการดำเนินการของขั้นตอนต่างๆ เป็นไป\nตามกรอบที่กฎหมายกำหนด ครอบคลุมทุกภาคธุรกิจ"
                          : "เรามองเห็นภาพกว้างของการทำ PDPA\nได้ชัดเจนยิ่งขึ้นเมื่อทีม wisework \nเข้ามาให้คำแนะนำและวางแผนระบบ\nทำให้เรามั่นใจว่าการดำเนินการของ\nขั้นตอนต่างๆ เป็นไปตามกรอบที่กฎหมาย\nกำหนดครอบคลุมทุกภาคธุรกิจ",
                      style: GoogleFonts.josefinSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 35, 34, 51)),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            )),
      ),
      Card(
        child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            width: Responsive.isTablet(context) ? 450 : 343,
            // height: 250,

            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 14.02,
                    ),
                    child: SizedBox(
                        width: 54.71,
                        height: 61.15,
                        child: Image.asset("/customer/Amorn.png")),
                  ),
                  Container(
                    width: Responsive.isTablet(context) ? 192 : 244,
                    height: Responsive.isTablet(context) ? 30 : 40,
                    child: Text(
                      "คุณอมร ทองธิว",
                      style: GoogleFonts.josefinSans(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 35, 34, 51)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: Responsive.isTablet(context) ? 250 : 244,
                    height: Responsive.isTablet(context) ? 30 : 30,
                    child: Text(
                      "กรรมการและรองกรรมการผู้จัดการ",
                      style: GoogleFonts.josefinSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 57, 128, 237)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: Responsive.isTablet(context) ? 374 : 316,
                    height: Responsive.isTablet(context) ? 120 : 165,
                    // color: Colors.amber,
                    child: Text(
                      Responsive.isTablet(context)
                          ? "เรามองเห็นภาพกว้างของการทำ PDPA ได้ชัดเจนยิ่งขึ้น\nเมื่อทีม wisework เข้ามาให้คำแนะนำและวางแผนระบบ\nทำให้เรามั่นใจว่าการดำเนินการของขั้นตอนต่างๆ เป็นไป\nตามกรอบที่กฎหมายกำหนด ครอบคลุมทุกภาคธุรกิจ"
                          : "เรามองเห็นภาพกว้างของการทำ PDPA\nได้ชัดเจนยิ่งขึ้นเมื่อทีม wisework \nเข้ามาให้คำแนะนำและวางแผนระบบ\nทำให้เรามั่นใจว่าการดำเนินการของ\nขั้นตอนต่างๆ เป็นไปตามกรอบที่กฎหมาย\nกำหนดครอบคลุมทุกภาคธุรกิจ",
                      style: GoogleFonts.josefinSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 35, 34, 51)),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            )),
      ),
    ];

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

    // }

    return Center(
      child: Container(
        width: Responsive.isDesktop(context)
            ? 1440
            : Responsive.isTablet(context)
                ? 767
                : 375,
        color: Colors.white,
        margin: EdgeInsets.all(00.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: Responsive.isDesktop(context) ? 108 : 69,
              ),
              Text(
                'ลูกค้าคนสำคัญของเรา',
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 5, 45, 97),
                  fontSize: Responsive.isDesktop(context)
                      ? 48
                      : Responsive.isTablet(context)
                          ? 36
                          : 24,
                ),
              ),
              SizedBox(
                height: Responsive.isDesktop(context) ? 16 : 27,
              ),
              Column(
                children: [
                  Container(
                    width: Responsive.isDesktop(context)
                        ? 652
                        : Responsive.isTablet(context)
                            ? 652
                            : 329,
                    height: Responsive.isDesktop(context)
                        ? 60
                        : Responsive.isTablet(context)
                            ? 92
                            : 98,
                    child: Text(
                      Responsive.isDesktop(context)
                          ? 'ด้วยประสบการณ์ Software Solutions ครบวงจร เราได้รับความไว้วางใจ\nให้ดูแลธุรกิจทั้งองค์กรภาครัฐ องค์กรเอกชน ตลอดจนธุรกิจขนาดเล็ก หรือ SME '
                          : Responsive.isTablet(context)
                              ? 'ด้วยประสบการณ์ Software Solutions ครบวงจร เราได้รับความไว้วางใจให้ดูแลธุรกิจทั้งองค์กรภาครัฐ องค์กรเอกชน ตลอดจนธุรกิจขนาดเล็ก หรือ SME '
                              : 'ด้วยประสบการณ์ Software Solutions ครบวงจร\nเราได้รับความไว้วางใจให้ดูแล\nธุรกิจทั้งองค์กรภาครัฐ องค์กรเอกชน\nตลอดจนธุรกิจขนาดเล็ก หรือ SME ',
                      style: GoogleFonts.ibmPlexSansThai(
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 108, 108, 114),
                        fontSize: Responsive.isDesktop(context)
                            ? 20
                            : Responsive.isTablet(context)
                                ? 20
                                : 16,
                      ),
                      textAlign: Responsive.isMobile(context)
                          ? TextAlign.start
                          : TextAlign.center,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  Responsive.isDesktop(context)
                      ? Container(
                          width: 1440,
                          child: GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 5,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20,
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
                                                width: 140,
                                                height: 140,
                                                child: Image.asset(
                                                    customer[index]),
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
                        )
                      : Responsive.isTablet(context)
                          ? Stack(
                              children: [
                                Container(
                                  width: 768,
                                  height: 350,
                                  // color: Colors.purple,
                                  // color: Color.fromARGB(255, 250, 251, 252),
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CarouselSlider(
                                          options: CarouselOptions(
                                            enlargeCenterPage: false,
                                            // viewportFraction: 0.5,
                                            height: 350,
                                            autoPlay: true,
                                            onPageChanged: (index, reason) {
                                              setState(() {
                                                _current = index;
                                                // print('Current Page: $_current');
                                              });
                                            },
                                          ),
                                          items: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: GridView.count(
                                                crossAxisSpacing: 10,
                                                mainAxisSpacing: 10,
                                                crossAxisCount: 4,
                                                children:
                                                    List.generate(8, (index) {
                                                  final imageIndex = index;
                                                  return Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            5.0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: Color.fromARGB(
                                                            255, 255, 255, 255),
                                                        border: Border.all(
                                                            color:
                                                                Colors.black12),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                    0.3),
                                                            spreadRadius: 1,
                                                            blurRadius: 3,
                                                            offset: Offset(0,
                                                                3), // changes position of shadow
                                                          ),
                                                        ],
                                                      ),
                                                      height: 150,
                                                      width: 144,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(20.0),
                                                        child: Image.asset(
                                                            customer[
                                                                imageIndex]),
                                                      ),
                                                    ),
                                                  );
                                                }),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: GridView.count(
                                                crossAxisSpacing: 10,
                                                mainAxisSpacing: 10,
                                                crossAxisCount: 4,
                                                children:
                                                    List.generate(8, (index) {
                                                  final imageIndex = index + 8;
                                                  return Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            5.0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: Color.fromARGB(
                                                            255, 255, 255, 255),
                                                        border: Border.all(
                                                            color:
                                                                Colors.black12),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                    0.3),
                                                            spreadRadius: 1,
                                                            blurRadius: 3,
                                                            offset: Offset(0,
                                                                3), // changes position of shadow
                                                          ),
                                                        ],
                                                      ),
                                                      height: 150,
                                                      width: 144,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(20.0),
                                                        child: Image.asset(
                                                            customer[
                                                                imageIndex]),
                                                      ),
                                                    ),
                                                  );
                                                }),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: GridView.count(
                                                crossAxisSpacing: 10,
                                                mainAxisSpacing: 10,
                                                crossAxisCount: 4,
                                                children:
                                                    List.generate(8, (index) {
                                                  final imageIndex = index + 16;
                                                  return Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            5.0),
                                                    child: Container(
                                                      height: 150,
                                                      width: 144,
                                                      decoration: BoxDecoration(
                                                        color: Color.fromARGB(
                                                            255, 255, 255, 255),
                                                        border: Border.all(
                                                            color:
                                                                Colors.black12),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                    0.3),
                                                            spreadRadius: 1,
                                                            blurRadius: 3,
                                                            offset: Offset(0,
                                                                3), // changes position of shadow
                                                          ),
                                                        ],
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(20.0),
                                                        child: Image.asset(
                                                            customer[
                                                                imageIndex]),
                                                      ),
                                                    ),
                                                  );
                                                }),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: GridView.count(
                                                crossAxisSpacing: 10,
                                                mainAxisSpacing: 10,
                                                crossAxisCount: 4,
                                                children:
                                                    List.generate(2, (index) {
                                                  final imageIndex = index + 24;
                                                  return Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            5.0),
                                                    child: Container(
                                                      height: 150,
                                                      width: 144,
                                                      decoration: BoxDecoration(
                                                        color: Color.fromARGB(
                                                            255, 255, 255, 255),
                                                        border: Border.all(
                                                            color:
                                                                Colors.black12),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                    0.3),
                                                            spreadRadius: 1,
                                                            blurRadius: 3,
                                                            offset: Offset(0,
                                                                3), // changes position of shadow
                                                          ),
                                                        ],
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(20.0),
                                                        child: Image.asset(
                                                            customer[
                                                                imageIndex]),
                                                      ),
                                                    ),
                                                  );
                                                }),
                                              ),
                                            ),
                                          ]),
                                    ],
                                  ),
                                ),
                                new Positioned(
                                  top: 310,
                                  left: 340,
                                  child: Container(
                                    child: AnimatedSmoothIndicator(
                                        activeIndex: _current,
                                        count: 4,
                                        effect: ScaleEffect(
                                            activePaintStyle:
                                                PaintingStyle.stroke,
                                            scale: 1.4,
                                            activeStrokeWidth: 1.0,
                                            dotWidth: 16,
                                            dotHeight: 16,
                                            dotColor: Color.fromARGB(
                                                255, 34, 15, 109))),
                                  ),
                                ),
                              ],
                            )
                          : Stack(
                              children: [
                                Container(
                                  width: 375,
                                  height: 350,
                                  // color: Colors.purple,
                                  // color: Color.fromARGB(255, 250, 251, 252),
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CarouselSlider(
                                          options: CarouselOptions(
                                            enlargeCenterPage: false,
                                            // viewportFraction: 0.5,
                                            height: 350,
                                            autoPlay: true,
                                            onPageChanged: (index, reason) {
                                              setState(() {
                                                _current = index;
                                                // print('Current Page: $_current');
                                              });
                                            },
                                          ),
                                          items: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: GridView.count(
                                                crossAxisSpacing: 10,
                                                mainAxisSpacing: 10,
                                                crossAxisCount: 3,
                                                children:
                                                    List.generate(6, (index) {
                                                  final imageIndex = index;
                                                  return Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            2.0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: Color.fromARGB(
                                                            255, 255, 255, 255),
                                                        border: Border.all(
                                                            color:
                                                                Colors.black12),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                    0.3),
                                                            spreadRadius: 1,
                                                            blurRadius: 3,
                                                            offset: Offset(0,
                                                                3), // changes position of shadow
                                                          ),
                                                        ],
                                                      ),
                                                      height: 100,
                                                      width: 100,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10.0),
                                                        child: Image.asset(
                                                            customer[
                                                                imageIndex]),
                                                      ),
                                                    ),
                                                  );
                                                }),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: GridView.count(
                                                crossAxisSpacing: 10,
                                                mainAxisSpacing: 10,
                                                crossAxisCount: 3,
                                                children:
                                                    List.generate(6, (index) {
                                                  final imageIndex = index + 6;
                                                  return Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            2.0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: Color.fromARGB(
                                                            255, 255, 255, 255),
                                                        border: Border.all(
                                                            color:
                                                                Colors.black12),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                    0.3),
                                                            spreadRadius: 1,
                                                            blurRadius: 3,
                                                            offset: Offset(0,
                                                                3), // changes position of shadow
                                                          ),
                                                        ],
                                                      ),
                                                      height: 100,
                                                      width: 100,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10.0),
                                                        child: Image.asset(
                                                            customer[
                                                                imageIndex]),
                                                      ),
                                                    ),
                                                  );
                                                }),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: GridView.count(
                                                crossAxisSpacing: 10,
                                                mainAxisSpacing: 10,
                                                crossAxisCount: 3,
                                                children:
                                                    List.generate(6, (index) {
                                                  final imageIndex = index + 12;
                                                  return Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            2.0),
                                                    child: Container(
                                                      height: 100,
                                                      width: 100,
                                                      decoration: BoxDecoration(
                                                        color: Color.fromARGB(
                                                            255, 255, 255, 255),
                                                        border: Border.all(
                                                            color:
                                                                Colors.black12),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                    0.3),
                                                            spreadRadius: 1,
                                                            blurRadius: 3,
                                                            offset: Offset(0,
                                                                3), // changes position of shadow
                                                          ),
                                                        ],
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10.0),
                                                        child: Image.asset(
                                                            customer[
                                                                imageIndex]),
                                                      ),
                                                    ),
                                                  );
                                                }),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: GridView.count(
                                                crossAxisSpacing: 10,
                                                mainAxisSpacing: 10,
                                                crossAxisCount: 3,
                                                children:
                                                    List.generate(6, (index) {
                                                  final imageIndex = index + 18;
                                                  return Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            2.0),
                                                    child: Container(
                                                      height: 100,
                                                      width: 100,
                                                      decoration: BoxDecoration(
                                                        color: Color.fromARGB(
                                                            255, 255, 255, 255),
                                                        border: Border.all(
                                                            color:
                                                                Colors.black12),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                    0.3),
                                                            spreadRadius: 1,
                                                            blurRadius: 3,
                                                            offset: Offset(0,
                                                                3), // changes position of shadow
                                                          ),
                                                        ],
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10.0),
                                                        child: Image.asset(
                                                            customer[
                                                                imageIndex]),
                                                      ),
                                                    ),
                                                  );
                                                }),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: GridView.count(
                                                crossAxisSpacing: 10,
                                                mainAxisSpacing: 10,
                                                crossAxisCount: 3,
                                                children:
                                                    List.generate(2, (index) {
                                                  final imageIndex = index + 24;
                                                  return Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            2.0),
                                                    child: Container(
                                                      height: 100,
                                                      width: 100,
                                                      decoration: BoxDecoration(
                                                        color: Color.fromARGB(
                                                            255, 255, 255, 255),
                                                        border: Border.all(
                                                            color:
                                                                Colors.black12),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                    0.3),
                                                            spreadRadius: 1,
                                                            blurRadius: 3,
                                                            offset: Offset(0,
                                                                3), // changes position of shadow
                                                          ),
                                                        ],
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10.0),
                                                        child: Image.asset(
                                                            customer[
                                                                imageIndex]),
                                                      ),
                                                    ),
                                                  );
                                                }),
                                              ),
                                            ),
                                          ]),
                                    ],
                                  ),
                                ),
                                new Positioned(
                                  top: 220,
                                  left: 130,
                                  child: Container(
                                    child: AnimatedSmoothIndicator(
                                        activeIndex: _current,
                                        count: 5,
                                        effect: ScaleEffect(
                                            activePaintStyle:
                                                PaintingStyle.stroke,
                                            scale: 1.4,
                                            activeStrokeWidth: 1.0,
                                            dotWidth: 16,
                                            dotHeight: 16,
                                            dotColor: Color.fromARGB(
                                                255, 34, 15, 109))),
                                  ),
                                ),
                              ],
                            ),
                  Responsive.isDesktop(context)
                      ? Container(
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
                                            color: Color.fromARGB(
                                                90, 68, 137, 255),
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
                        )
                      : Container(
                          height: Responsive.isTablet(context) ? 360 : 286,
                          width: Responsive.isTablet(context) ? 767 : 378,
                          color: Color.fromARGB(255, 5, 45, 97),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  new SizedBox(
                                    height: Responsive.isTablet(context)
                                        ? 360
                                        : 286,
                                    width: Responsive.isTablet(context)
                                        ? 767
                                        : 378,
                                  ),
                                  new Positioned(
                                      top: 0,
                                      right: Responsive.isTablet(context)
                                          ? 600
                                          : 260,
                                      child: Container(
                                        height: Responsive.isTablet(context)
                                            ? 360
                                            : 285,
                                        width: Responsive.isTablet(context)
                                            ? 353
                                            : 285,
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                90, 68, 137, 255),
                                            shape: BoxShape.circle),
                                      )),
                                  new Positioned(
                                    top: 68,
                                    left:
                                        Responsive.isTablet(context) ? 180 : 57,
                                    child: Container(
                                      height: 48,
                                      width: 409,
                                      // color: Colors.pink,
                                      child: Text(
                                        "พร้อมวางแผนธุรกิจให้คุณ!",
                                        style: GoogleFonts.ibmPlexSansThai(
                                            fontWeight:
                                                Responsive.isTablet(context)
                                                    ? FontWeight.w700
                                                    : FontWeight.w600,
                                            fontSize:
                                                Responsive.isTablet(context)
                                                    ? 36
                                                    : 24,
                                            color: Colors.white),
                                        textAlign: Responsive.isTablet(context)
                                            ? TextAlign.center
                                            : TextAlign.start,
                                      ),
                                    ),
                                  ),
                                  new Positioned(
                                      // top: 99.5,
                                      top: Responsive.isTablet(context)
                                          ? 148
                                          : 112,
                                      left: Responsive.isTablet(context)
                                          ? 78
                                          : 58,
                                      child: Container(
                                        height: Responsive.isTablet(context)
                                            ? 70
                                            : 66,
                                        width: Responsive.isTablet(context)
                                            ? 627
                                            : 299,
                                        // color: Colors.red,
                                        child: Text(
                                          Responsive.isTablet(context)
                                              ? "ให้องค์กรของคุณ วางแผนและจัดการกับ DATA หัวใจสำคัญของธุรกิจ ได้ถูกต้องตามกฎหมาย ปรึกษาเรา #TeamWiseWork"
                                              : "ให้องค์กรของคุณ วางแผนและจัดการกับ DATA\nหัวใจสำคัญของธุรกิจ ได้ถูกต้องตามกฎหมาย\nปรึกษาเรา #TeamWiseWork",
                                          style: GoogleFonts.ibmPlexSansThai(
                                              fontSize:
                                                  Responsive.isTablet(context)
                                                      ? 20
                                                      : 14,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white),
                                          textAlign:
                                              Responsive.isTablet(context)
                                                  ? TextAlign.center
                                                  : TextAlign.start,
                                        ),
                                      )),
                                  new Positioned(
                                    left: Responsive.isTablet(context)
                                        ? 292
                                        : 117,
                                    top: Responsive.isTablet(context)
                                        ? 242
                                        : 207,
                                    child: SizedBox(
                                      width: Responsive.isTablet(context)
                                          ? 182
                                          : 146,
                                      height: Responsive.isTablet(context)
                                          ? 35
                                          : 28.04,
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
                                              fontSize: 16,
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
                  Responsive.isDesktop(context)
                      ? Padding(
                          padding: const EdgeInsets.only(top: 51),
                          child: Container(
                            height: 800,
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
                                        height: 600,
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
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                        fontSize: 48,
                                                        fontWeight:
                                                            FontWeight.w700,
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
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w400,
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
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
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
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        backgroundColor:
                                                            Color.fromARGB(255,
                                                                75, 195, 211),
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30.0)),
                                                      ),
                                                      child: Text(
                                                        'รับคำปรึกษา',
                                                        style: GoogleFonts
                                                            .ibmPlexSansThai(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                color: Colors
                                                                    .white),
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
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        backgroundColor:
                                                            Color.fromARGB(255,
                                                                231, 251, 253),
                                                        shape: RoundedRectangleBorder(
                                                            side: BorderSide(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        75,
                                                                        195,
                                                                        211),
                                                                width: 2.0),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30.0)),
                                                      ),
                                                      child: Text(
                                                        'ลูกค้าของเรา',
                                                        style: GoogleFonts
                                                            .ibmPlexSansThai(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                color: Colors
                                                                    .black),
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
                                        child:
                                            Image.asset("/customer/team.png"),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      : Responsive.isTablet(context)
                          ? Container(
                              width: 768,
                              height: 784,
                              child: Container(
                                  width: 687,
                                  height: 615.02,
                                  child: Image.asset("customer/phone.png")),
                            )
                          : new Positioned(
                              top: 85,
                              left: 20,
                              child: Container(
                                width: 334.48,
                                height: 328,
                                child: Image.asset("/customer/phone.png"),
                              ),
                            ),
                  Responsive.isDesktop(context)
                      ? Stack(
                          children: [
                            Container(
                              width: 1440,
                              height: 1040,
                              // color: Colors.purple,
                              color: Color.fromARGB(255, 250, 251, 252),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CarouselSlider(
                                    options: CarouselOptions(
                                      height: 1000,
                                      // enlargeCenterPage: true,
                                      autoPlay: false,
                                      onPageChanged: (index, reason) {
                                        setState(() {
                                          _current = index;
                                          // print('Current Page: $_current');
                                        });
                                      },
                                    ),
                                    items: [
                                      Container(
                                        width: 1400,
                                        // color: Colors.amber,
                                        child: Container(
                                          // width: 1438,

                                          margin: EdgeInsets.all(20),

                                          color: Color.fromARGB(
                                              255, 250, 251, 252),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 200,
                                                            top: 312),
                                                    child: Container(
                                                      height: 500,
                                                      width: 350,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(16),
                                                          color: Colors.white
                                                          // color: Color.fromARGB(
                                                          //     255, 239, 168, 168),
                                                          ),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 12.57,
                                                                    left:
                                                                        23.21),
                                                            child: SizedBox(
                                                                height: 80,
                                                                width: 166,
                                                                child: Image.asset(
                                                                    "/customer/bitkub.png")),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 32),
                                                            child: Container(
                                                              height: 300,
                                                              width: 286,
                                                              // color: Colors.amber,
                                                              child: Column(
                                                                children: [
                                                                  Column(
                                                                    children: [
                                                                      Stack(
                                                                        children: [
                                                                          SizedBox(
                                                                              width: 15.93,
                                                                              height: 14,
                                                                              child: Image.asset("/customer/comma.png")),
                                                                          Container(
                                                                            height:
                                                                                300,
                                                                            width:
                                                                                286,
                                                                            // color:Colors.amber,
                                                                            child:
                                                                                Column(
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsets.only(left: 32),
                                                                                  child: Text(
                                                                                    "BitKub ให้ความสำคัญกับการคุ้มครอง ข้อมูลส่วนบุคคลของกลุ่มผู้ใช้งาน ดังนั้น เราจึงให้ความสำคัญอย่างมากเกี่ยวกับ การปฏิบัติตามกฎหมาย PDPA\nโดยเราเลือกใช้ระบบโมดูลที่มี Center\nเข้ามาช่วยในการบริหารจัดการข้อมูล\nคุ้มครองข้อมูลส่วนบุคคลได้ครอบคลุม\nเพื่อให้ผู้ใช้บริการมั่นใจว่าข้อมูลของท่านจะได้รับการปกป้องและใช้งานอย่างสบายใจ",
                                                                                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400, height: 2),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          )
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Row(
                                                            children: [
                                                              Wrap(
                                                                children: [
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            39.92,
                                                                        top:
                                                                            16.28),
                                                                    child: SizedBox(
                                                                        width:
                                                                            54.77,
                                                                        height:
                                                                            57.16,
                                                                        child: Image.asset(
                                                                            "/customer/Jirayuth.png")),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 9.1,
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                            .only(
                                                                        top:
                                                                            16.28),
                                                                    child:
                                                                        Container(
                                                                      // color: Colors.pink,
                                                                      child:
                                                                          Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Container(
                                                                            child:
                                                                                Text(
                                                                              "คุณจิรายุส ทรัพย์ศรีโสภา",
                                                                              style: GoogleFonts.ibmPlexSansThai(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
                                                                              textAlign: TextAlign.start,
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            // color:Colors.white,
                                                                            child:
                                                                                Text(
                                                                              "Founder & Group CEO",
                                                                              style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w500, color: Color.fromARGB(255, 87, 87, 87)),
                                                                              textAlign: TextAlign.start,
                                                                            ),
                                                                          )
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Stack(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 380),
                                                        child: Container(
                                                          height: 160,
                                                          width: 165,
                                                          decoration: BoxDecoration(
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      155,
                                                                      192,
                                                                      234),
                                                              shape: BoxShape
                                                                  .circle),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                top: 168,
                                                                left: 30),
                                                        child: Container(
                                                          height: 340,
                                                          width: 445,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          16),
                                                              color:
                                                                  Colors.white
                                                              // color: Color.fromARGB(
                                                              //     255, 239, 168, 168),
                                                              ),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsets
                                                                        .only(
                                                                    top: 23.57,
                                                                    left:
                                                                        42.38),
                                                                child: SizedBox(
                                                                    height:
                                                                        41.85,
                                                                    width:
                                                                        197.59,
                                                                    child: Image
                                                                        .asset(
                                                                            "/customer/viriya-logo.png")),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            32,
                                                                        top:
                                                                            38.5),
                                                                child:
                                                                    Container(
                                                                  height: 128,
                                                                  width: 400,
                                                                  // color: Colors.amber,
                                                                  child: Column(
                                                                    children: [
                                                                      Column(
                                                                        children: [
                                                                          Stack(
                                                                            children: [
                                                                              SizedBox(width: 15.93, height: 14, child: Image.asset("/customer/comma.png")),
                                                                              Container(
                                                                                height: 128,
                                                                                width: 400,
                                                                                // color:Colors.amber,
                                                                                child: Column(
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: const EdgeInsets.only(left: 32),
                                                                                      child: Text(
                                                                                        "เรามองเห็นภาพกว้างของการทำ PDPA ได้ชัดเจนยิ่งขึ้น\nเมื่อทีม wisework เข้ามาให้คำแนะนำและวางแผนระบบ\nทำให้เรามั่นใจว่าการดำเนินการของขั้นตอนต่างๆ เป็นไป\nตามกรอบที่กฎหมายกำหนด ครอบคลุมทุกภาคธุรกิจ",
                                                                                        style: GoogleFonts.poppins(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400, height: 1.5),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              )
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Wrap(
                                                                    children: [
                                                                      Padding(
                                                                        padding: const EdgeInsets.only(
                                                                            left:
                                                                                39.92,
                                                                            top:
                                                                                16.28),
                                                                        child: SizedBox(
                                                                            width:
                                                                                54.77,
                                                                            height:
                                                                                57.16,
                                                                            child:
                                                                                Image.asset("/customer/Amorn.png")),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            9.1,
                                                                      ),
                                                                      Padding(
                                                                        padding:
                                                                            const EdgeInsets.only(top: 16.28),
                                                                        child:
                                                                            Container(
                                                                          // color: Colors.pink,
                                                                          child:
                                                                              Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Container(
                                                                                child: Text(
                                                                                  "คุณอมร ทองธิว",
                                                                                  style: GoogleFonts.ibmPlexSansThai(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
                                                                                  textAlign: TextAlign.start,
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                // color:Colors.white,
                                                                                child: Text(
                                                                                  "กรรมการและรองกรรมการผู้จัดการ",
                                                                                  style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w500, color: Color.fromARGB(255, 87, 87, 87)),
                                                                                  textAlign: TextAlign.start,
                                                                                ),
                                                                              )
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 32, left: 30),
                                                    child: Container(
                                                      height: 340,
                                                      width: 350,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(16),
                                                          color: Colors.white
                                                          // color: Color.fromARGB(
                                                          //     255, 239, 168, 168),
                                                          ),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 14,
                                                                    left: 37),
                                                            child: SizedBox(
                                                                height: 59,
                                                                width: 135,
                                                                child: Image.asset(
                                                                    "/customer/advice-logo.png")),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 32,
                                                                    top: 31),
                                                            child: Container(
                                                              height: 128,
                                                              width: 400,
                                                              // color: Colors.amber,
                                                              child: Column(
                                                                children: [
                                                                  Column(
                                                                    children: [
                                                                      Stack(
                                                                        children: [
                                                                          SizedBox(
                                                                              width: 15.93,
                                                                              height: 14,
                                                                              child: Image.asset("/customer/comma.png")),
                                                                          Container(
                                                                            height:
                                                                                128,
                                                                            width:
                                                                                300,
                                                                            // color:Colors.amber,
                                                                            child:
                                                                                Column(
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsets.only(left: 32),
                                                                                  child: Text(
                                                                                    "เราตระหนักถึงความสำคัญการคุ้มครอง\nข้อมูลส่วนบุคคล หนึ่งในรากฐานที่สร้าง\nความสัมพันธ์ทางธุรกิจและสร้างความ\nน่าเชื่อถือที่ลูกค้ามีต่อเรา",
                                                                                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400, height: 1.5),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          )
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Row(
                                                            children: [
                                                              Wrap(
                                                                children: [
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            39.92,
                                                                        top:
                                                                            16.28),
                                                                    child: SizedBox(
                                                                        width:
                                                                            54.77,
                                                                        height:
                                                                            57.16,
                                                                        child: Image.asset(
                                                                            "/customer/Nutt.png")),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 9.1,
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                            .only(
                                                                        top:
                                                                            16.28),
                                                                    child:
                                                                        Container(
                                                                      // color: Colors.pink,
                                                                      child:
                                                                          Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Container(
                                                                            child:
                                                                                Text(
                                                                              "คุณณัฎฐ์ ณัฐนิธิการัชต์",
                                                                              style: GoogleFonts.ibmPlexSansThai(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
                                                                              textAlign: TextAlign.start,
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            // color:Colors.white,
                                                                            child:
                                                                                Text(
                                                                              "ประธานเจ้าหน้าที่บริหาร",
                                                                              style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w500, color: Color.fromARGB(255, 87, 87, 87)),
                                                                              textAlign: TextAlign.start,
                                                                            ),
                                                                          )
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
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
                                      Container(
                                        width: 1000,
                                        color:
                                            Color.fromARGB(255, 250, 251, 252),
                                      ),
                                      Container(
                                        width: 1000,
                                        color:
                                            Color.fromARGB(255, 250, 251, 252),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            new Positioned(
                              top: 920,
                              left: 700,
                              child: Container(
                                child: AnimatedSmoothIndicator(
                                  activeIndex: _current,
                                  count: 3,
                                  effect: CustomizableEffect(
                                    activeDotDecoration: DotDecoration(
                                      width: 16,
                                      height: 6,
                                      color: Color.fromARGB(255, 1, 41, 53),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    dotDecoration: DotDecoration(
                                      width: 10,
                                      height: 4,
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(50),
                                      verticalOffset: 0,
                                    ),
                                    spacing: 6.0,
                                  ),
                                ),
                              ),
                            ),
                            new Positioned(
                                top: 64,
                                left: 165,
                                child: Container(
                                  height: 500,
                                  width: 500,
                                  child: Stack(
                                    children: [
                                      new Positioned(
                                        top: 64,
                                        child: SizedBox(
                                          height: 120,
                                          width: 142,
                                          child: Image.asset(
                                              "/customer/comma.png"),
                                        ),
                                      ),
                                      new Positioned(
                                        top: 110,
                                        left: 100,
                                        child: Container(
                                          height: 180,
                                          width: 400,
                                          child: Text(
                                            "Real Stories from\nReal Customers",
                                            style: GoogleFonts.ibmPlexSansThai(
                                                color: Color.fromARGB(
                                                    255, 24, 84, 110),
                                                fontSize: 48,
                                                fontWeight: FontWeight.w700),
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ))
                          ],
                        )
                      : Container(
                          width: Responsive.isTablet(context) ? 767 : 375,
                          height: Responsive.isTablet(context) ? 749 : 648,
                          color: Color.fromARGB(255, 5, 45, 97),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: Responsive.isTablet(context) ? 767 : 375,
                                height:
                                    Responsive.isTablet(context) ? 250 : 120,
                                // color: Color.fromARGB(255, 190, 208, 232),
                                child: Stack(
                                  children: [
                                    new Positioned(
                                      top:
                                          Responsive.isTablet(context) ? 25 : 5,
                                      right: Responsive.isTablet(context)
                                          ? 661
                                          : 309,
                                      child: SizedBox(
                                          width: Responsive.isTablet(context)
                                              ? 120
                                              : 86,
                                          height: Responsive.isTablet(context)
                                              ? 101
                                              : 72,
                                          child: Opacity(
                                            opacity: 0.5,
                                            child: Image.asset(
                                                "/customer/comma.png"),
                                          )),
                                    ),
                                    new Positioned(
                                        top: Responsive.isTablet(context)
                                            ? 126
                                            : 50,
                                        left: Responsive.isTablet(context)
                                            ? 218
                                            : 77,
                                        child: Container(
                                          width: Responsive.isTablet(context)
                                              ? 317
                                              : 211,
                                          height: Responsive.isTablet(context)
                                              ? 100
                                              : 75,
                                          // color: Colors.amber,
                                          child: Text(
                                            "Real Stories from Real Customers",
                                            style: GoogleFonts.poppins(
                                                fontSize:
                                                    Responsive.isTablet(context)
                                                        ? 36
                                                        : 24,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white),
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                              Container(
                                width: Responsive.isTablet(context) ? 450 : 305,
                                height: 70,
                                child: Text(
                                  Responsive.isTablet(context)
                                      ? "Why wisework? แบ่งปันประสบการณ์จริงจากลูกค้าคนสำคัญ"
                                      : "Why wisework? \nแบ่งปันประสบการณ์จริงจากลูกค้าคนสำคัญ",
                                  style: GoogleFonts.ibmPlexSansThai(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                  textAlign: Responsive.isTablet(context)
                                      ? TextAlign.center
                                      : TextAlign.start,
                                ),
                              ),
                              // Swiper(
                              //   itemCount: 3,
                              //   itemBuilder: (BuildContext context, int index) {
                              //     return Container(
                              //       decoration: BoxDecoration(
                              //         borderRadius: BorderRadius.circular(10),
                              //         color: Colors.white,
                              //       ),
                              //       child: Text("Card ${index + 1}"),
                              //     );
                              //   },
                              //   itemWidth: 300,
                              //   itemHeight: 200,
                              //   layout: SwiperLayout.STACK,
                              // ),
                              Container(
                                child: CarouselSlider(
                                  options: CarouselOptions(
                                    height: Responsive.isTablet(context)
                                        ? 300
                                        : 380,
                                    autoPlay: true,
                                    enlargeCenterPage: true,
                                    onPageChanged: (index, reason) {
                                      setState(() {
                                        _current = index;
                                        // print('Current Page: $_current');
                                      });
                                    },
                                  ),
                                  items: cards,
                                ),
                              ),

                              Container(
                                child: AnimatedSmoothIndicator(
                                    activeIndex: _current,
                                    count: 4,
                                    effect: ScaleEffect(
                                        activePaintStyle: PaintingStyle.stroke,
                                        scale: 1.4,
                                        activeStrokeWidth: 1.0,
                                        dotWidth: 16,
                                        dotHeight: 16,
                                        dotColor: Color.fromARGB(
                                            255, 255, 255, 255))),
                              ),
                              // Container(
                              //   child: AnimatedSmoothIndicator(
                              //     activeIndex: _current,
                              //     count: 4,
                              //     effect: CustomizableEffect(
                              //       activeDotDecoration: DotDecoration(
                              //         width: 16,
                              //         height: 6,
                              //         color: Color.fromARGB(255, 1, 41, 53),
                              //         borderRadius: BorderRadius.circular(50),
                              //       ),
                              //       dotDecoration: DotDecoration(
                              //         width: 10,
                              //         height: 4,
                              //         color: Colors.black12,
                              //         borderRadius: BorderRadius.circular(50),
                              //         verticalOffset: 0,
                              //       ),
                              //       spacing: 6.0,
                              //     ),
                              //   ),
                              // ),
                              // Container(
                              //     width: 500,
                              //     height: 200,
                              //     // color: Colors.amber,
                              //     child: CarouselSlider.builder(
                              //       itemCount: cards.length,
                              //       options: CarouselOptions(
                              //         aspectRatio: 2.0,
                              //         enlargeCenterPage: true,
                              //         autoPlay: true,
                              //       ),
                              //       itemBuilder: (ctx, index, realIdx) {
                              //         return Container(
                              //           child: Container(
                              //             height: 50,
                              //             width: 500,
                              //             color: Colors.blue,
                              //           ),
                              //         );
                              //       },
                              //       // items: []
                              //     )),
                              // Container(
                              //   width: 450,
                              //   height: 250,
                              //   child: CarouselSlider(
                              //     items: cards,
                              //     options: CarouselOptions(
                              //       height: 250,
                              //       // enlargeCenterPage: true,
                              //       autoPlay: true,
                              //       aspectRatio: 16 / 9,
                              //       viewportFraction: 0.8,
                              //       onPageChanged: (index, reason) {
                              //         // Do something when the page changes
                              //       },
                              //     ),
                              //   ),
                              // )
                            ],
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
