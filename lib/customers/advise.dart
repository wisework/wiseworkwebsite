import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/responsive.dart';

 import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/responsive.dart';
import 'package:wiseintern/model/customer_carousel.dart';

class Advise extends StatefulWidget {
  @override
  _Advise createState() => _Advise();
}

class RealStory {
  final String img;
  final String brand;
  final String story;
  RealStory(this.img, this.brand, this.story);
}

class _Advise extends State<Advise> {
  List<RealStory> stories = [
    RealStory("customer/bitkub.png", "Bitkub Online",
        "บริษัท บิทคับ แคปปิตอล กรุ๊ป โฮลดิ้งส์ จำกัด\nให้บริการเกี่ยวกับเทคโนโลยีบล็อกเชน"),
    RealStory("customer/lotus.png", "Lotus Mattress",
        "โลตัส แมทเทรส บริษัทเครื่องนอนชั้นนำคุณภาพสูง\nรายใหญ่ระดับโลก ก่อตั้งตั้งแต่ปี 1980 "),
    RealStory("customer/viriya.png", "วิริยะประกันภัย จำกัด (มหาชน)",
        "บริษัทประกันวินาศภัยอันดับหนึ่งของไทย\nครองใจยาวนานกว่า 69 ปี"),
    RealStory("customer/tvo.png", "Thai Vegetable Oil",
        "ผู้ประกอบการอุตสาหกรรมเกษตร จัดจำหน่ายสินค้า\nทั้งตลาดในประเทศ และต่างประเทศ"),
    RealStory("customer/brr.png", "น้ำตาลบุรีรัมย์ จำกัด (มหาชน) ",
        "โรงงานน้ำตาลบุรีรัมย์ เป็นหนึ่งในบรรดาผู้บุกเบิก\nอุตสาหกรรมน้ำตาลของภาคตะวันออกเฉียงเหนือ"),
    RealStory("customer/kyocera.png", "Kyocera (Thailand)",
        "ผู้ผลิตชั้นนำระดับสากล\nด้านอุปกรณ์อิเล็กทรอนิกส์จากประเทศญี่ปุ่น"),
    RealStory("customer/advice.png", "Advice IT Infinite",
        "ผู้นำด้านการจัดจำหน่ายสินค้าไอที สมาร์ทโฟน\nจำหน่ายทั่วประเทศไทย และสปป.ลาว กว่า 333 สาขา"),
    RealStory("customer/p-pat.png", "โรงพยาบาล ป.แพทย์",
        "บริษัท บิทคับ แคปปิตอล กรุ๊ป โฮลดิ้งส์ จำกัด\nให้บริการเกี่ยวกับเทคโนโลยีบล็อกเชน "),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            width: 1440,
            color: Color.fromARGB(255, 232, 242, 254),
            child: Padding(
              padding: const EdgeInsets.all(60),
              child: Container(
                child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        childAspectRatio: 405 / 390),
                    itemCount: stories.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        child: new Material(
                          child: new Container(
                            width: 405,
                            height: 390,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Container(
                                // margin: EdgeInsets.all(15),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 48, left: 6, right: 6, bottom: 12),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                          width: 150,
                                          height: 150,
                                          child: Image.asset(
                                            '${stories[index].img}',
                                            // fit: BoxFit.fill,
                                          )),
                                      Text(
                                        '${stories[index].brand}',
                                        style: GoogleFonts.ibmPlexSansThai(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 30,
                                            color: Color.fromARGB(
                                                255, 33, 31, 37)),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        '${stories[index].story}',
                                        style: GoogleFonts.ibmPlexSansThai(
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromARGB(255, 61, 58, 65),
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ),

           Padding(
            padding: const EdgeInsets.only(top: 51),
            child: Container(
               width: 1440,
              height: 750,
              // color: Colors.green,
              child: Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 150, left: 124.74),
                        child: Container(
                          height: 600,
                          width: 583.78,
                          // color: Colors.amber,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                      color: Color.fromARGB(255, 5, 45, 97)),
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
                                      color: Colors.black),
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
                                    color: Color.fromARGB(255, 75, 195, 211),
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
                                              Color.fromARGB(255, 75, 195, 211),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30.0)),
                                        ),
                                        child: Text(
                                          'รับคำปรึกษา',
                                          style: GoogleFonts.ibmPlexSansThai(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 66.45,
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
                        padding:
                            const EdgeInsets.only(top: 100.03, left: 37.92),
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
          ),
          CustomerCarousel(),
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
                            style: GoogleFonts.ibmPlexSansThai(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
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
                            backgroundColor: Color.fromARGB(255, 75, 195, 211),
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
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}