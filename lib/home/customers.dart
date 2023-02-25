import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wiseintern/home/carousel.dart';
import 'package:wiseintern/responsive.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';
// import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:wiseintern/model/customer_carousel.dart';

class CustomerModel {
  final String imageUrl;
  CustomerModel(
    this.imageUrl,
  );
}

class Customer extends StatefulWidget {
  @override
  _CustomerState createState() => _CustomerState();
}

class _CustomerState extends State<Customer> {
  CarouselController _controller = CarouselController();
  // final controller =
  //     PageController(viewportFraction: 0.8, keepPage: true, initialPage: 0);
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
                    width: Responsive.isTablet(context) ? 374 : 330,
                    // height: Responsive.isTablet(context) ? 70 : 100,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        Responsive.isTablet(context)
                            ? "“เราตระหนักถึงความสำคัญการคุ้มครอง ข้อมูลส่วนบุคคลหนึ่งในรากฐานที่สร้างความสัมพันธ์ทางธุรกิจและสร้างความน่าเชื่อถือที่ลูกค้ามีต่อเรา”"
                            : "“เราตระหนักถึงความสำคัญการคุ้มครองข้อมูลส่วนบุคคล หนึ่งในรากฐานที่สร้างความสัมพันธ์ทางธุรกิจและสร้างความน่าเชื่อถือที่ลูกค้ามีต่อเรา”",
                        style: GoogleFonts.josefinSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 35, 34, 51)),
                        textAlign: TextAlign.center,
                      ),
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
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: Responsive.isTablet(context) ? 380 : 350,
                      // height: Responsive.isTablet(context) ? 120 : 170,
                      // color: Colors.amber,
                      child: Text(
                        Responsive.isTablet(context)
                            ? "BitKub ให้ความสำคัญกับการคุ้มครองข้อมูลส่วนบุคคลของกลุ่มผู้ใช้งานดังนั้นเราจึงให้ความสำคัญอย่างมากเกี่ยวกับ การปฏิบัติตามกฎหมาย PDPAโดยเราเลือกใช้ระบบโมดูลที่มีCenterเข้ามาช่วยในการบริหารจัดการข้อมูลคุ้มครองข้อมูลส่วนบุคคลได้ครอบคลุม "
                            : "BitKub ให้ความสำคัญกับการคุ้มครองข้อมูลส่วนบุคคลของกลุ่มผู้ใช้งานดังนั้นเราจึงให้ความสำคัญอย่างมากเกี่ยวกับการปฏิบัติตามกฎหมาย PDPAโดยเราเลือกใช้ระบบโมดูลที่มีCenterเข้ามาช่วยในการบริหารจัดการข้อมูลคุ้มครองข้อมูลส่วนบุคคลได้ครอบคลุม ",
                        style: GoogleFonts.josefinSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 35, 34, 51)),
                        textAlign: TextAlign.center,
                      ),
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
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: Responsive.isTablet(context) ? 374 : 350,
                      // height: Responsive.isTablet(context) ? 120 : 165,
                      child: Text(
                        Responsive.isTablet(context)
                            ? "เรามองเห็นภาพกว้างของการทำ PDPA ได้ชัดเจนยิ่งขึ้นเมื่อทีม wisework เข้ามาให้คำแนะนำและวางแผนระบบ ทำให้เรามั่นใจว่าการดำเนินการของขั้นตอนต่างๆ เป็นไปตามกรอบที่กฎหมายกำหนด ครอบคลุมทุกภาคธุรกิจ"
                            : "เรามองเห็นภาพกว้างของการทำ PDPA ได้ชัดเจนยิ่งขึ้นเมื่อทีม wisework เข้ามาให้คำแนะนำและวางแผนระบบ ทำให้เรามั่นใจว่าการดำเนินการของขั้นตอนต่างๆ เป็นไปตามกรอบที่กฎหมายกำหนดครอบคลุมทุกภาคธุรกิจ",
                        style: GoogleFonts.josefinSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 35, 34, 51)),
                        textAlign: TextAlign.center,
                      ),
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
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: Responsive.isTablet(context) ? 374 : 350,
                      // height: Responsive.isTablet(context) ? 120 : 165,
                      // color: Colors.amber,
                      child: Text(
                        Responsive.isTablet(context)
                            ? "เรามองเห็นภาพกว้างของการทำ PDPA ได้ชัดเจนยิ่งขึ้นเมื่อทีม wisework เข้ามาให้คำแนะนำและวางแผนระบบ ทำให้เรามั่นใจว่าการดำเนินการของขั้นตอนต่างๆ เป็นไปตามกรอบที่กฎหมายกำหนด ครอบคลุมทุกภาคธุรกิจ"
                            : "เรามองเห็นภาพกว้างของการทำ PDPA ได้ชัดเจนยิ่งขึ้นเมื่อทีม wisework เข้ามาให้คำแนะนำและวางแผนระบบ ทำให้เรามั่นใจว่าการดำเนินการของขั้นตอนต่างๆ เป็นไปตามกรอบที่กฎหมายกำหนดครอบคลุมทุกภาคธุรกิจ",
                        style: GoogleFonts.josefinSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 35, 34, 51)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            )),
      ),
    ];

    List customer = [
      'customer/tvo.png',
      'customer/viriya.png',
      'customer/kyocera.png',
      'customer/advice.png',
      'customer/p-pat.png',
      'customer/lotus.png',
      'customer/brr.png',
      'customer/bitkub.png',
      // 'customer/advice.png',
      // 'customer/ichitan.png',
      // 'customer/singha.png',
      // 'customer/click.png',
      // 'customer/p-pat.png',
      // 'customer/rise-consulting.png',
      // 'customer/meng.png',
      // 'customer/singha-beer.png',
      // 'customer/daiichi.png',
      // 'customer/kdn.png',
      // 'customer/national-economic.png',
      // 'customer/intrarat.png',
      // 'customer/singha-park.png',
      // 'customer/muzik.png',
      // 'customer/santafe.png',
      // 'customer/ku.png',
      // 'customer/sbp.png',
      // 'customer/win.png',
    ];
    var screenSize = MediaQuery.of(context).size;

    // }

    return Center(
      child: Container(
        width: 1440,
        color: Colors.white,
        child: Center(
          child: Container(
            // width: Responsive.isDesktop(context)
            //     ? 1440
            //     : Responsive.isTablet(context)
            //         ? 767
            //         : 375,
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
                          ? Column(
                              children: [
                                Container(
                                  width: 1440,
                                  // color: Colors.amber,
                                  child: GridView.builder(
                                      shrinkWrap: true,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 4,
                                        crossAxisSpacing: 20,
                                        mainAxisSpacing: 20,
                                      ),
                                      itemCount: customer.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Container(
                                          // decoration: BoxDecoration(
                                          //   borderRadius: BorderRadius.circular(20),
                                          //   color: Color.fromARGB(255, 178, 205, 244),
                                          // ),
                                          child: new Material(
                                            child: new Container(
                                              width: 200,
                                              height: 200,
                                              child: Center(
                                                child: Container(
                                                  margin: EdgeInsets.all(15),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: <Widget>[
                                                      SizedBox(
                                                        width: 145,
                                                        height: 145,
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
                                ),
                                SizedBox(
                                  height: 40,
                                )
                              ],
                            )
                          : Responsive.isTablet(context)
                              ? Container(
                                  width: 768,
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(30),
                                      child: Container(
                                        width: 768,
                                        child: GridView.builder(
                                            shrinkWrap: true,
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 4,
                                              crossAxisSpacing: 20,
                                              mainAxisSpacing: 20,
                                            ),
                                            itemCount: customer.length,
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              return Container(
                                                // decoration: BoxDecoration(
                                                //   borderRadius: BorderRadius.circular(20),
                                                //   color: Color.fromARGB(255, 178, 205, 244),
                                                // ),
                                                child: new Material(
                                                  child: new Container(
                                                    decoration: BoxDecoration(
                                                      color: Color.fromARGB(
                                                          255, 255, 255, 255),
                                                      border: Border.all(
                                                          color:
                                                              Colors.black12),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.grey
                                                              .withOpacity(0.3),
                                                          spreadRadius: 1,
                                                          blurRadius: 3,
                                                          offset: Offset(0,
                                                              3), // changes position of shadow
                                                        ),
                                                      ],
                                                    ),
                                                    width: 150,
                                                    height: 150,
                                                    child: Center(
                                                      child: Container(
                                                        margin:
                                                            EdgeInsets.all(15),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: <Widget>[
                                                            SizedBox(
                                                              width: 100,
                                                              height: 100,
                                                              child: Image.asset(
                                                                  customer[
                                                                      index]),
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
                                    ),
                                  ),
                                )
                              : Padding(
                                  padding: const EdgeInsets.all(30),
                                  child: Container(
                                    width: 368,
                                    child: GridView.builder(
                                        shrinkWrap: true,
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3,
                                          crossAxisSpacing: 20,
                                          mainAxisSpacing: 20,
                                        ),
                                        itemCount: customer.length,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return Container(
                                            // decoration: BoxDecoration(
                                            //   borderRadius: BorderRadius.circular(20),
                                            //   color: Color.fromARGB(255, 178, 205, 244),
                                            // ),
                                            child: new Material(
                                              child: new Container(
                                                decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 255, 255, 255),
                                                  border: Border.all(
                                                      color: Colors.black12),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(0.3),
                                                      spreadRadius: 1,
                                                      blurRadius: 3,
                                                      offset: Offset(0,
                                                          3), // changes position of shadow
                                                    ),
                                                  ],
                                                ),
                                                width: 100,
                                                height: 100,
                                                child: Center(
                                                  child: Container(
                                                    // margin: EdgeInsets.all(15),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: <Widget>[
                                                        SizedBox(
                                                          width: 60,
                                                          height: 60,
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
                                  ),
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
                                        left: 316,
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
                                          left: 316,
                                          child: Container(
                                            height: 66.5,
                                            width: 539.82,
                                            // color: Colors.red,
                                            child: Text(
                                              "ให้องค์กรของคุณ วางแผนและจัดการกับ DATA หัวใจสำคัญของธุรกิจ ได้ถูกต้องตามกฎหมาย ปรึกษาเรา #TeamWiseWork",
                                              style:
                                                  GoogleFonts.ibmPlexSansThai(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.white),
                                            ),
                                          )),
                                      new Positioned(
                                        left: 944,
                                        top: 79,
                                        child: SizedBox(
                                          width: 193,
                                          height: 48,
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Color.fromARGB(
                                                  255, 75, 195, 211),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30.0)),
                                            ),
                                            child: Text(
                                              'ติดต่อเรา',
                                              style:
                                                  GoogleFonts.ibmPlexSansThai(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w600,
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
                          : Stack(
                              children: [
                                Container(
                                  width: 1440,
                                  color: Color.fromARGB(255, 5, 45, 97),
                                  child: Center(
                                    child: Container(
                                      height: Responsive.isTablet(context)
                                          ? 360
                                          : 286,
                                      width: Responsive.isTablet(context)
                                          ? 767
                                          : 378,
                                      child: Column(
                                        children: [
                                          Stack(
                                            children: [
                                              new SizedBox(
                                                height:
                                                    Responsive.isTablet(context)
                                                        ? 360
                                                        : 286,
                                                width: 1440,
                                              ),
                                              // new Positioned(
                                              //     top: 0,
                                              //     right:
                                              //         Responsive.isTablet(context)
                                              //             ? 600
                                              //             : 260,
                                              //     child: Container(
                                              //       height:
                                              //           Responsive.isTablet(context)
                                              //               ? 360
                                              //               : 285,
                                              //       width:
                                              //           Responsive.isTablet(context)
                                              //               ? 353
                                              //               : 285,
                                              //       decoration: BoxDecoration(
                                              //           color: Color.fromARGB(
                                              //               90, 68, 137, 255),
                                              //           shape: BoxShape.circle),
                                              //     )),
                                              new Positioned(
                                                top: 68,
                                                left:
                                                    Responsive.isTablet(context)
                                                        ? 180
                                                        : 57,
                                                child: Container(
                                                  height: 48,
                                                  width: 409,
                                                  // color: Colors.pink,
                                                  child: Text(
                                                    "พร้อมวางแผนธุรกิจให้คุณ!",
                                                    style: GoogleFonts
                                                        .ibmPlexSansThai(
                                                            fontWeight: Responsive
                                                                    .isTablet(
                                                                        context)
                                                                ? FontWeight
                                                                    .w700
                                                                : FontWeight
                                                                    .w600,
                                                            fontSize: Responsive
                                                                    .isTablet(
                                                                        context)
                                                                ? 36
                                                                : 24,
                                                            color:
                                                                Colors.white),
                                                    textAlign:
                                                        Responsive.isTablet(
                                                                context)
                                                            ? TextAlign.center
                                                            : TextAlign.start,
                                                  ),
                                                ),
                                              ),
                                              new Positioned(
                                                  // top: 99.5,
                                                  top: Responsive.isTablet(
                                                          context)
                                                      ? 148
                                                      : 112,
                                                  left: Responsive.isTablet(
                                                          context)
                                                      ? 78
                                                      : 58,
                                                  child: Container(
                                                    height: Responsive.isTablet(
                                                            context)
                                                        ? 70
                                                        : 66,
                                                    width: Responsive.isTablet(
                                                            context)
                                                        ? 627
                                                        : 299,
                                                    // color: Colors.red,
                                                    child: Text(
                                                      Responsive.isTablet(
                                                              context)
                                                          ? "ให้องค์กรของคุณ วางแผนและจัดการกับ DATA หัวใจสำคัญของธุรกิจ ได้ถูกต้องตามกฎหมาย ปรึกษาเรา #TeamWiseWork"
                                                          : "ให้องค์กรของคุณ วางแผนและจัดการกับ DATA\nหัวใจสำคัญของธุรกิจ ได้ถูกต้องตามกฎหมาย\nปรึกษาเรา #TeamWiseWork",
                                                      style: GoogleFonts
                                                          .ibmPlexSansThai(
                                                              fontSize: Responsive
                                                                      .isTablet(
                                                                          context)
                                                                  ? 20
                                                                  : 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color:
                                                                  Colors.white),
                                                      textAlign:
                                                          Responsive.isTablet(
                                                                  context)
                                                              ? TextAlign.center
                                                              : TextAlign.start,
                                                    ),
                                                  )),
                                              new Positioned(
                                                left:
                                                    Responsive.isTablet(context)
                                                        ? 292
                                                        : 117,
                                                top:
                                                    Responsive.isTablet(context)
                                                        ? 242
                                                        : 207,
                                                child: SizedBox(
                                                  width: Responsive.isTablet(
                                                          context)
                                                      ? 182
                                                      : 146,
                                                  height: Responsive.isTablet(
                                                          context)
                                                      ? 35
                                                      : 28.04,
                                                  child: ElevatedButton(
                                                    onPressed: () {},
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          Color.fromARGB(255,
                                                              75, 195, 211),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          30.0)),
                                                    ),
                                                    child: Text(
                                                      'ติดต่อเรา',
                                                      style: GoogleFonts
                                                          .ibmPlexSansThai(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // width: 1440,
                                  child: new Positioned(
                                    top: 0,
                                    left: 0,
                                    // right: 1,
                                    child: Container(
                                      height: Responsive.isTablet(context)
                                          ? 360
                                          : 285,
                                      width: Responsive.isTablet(context)
                                          ? 175
                                          : 140,
                                      // color: Colors.white,
                                      child: Image.asset(
                                        "customer/half.png",
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                      Responsive.isDesktop(context)
                          ? Padding(
                              padding: const EdgeInsets.only(top: 51),
                              child: Container(
                                height: 650,
                                width: 1440,
                                // color: Colors.green,
                                child: Stack(
                                  children: [
                                    Container(
                                      width: 1440,
                                      height: 670,
                                    ),
                                    new Positioned(
                                      top: 20,
                                      left: 100,
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 52, 145, 206),
                                            shape: BoxShape.circle),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 100, left: 124.74),
                                              child: Container(
                                                // height: 670,
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
                                                        style: GoogleFonts
                                                            .ibmPlexSansThai(
                                                                fontSize: 48,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        24,
                                                                        84,
                                                                        110)),
                                                        textAlign:
                                                            TextAlign.start,
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
                                                        style: GoogleFonts
                                                            .ibmPlexSansThai(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        87,
                                                                        87,
                                                                        87)),
                                                        textAlign:
                                                            TextAlign.start,
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 60,
                                                      width: 519,
                                                      child: Text(
                                                        "พร้อมให้คำปรึกษาแนะนำเพื่อสิ่งที่ดีที่สุดสำหรับธุรกิจคุณ \nปรึกษาเรา #Teamwisework",
                                                        style: GoogleFonts
                                                            .ibmPlexSansThai(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Color.fromARGB(
                                                              255,
                                                              75,
                                                              195,
                                                              211),
                                                        ),
                                                        textAlign:
                                                            TextAlign.start,
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
                                                            child:
                                                                ElevatedButton(
                                                              onPressed: () {},
                                                              style:
                                                                  ElevatedButton
                                                                      .styleFrom(
                                                                backgroundColor:
                                                                    Color.fromARGB(
                                                                        255,
                                                                        75,
                                                                        195,
                                                                        211),
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            30.0)),
                                                              ),
                                                              child: Text(
                                                                'รับคำปรึกษา',
                                                                style: GoogleFonts.ibmPlexSansThai(
                                                                    fontSize:
                                                                        20,
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
                                                            child:
                                                                ElevatedButton(
                                                              onPressed: () {},
                                                              style:
                                                                  ElevatedButton
                                                                      .styleFrom(
                                                                backgroundColor:
                                                                    Color.fromARGB(
                                                                        255,
                                                                        231,
                                                                        251,
                                                                        253),
                                                                shape: RoundedRectangleBorder(
                                                                    side: BorderSide(
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            75,
                                                                            195,
                                                                            211),
                                                                        width:
                                                                            2.0),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            30.0)),
                                                              ),
                                                              child: Text(
                                                                'ลูกค้าของเรา',
                                                                style: GoogleFonts.ibmPlexSansThai(
                                                                    fontSize:
                                                                        20,
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
                                      ],
                                    ),
                                    new Positioned(
                                      left: 700,
                                      child: Container(
                                          width: 650,
                                          // color: Colors.pink,
                                          child: Image.asset(
                                              "/customer/mobiles.png")),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          : Responsive.isTablet(context)
                              ? Center(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 40,
                                      ),
                                      Container(
                                        width: 768,

                                        // height: 784,
                                        child: Container(
                                            width: 692,
                                            height: 676,
                                            child: Image.asset(
                                                "customer/mobiles.png")),
                                      ),
                                      Container(
                                        width: 500,
                                        // color: Colors.amber,
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
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 30),
                                        child: Container(
                                          width: 519,
                                          // color: Colors.amber,
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
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 30),
                                        child: Container(
                                          width: 519,
                                          // color: Colors.amber,
                                          child: Text(
                                            "พร้อมให้คำปรึกษาแนะนำเพื่อสิ่งที่ดีที่สุดสำหรับธุรกิจคุณ\nปรึกษาเรา #Teamwisework",
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400,
                                                color: Color.fromARGB(
                                                    255, 75, 195, 211)),
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 300),
                                        child: Container(
                                          width: 768,
                                          child: Row(
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
                                                      shape:
                                                          RoundedRectangleBorder(
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
                                                              color:
                                                                  Colors.white),
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
                                                      shape:
                                                          RoundedRectangleBorder(
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
                                                              color:
                                                                  Colors.black),
                                                    ),
                                                  ),
                                                ),
                                              ]),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 50,
                                      ),
                                    ],
                                  ),
                                )
                              : Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 40),
                                      child: Container(
                                        width: 327,
                                        height: 318,
                                        child: Image.asset(
                                            "/customer/mobiles.png"),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      width: 250,
                                      // color: Colors.amber,
                                      child: Text(
                                        "ลูกค้าคนสำคัญของเรา",
                                        style: GoogleFonts.ibmPlexSansThai(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromARGB(
                                                255, 24, 84, 110)),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Container(
                                        width: 313,
                                        // color: Colors.amber,
                                        child: Text(
                                          "จากประสบการณ์ของทีมผู้ให้คำปรึกษามามาก\nกว่า 50+ โครงการ ทีมงานผู้เชี่ยวชาญที่พร้อม\nให้คำปรึกษา วางแผน และวางระบบ ตามกฎหมาย\nสำหรับองค์กรและธุรกิจต่างๆ  ดูแลอย่างใกล้ชิด\nตลอดการใช้งาน ตั้งแต่เริ่มต้นจนเสร็จสิ้น\nกระบวนการ",
                                          style: GoogleFonts.ibmPlexSansThai(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  255, 87, 87, 87)),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Container(
                                        width: 313,
                                        // color: Colors.amber,
                                        child: Text(
                                          "พร้อมให้คำปรึกษาแนะนำเพื่อสิ่งที่ดีที่สุดสำหรับ\nธุรกิจคุณปรึกษาเรา #Teamwisework",
                                          style: GoogleFonts.ibmPlexSansThai(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  255, 75, 195, 211)),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 50,
                                    ),
                                    SizedBox(
                                      width: 191.67,
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
                                          'รับคำปรึกษา',
                                          style: GoogleFonts.ibmPlexSansThai(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    SizedBox(
                                      width: 191.67,
                                      height: 48,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Color.fromARGB(
                                              255, 231, 251, 253),
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                  color: Color.fromARGB(
                                                      255, 75, 195, 211),
                                                  width: 2.0),
                                              borderRadius:
                                                  BorderRadius.circular(30.0)),
                                        ),
                                        child: Text(
                                          'ลูกค้าของเรา',
                                          style: GoogleFonts.ibmPlexSansThai(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 50,
                                    ),
                                  ],
                                ),
                      Responsive.isDesktop(context)
                          ? Stack(
                              children: [
                                Row(
                                  children: [CustomerCarousel()],
                                ),
                                new Positioned(
                                  top: 500,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(50.0),
                                        child: Container(
                                          width: 59,
                                          height: 61,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.transparent,
                                              border: Border.all(
                                                  color: Color.fromARGB(
                                                      255, 74, 195, 212))),
                                          child: IconButton(
                                            icon: Icon(
                                                Icons.keyboard_arrow_left,
                                                size: 32,
                                                color: Color.fromARGB(
                                                    255, 77, 193, 216)),
                                            onPressed: () {
                                              _controller.previousPage(
                                                duration:
                                                    Duration(milliseconds: 300),
                                                curve: Curves.ease,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 1115,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(50.0),
                                        child: Container(
                                          width: 59,
                                          height: 61,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.transparent,
                                              border: Border.all(
                                                  color: Color.fromARGB(
                                                      255, 74, 195, 212))),
                                          child: IconButton(
                                            icon: Icon(
                                                Icons.keyboard_arrow_right,
                                                size: 32,
                                                color: Color.fromARGB(
                                                    255, 77, 193, 216)),
                                            onPressed: () {
                                              _controller.nextPage(
                                                duration:
                                                    Duration(milliseconds: 300),
                                                curve: Curves.ease,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          : Stack(
                              children: [
                                Container(
                                  width: 1440,
                                  child: Container(
                                    width: Responsive.isTablet(context)
                                        ? 767
                                        : 375,
                                    // height: Responsive.isTablet(context)
                                    //     ? 749
                                    //     : 648,
                                    color: Color.fromARGB(255, 5, 45, 97),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: Responsive.isTablet(context)
                                              ? 767
                                              : 375,
                                          height: Responsive.isTablet(context)
                                              ? 250
                                              : 120,
                                          // color: Color.fromARGB(255, 190, 208, 232),
                                          child: Stack(
                                            children: [
                                              new Positioned(
                                                  top: Responsive.isTablet(
                                                          context)
                                                      ? 126
                                                      : 50,
                                                  left: Responsive.isTablet(
                                                          context)
                                                      ? 218
                                                      : 77,
                                                  child: Container(
                                                    width: Responsive.isTablet(
                                                            context)
                                                        ? 317
                                                        : 211,
                                                    height: Responsive.isTablet(
                                                            context)
                                                        ? 100
                                                        : 75,
                                                    // color: Colors.amber,
                                                    child: Text(
                                                      "Real Stories from Real Customers",
                                                      style: GoogleFonts.poppins(
                                                          fontSize: Responsive
                                                                  .isTablet(
                                                                      context)
                                                              ? 36
                                                              : 24,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.white),
                                                    ),
                                                  ))
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: Responsive.isTablet(context)
                                              ? 450
                                              : 305,
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
                                            textAlign:
                                                Responsive.isTablet(context)
                                                    ? TextAlign.center
                                                    : TextAlign.start,
                                          ),
                                        ),
                                        Container(
                                          width: 1440,
                                          child: CarouselSlider(
                                            options: CarouselOptions(
                                              viewportFraction:
                                                  Responsive.isTablet(context)
                                                      ? (350 / 600)
                                                      : 0.76,
                                              height:
                                                  Responsive.isTablet(context)
                                                      ? 350
                                                      : 400,
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
                                        SizedBox(
                                          height: 25,
                                        ),
                                        Container(
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
                                                      255, 255, 255, 255))),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                new Positioned(
                                  top: Responsive.isTablet(context) ? 25 : 15,
                                  right:
                                      Responsive.isTablet(context) ? 661 : 309,
                                  child: SizedBox(
                                      width: Responsive.isTablet(context)
                                          ? 120
                                          : 86,
                                      height: Responsive.isTablet(context)
                                          ? 101
                                          : 72,
                                      child: Opacity(
                                        opacity: 0.5,
                                        child:
                                            Image.asset("/customer/comma.png"),
                                      )),
                                ),
                              ],
                            )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
