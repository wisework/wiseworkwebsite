import 'package:flutter/material.dart';
import 'package:wiseintern/navbar.dart';
import 'package:wiseintern/responsive.dart';
import 'package:wiseintern/menu_drawer.dart';
import 'package:go_router/go_router.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/home/features.dart';
import 'package:wiseintern/home/footer.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Pdmanagement extends StatefulWidget {
  @override
  _PdmanagementPageState createState() => _PdmanagementPageState();
}

class _PdmanagementPageState extends State<Pdmanagement> {
  // int _currentIndex = 0;

  // void onTabTapped(int index) {
  //   setState(() {
  //     _currentIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: Responsive.isDesktop(context) ? 80 : 60,
          automaticallyImplyLeading: !Responsive.isDesktop(context),
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color.fromARGB(255, 52, 144, 206),
          elevation: 0,
          centerTitle: true,
          title: !Responsive.isDesktop(context)
              ? Padding(
                  padding: const EdgeInsets.all(20),
                  child: SizedBox(
                    height: 60,
                    width: 100,
                    child: GestureDetector(
                      onTap: () => context.go('/'),
                      child: Image.asset(
                        'assets/logo.png',
                      ),
                    ),
                  ),
                )
              : NavBar()),
      drawer: MenuDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PD(), 
            Check(), 
            Example(), 
            FeaturesPage(), 
            Footer()
            ],
        ),
      ),
    );
  }
}

class PD extends StatelessWidget {
  const PD({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 1440,
        child: 
        Responsive.isDesktop(context)
        ?Center(
          child: Container(
            width: 1440,
            height: 668,
            color: Color.fromARGB(255, 255, 255, 255),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 121, left: 150),
                      child: Container(
                        width: 553,
                        // color: Colors.amber,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "KEY FEATURES",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 0, 112, 240)),
                              textAlign: TextAlign.start,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Text(
                                "Pdmanagement",
                                style: GoogleFonts.poppins(
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromARGB(255, 5, 45, 97)),
                                textAlign: TextAlign.start,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 32),
                              child: Text(
                                "จัดการบันทึกรายการข้อมูลส่วนบุคคล\nและการไหลของข้อมูล (Data Flow)",
                                style: GoogleFonts.ibmPlexSansThai(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 63),
                              child: Text(
                                "รองรับการใช้สิทธิของเจ้าของข้อมูลส่วนบุคคลตามกฎ\nหมายมาตรา ได้แก่ มาตรา 24 , มาตรา 26, มาตรา 30,\nมาตรา 31, มาตรา 32, มาตรา 36(1), มาตรา 39",
                                style: GoogleFonts.ibmPlexSansThai(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 23, 24, 26)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 64, left: 72),
                      child: SizedBox(
                          width: 540,
                          height: 540,
                          child: Image.asset("assets/features/pdcard.png")),
                    )
                  ],
                )
              ],
            ),
          ),
        )
        :Responsive.isTablet(context)
        ?Container(
          width: 1440,
          color: Colors.white,
          child: Center(
            child: Container(
              width: 768,
              // height: 502,
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 23.5, left: 50),
                        child: Container(
                          width: 367,
                          // color: Colors.amber,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "KEY FEATURES",
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 0, 112, 240)),
                                textAlign: TextAlign.start,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Text(
                                  "PD\nManagement",
                                  style: GoogleFonts.poppins(
                                      fontSize: 44,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromARGB(255, 5, 45, 97)),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  "จัดการบันทึกรายการข้อมูลส่วนบุคคล\nและการไหลของข้อมูล (Data Flow)",
                                  style: GoogleFonts.ibmPlexSansThai(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  "รองรับการใช้สิทธิของเจ้าของข้อมูลส่วนบุคคล\nตามกฎหมายมาตรา ได้แก่ มาตรา 24 , มาตรา\n26, มาตรา 30,มาตรา 31, มาตรา 32, มาตรา\n36(1), มาตรา 39",
                                  style: GoogleFonts.ibmPlexSansThai(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 23, 24, 26)),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 70, left: 20),
                        child: SizedBox(
                            width: 275,
                            height: 270,
                            child: Image.asset("assets/features/pdcard.png")),
                      ),
                      SizedBox(
                                height: 30,
                              )
                    ],
                  )
                ],
              ),
            
            ),
          ),
        )
        :Container(
          width: 1440,
          color: Colors.white,
          child: Center(
            child: Container(
              width: 375,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30,left: 30),
                    child: Text("KEY FEATURES",
                    style: GoogleFonts.ibmPlexSansThai(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 0, 112, 240)
                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8,left: 30),
                    child: Text("PD Management",
                    style: GoogleFonts.ibmPlexSansThai(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 5, 45, 97)
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 30),
                    child: Text("จัดการบันทึกรายการข้อมูลส่วนบุคคล\nและการไหลของข้อมูล (Data Flow) ",
                      style: GoogleFonts.ibmPlexSansThai(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black
                      ),textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 30,bottom: 30),
                    child: Text("รองรับการใช้สิทธิของเจ้าของข้อมูลส่วนบุคคล\nตามกฎหมายมาตรา ได้แก่ มาตรา 24 ,\nมาตรา 26, มาตรา 30, มาตรา 31, มาตรา\n32, มาตรา 36(1), มาตรา 39",
                      style: GoogleFonts.ibmPlexSansThai(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black
                        ),textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Center(
                      child: SizedBox(
                        height: 270,
                        child: Image.asset("assets/features/pdcard.png",fit: BoxFit.fitHeight,)),
                    ),
                  )
                ],
              ),
            )
            ),
        )
      ),
    );
  }
}

class Check extends StatefulWidget {
  const Check({Key? key}) : super(key: key);

  @override
  _CheckState createState() => _CheckState();
}

class _CheckState extends State<Check> {
  int? hoveredIndex;
  List<String> checkDT = [
    "บันทึกรายการข้อมูลส่วนบุคคล โดยจัดการรายละเอียดของรายการ และสามารถระบุรายละเอียดต่างๆ ได้อย่างครบถ้วนตาม พรบ.คุ้มครองข้อมูลส่วนบุคคล 2562 ตามมาตรา (39)",
    "บันทึกรายการข้อมูลส่วนบุคคลและรายละเอียดที่เกี่ยวข้องกับบันทึก เช่น แหล่งที่มาของข้อมูลส่วนบุคคล วัตถุประสงค์ของการประมวลผล\nมาตรการรักษาความมั่นปลอดภัย สถานที่จัดเก็บ สัญญาการประมวลผล การอ้างอิงการขอความยินยอมจากเจ้าของข้อมูลส่วนบุคคล",
    "ระบุหน่วยงานที่เกี่ยวข้อง (สามารถแยกแต่ละหน่วยงาน) ในการนําข้อมูลส่วนบุคคลไปใช้ โดยสามารถกําหนดได้ว่าเป็นการ เก็บรวบรวม นําไปใช้ หรือเปิดเผย",
    "กําหนดฐานกฎหมาย (Lawful Basis) ที่ใช้ประมวลผลข้อมูลส่วนบุคคล และเหตุปฏิเสธคําขอหรือการคัดค้านคําขอที่ใช้ ในแต่ละรายการข้อมูลส่วนบุคคล",
    "กําหนดสัญญาการประมวลผลข้อมูลส่วนบุคคล สําหรับรายการข้อมูลส่วนบุคคลที่มีการส่งออกไปยังผู้ประมวลผลข้อมูล",
    "กําหนดผู้ควบคุมข้อมูลส่วนบุคคล เพื่อระบุ และเจาะจงผู้ดูแลข้อมูลในแต่ละบันทึกรายการได้",
    "สุ่มตรวจสอบข้อมูลส่วนบุคคลในฐานข้อมูล อาจเป็นข้อมูลส่วนบุคคล โดยกําหนดเป็นเปอร์เซ็นต์ที่ต้องการ และระบบสามารถคาดการณ์ออกมาเป็นเปอร์เซ็นต์ได้",
    "รองรับการทำงานของ DPO ที่สามารถมองเห็นภาพรวมและสอบทานกลับได้เมื่อต้องการทราบข้อมูล",
    "จัดทำผังการไหลของข้อมูลและแสดงผลความเชื่อมโยง (Data Flow) ถึงหน่วยงานที่ รับ-ส่งข้อมูลส่วนบุคคล เป็นลําดับ ก่อน-หลัง โดยระบบจะเชื่อมโยงข้อมูลที่มีอยู่ให้อย่างอัตโนมัติ",
    "แสดงรายงานสรุปบันทึกรายการข้อมูลส่วนบุคคลเป็นแผนภาพ (Dashboard) โดยสามารถรองรับการจัดเรียง (Sort), ค้นหา (Search) และ กรอง (Filter) ได้",
    "เชื่อมต่อกับระบบอื่นๆ ได้ ผ่าน REST API และนําข้อมูลออกมาในรูปแบบ Excel file ",
    "รองรับการเชื่อมต่อกับ MS SQL หรือ MySQL เพื่อสุ่มตรวจสอบข้อมูลในฐานข้อมูลส่วนบุคคล โดยรองรับข้อมูลเริ่มต้นที่ 10-500 GB ตามขนาดของข้อมูล"
  ];
  List<String> checkTB = [
    "บันทึกรายการข้อมูลส่วนบุคคล โดยจัดการรายละเอียดของรายการ และสามารถระบุ\nรายละเอียดต่างๆ ได้อย่างครบถ้วนตาม พรบ.คุ้มครองข้อมูลส่วนบุคคล 2562 ตามมาตรา (39)",
    "บันทึกรายการข้อมูลส่วนบุคคลและรายละเอียดที่เกี่ยวข้องกับบันทึก เช่น แหล่งที่มาของข้อมูล\nส่วนบุคคล วัตถุประสงค์ของการประมวลผล มาตรการรักษาความมั่นปลอดภัย สถานที่จัดเก็บ\nสัญญาการประมวลผล การอ้างอิงการขอความยินยอมจากเจ้าของข้อมูลส่วนบุคคล",
    "ระบุหน่วยงานที่เกี่ยวข้อง (สามารถแยกแต่ละหน่วยงาน) ในการนําข้อมูลส่วนบุคคลไปใช้\nโดยสามารถกําหนดได้ว่าเป็นการ เก็บรวบรวม นําไปใช้ หรือเปิดเผย",
    "กําหนดฐานกฎหมาย (Lawful Basis) ที่ใช้ประมวลผลข้อมูลส่วนบุคคล และเหตุปฏิเสธคําขอ\nหรือการคัดค้านคําขอที่ใช้ ในแต่ละรายการข้อมูลส่วนบุคคล",
    "กําหนดสัญญาการประมวลผลข้อมูลส่วนบุคคล สําหรับรายการข้อมูลส่วนบุคคลที่มีการ\nส่งออกไปยังผู้ประมวลผลข้อมูล",
    "กําหนดผู้ควบคุมข้อมูลส่วนบุคคล เพื่อระบุ และเจาะจงผู้ดูแลข้อมูลในแต่ละบันทึกรายการได้",
    "สุ่มตรวจสอบข้อมูลส่วนบุคคลในฐานข้อมูล อาจเป็นข้อมูลส่วนบุคคล โดยกําหนดเป็นเปอร์เซ็นต์ที่ต้องการ\nและระบบสามารถคาดการณ์ออกมาเป็นเปอร์เซ็นต์ได้",
    "รองรับการทำงานของ DPO ที่สามารถมองเห็นภาพรวมและสอบทานกลับได้เมื่อต้องการทราบข้อมูล",
    "จัดทำผังการไหลของข้อมูลและแสดงผลความเชื่อมโยง (Data Flow) ถึงหน่วยงานที่ รับ-ส่ง\nข้อมูลส่วนบุคคล เป็นลําดับ ก่อน-หลัง โดยระบบจะเชื่อมโยงข้อมูลที่มีอยู่ให้อย่างอัตโนมัติ",
    "แสดงรายงานสรุปบันทึกรายการข้อมูลส่วนบุคคลเป็นแผนภาพ (Dashboard) โดยสามารถรองรับการจัดเรียง\n(Sort), ค้นหา (Search) และ กรอง (Filter) ได้",
    "เชื่อมต่อกับระบบอื่นๆ ได้ ผ่าน REST API และนําข้อมูลออกมาในรูปแบบ Excel file ",
    "รองรับการเชื่อมต่อกับ MS SQL หรือ MySQL เพื่อสุ่มตรวจสอบข้อมูลในฐานข้อมูลส่วนบุคคล\nโดยรองรับข้อมูลเริ่มต้นที่ 10-500 GB ตามขนาดของข้อมูล"
  ];
  List<String> checkMB = [
    "บันทึกรายการข้อมูลส่วนบุคคล โดยจัดการรายละเอียดของรายการ และสามารถระบุ\nรายละเอียดต่างๆ ได้อย่างครบถ้วนตาม พรบ.คุ้มครองข้อมูลส่วนบุคคล 2562 ตามมาตรา (39)",
    "บันทึกรายการข้อมูลส่วนบุคคลและรายละเอียดที่เกี่ยวข้องกับบันทึก เช่น แหล่งที่มาของข้อมูลส่วนบุคคล\nวัตถุประสงค์ของการประมวลผล มาตรการรักษาความมั่นปลอดภัย สถานที่จัดเก็บ\nสัญญาการประมวลผล การอ้างอิงการขอความยินยอมจากเจ้าของข้อมูลส่วนบุคคล",
    "ระบุหน่วยงานที่เกี่ยวข้อง (สามารถแยกแต่ละหน่วยงาน) ในการนําข้อมูลส่วนบุคคลไปใช้\nโดยสามารถกําหนดได้ว่าเป็นการ เก็บรวบรวม นําไปใช้ หรือเปิดเผย",
    "กําหนดฐานกฎหมาย (Lawful Basis) ที่ใช้ประมวลผลข้อมูลส่วนบุคคล และเหตุปฏิเสธคําขอ\nหรือการคัดค้านคําขอที่ใช้ ในแต่ละรายการข้อมูลส่วนบุคคล",
    "กําหนดสัญญาการประมวลผลข้อมูลส่วนบุคคล สําหรับรายการข้อมูลส่วนบุคคลที่มีการ\nส่งออกไปยังผู้ประมวลผลข้อมูล",
    "กําหนดผู้ควบคุมข้อมูลส่วนบุคคล เพื่อระบุ และเจาะจงผู้ดูแลข้อมูลในแต่ละบันทึกรายการได้",
    "สุ่มตรวจสอบข้อมูลส่วนบุคคลในฐานข้อมูล อาจเป็นข้อมูลส่วนบุคคล โดยกําหนดเป็นเปอร์เซ็นต์\nที่ต้องการ และระบบสามารถคาดการณ์ออกมาเป็นเปอร์เซ็นต์ได้",
    "รองรับการทำงานของ DPO ที่สามารถมองเห็นภาพรวมและสอบทานกลับได้เมื่อต้องการ\nทราบข้อมูล",
    "จัดทำผังการไหลของข้อมูลและแสดงผลความเชื่อมโยง (Data Flow) ถึงหน่วยงานที่ รับ-ส่ง\nข้อมูลส่วนบุคคล เป็นลําดับ ก่อน-หลัง โดยระบบจะเชื่อมโยงข้อมูลที่มีอยู่ให้อย่างอัตโนมัติ",
    "แสดงรายงานสรุปบันทึกรายการข้อมูลส่วนบุคคลเป็นแผนภาพ (Dashboard) โดยสามารถรองรับ\nการจัดเรียง (Sort), ค้นหา (Search) และ กรอง (Filter) ได้",
    "เชื่อมต่อกับระบบอื่นๆ ได้ ผ่าน REST API และนําข้อมูลออกมาในรูปแบบ Excel file ",
    "รองรับการเชื่อมต่อกับ MS SQL หรือ MySQL เพื่อสุ่มตรวจสอบข้อมูลในฐานข้อมูลส่วนบุคคล\nโดยรองรับข้อมูลเริ่มต้นที่ 10-500 GB ตามขนาดของข้อมูล"
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 1440,
        color: Color.fromARGB(255, 5, 45, 97),
        child: 
        
        Center(
          child: Container(
            width: Responsive.isDesktop(context)?1440:Responsive.isTablet(context)?768:375,
            color: Color.fromARGB(255, 5, 45, 97),
            child: Padding(
              padding: Responsive.isDesktop(context)?const EdgeInsets.only(top: 86, left: 128, bottom: 88):Responsive.isTablet(context)?const EdgeInsets.only(top: 54, left: 31, ):const EdgeInsets.only(top: 54, left: 21, ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: checkDT.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          child: new Material(
                            child: new InkWell(
                              onTap: () {},
                              onHover: (value) {
                                setState(() {
                                  if (value) {
                                    hoveredIndex = index;
                                  } else {
                                    hoveredIndex = null;
                                  }
                                });
                              },
                              child: Center(
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // height: 28,
                                        color: hoveredIndex == index
                                            ? Color.fromARGB(255, 5, 45, 97)
                                            : Color.fromARGB(255, 5, 45, 97),
                                        child: ListTile(
                                          minLeadingWidth: 0,
                                          minVerticalPadding: 0,
                                          dense: true,
                                          visualDensity: VisualDensity(
                                              vertical: -4, horizontal: -4),
                                          leading: Transform.translate(
                                            offset: Offset(0, 0),
                                            child: SizedBox(
                                                width: 19,
                                                height: 13,
                                                child: Image(
                                                    image: AssetImage(hoveredIndex ==
                                                            index
                                                        ? "assets/features/blue-check.png"
                                                        : "assets/features/white-check.png"))),
                                          ),
                                          title: Transform.translate(
                                            offset: Offset(0, 0),
                                            child: Text(
                                              checkDT[index],
                                              style:
                                                  GoogleFonts.ibmPlexSansThai(
                                                      color: hoveredIndex ==
                                                              index
                                                          ? Color.fromARGB(
                                                              255, 75, 195, 211)
                                                          : Colors.white,
                                                      fontSize: Responsive.isDesktop(context)?16:Responsive.isTablet(context)?14:8,
                                                      fontWeight:
                                                          FontWeight.w400),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 30,
                                        color: hoveredIndex == index
                                            ? Color.fromARGB(255, 5, 45, 97)
                                            : Color.fromARGB(255, 5, 45, 97),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  CarouselController _controller = CarouselController();
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1440,
      color: Color.fromARGB(255, 232, 242, 252),
      child: Center(
        child: Stack(
          children: [
            Container(
              width: Responsive.isDesktop(context)?1440:Responsive.isTablet(context)?768:375,
              // height: 937,
              // color: Colors.purple,
              color: Color.fromARGB(255, 232, 242, 252),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: Responsive.isDesktop(context)?const EdgeInsets.only(top: 96, bottom: 48):Responsive.isTablet(context)?const EdgeInsets.only(top: 75, bottom: 38):const EdgeInsets.only(top: 38, bottom: 25),
                    child: Container(
                      // color: Colors.amber,
                      child: CarouselSlider(
                        carouselController: _controller,
                        options: CarouselOptions(
                          viewportFraction: 1.25,
                          height: Responsive.isDesktop(context)?500 : Responsive.isTablet(context)?380:165,
                          // enlargeCenterPage: true,
                          autoPlay: true,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _current = index;
                              // print('Current Page: $_current');
                            });
                          },
                        ),
                        items: [
                          Image.asset("assets/features/ex1.png")
                        ],
                      ),
                    ),
                  ),
                  Text(
                "ตัวอย่างแสดงฟังก์ชันการใช้งาน PD Management ",
                style: GoogleFonts.ibmPlexSansThai(
                    fontSize: Responsive.isMobile(context)?10:20,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 75, 195, 211)),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: Responsive.isDesktop(context)?93:Responsive.isTablet(context)?75:38,)
                ],
              ),
            ),
            new Positioned(
              top: Responsive.isDesktop(context)?300:Responsive.isTablet(context)?215:127,
              left: Responsive.isDesktop(context)?76:Responsive.isTablet(context)?20:23,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: Responsive.isMobile(context)?29:60,
                    height: Responsive.isMobile(context)?29:60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                        border:
                            Border.all(color: Color.fromARGB(255, 74, 195, 212))),
                    child: IconButton(
                      icon: Icon(Icons.keyboard_arrow_left,
                          size: Responsive.isMobile(context)?9:20, color: Color.fromARGB(255, 77, 193, 216)),
                      onPressed: () {
                        _controller.previousPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.ease,
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    width:  Responsive.isDesktop(context)?1164:Responsive.isTablet(context)?613:274,
                  ),
                  Container(
                    width: Responsive.isMobile(context)?29:60,
                    height: Responsive.isMobile(context)?29:60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                        border:
                            Border.all(color: Color.fromARGB(255, 74, 195, 212))),
                    child: IconButton(
                      icon: Icon(Icons.keyboard_arrow_right,
                          size: Responsive.isMobile(context)?9:20, color: Color.fromARGB(255, 77, 193, 216)),
                      onPressed: () {
                        _controller.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.ease,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
