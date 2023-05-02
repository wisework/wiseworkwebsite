import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:wiseintern/responsive.dart';
import 'package:go_router/go_router.dart';

class ProductWith extends StatefulWidget {
  final String title;
  ProductWith({required this.title});

  @override
  _ProductWithState createState() => _ProductWithState();
}

class _ProductWithState extends State<ProductWith> {
  @override
  Widget build(BuildContext context) {
    List<String> explist = [
      !Responsive.isMobile(context)
          ? "ธุรกิจและองค์กรทุกประเภท ธุรกิจขนาดย่อม (SME)"
          : "ธุรกิจและองค์กรทุกประเภท ธุรกิจ\nขนาดย่อม (SME)",
      "วิสาหกิจขนาดกลางและขนาดเล็ก",
      !Responsive.isMobile(context)
          ? "องค์กรที่มีความเสี่ยงในการเก็บข้อมูลส่วนบุคคลจำนวนมาก"
          : "องค์กรที่มีความเสี่ยงในการเก็บข้อมูล\nส่วนบุคคลจำนวนมาก",
      !Responsive.isMobile(context)
          ? "มีความเสี่ยงในการเก็บข้อมูลอ่อนไหว (Sensitivity Data)"
          : "มีความเสี่ยงในการเก็บข้อมูลอ่อนไหว\n(Sensitivity Data)",
      !Responsive.isMobile(context)
          ? "ไม่ต้องการเชื่อมต่อกับระบบภายในเพื่อนำเข้าข้อมูล"
          : "ไม่ต้องการเชื่อมต่อกับระบบภายใน\nเพื่อนำเข้าข้อมูล",
      "องค์กรไม่มีการติดต่อกับต่างประเทศ",
      !Responsive.isMobile(context)
          ? "องค์กรไม่อยู่ภายใต้ระเบียบของหน่วยงานกำกับ เช่น กลต. คปภ. ธปท."
          : "องค์กรไม่อยู่ภายใต้ระเบียบของ\nหน่วยงานกำกับ เช่น กลต. คปภ. ธปท.",
      !Responsive.isMobile(context)
          ? "สามารถใช้งาน Modules ได้ตรงตามวัตถุประสงค์หลักของ พรบ.\nได้แก่ PD Management, Consent Management, Cookies\nManagement , Data Subject Right Management"
          : "สามารถใช้งาน Modules ได้ตรงตาม\nวัตถุประสงค์หลักของ พรบ. ได้แก่\nPD Management, Consent\nManagement, Cookies\nManagement , Data Subject Right\nanagement",
    ];
    List<String> stalist = [
      !Responsive.isMobile(context)
          ? "องค์กรขนาดกลางไปจนถึงขนาดใหญ่"
          : "องค์กรขนาดกลางไปจนถึงขนาดใหญ่",
      !Responsive.isMobile(context)
          ? "มีความเสี่ยงในการเก็บข้อมูลส่วนบุคคลจำนวนมาก"
          : "มีความเสี่ยงในการเก็บข้อมูลส่วน\nบุคคลจำนวนมาก",
      !Responsive.isMobile(context)
          ? "มีความเสี่ยงในการเก็บข้อมูลอ่อนไหว (Sensitivity Data)"
          : "มีความเสี่ยงในการเก็บข้อมูลอ่อนไหว\n(Sensitivity Data)",
      !Responsive.isMobile(context)
          ? "องค์กรอยู่ในตลาดหลักทรัพย์"
          : "องค์กรอยู่ในตลาดหลักทรัพย์",
      !Responsive.isMobile(context)
          ? "มีการติดต่อกับต่างประเทศที่มีกฎหมายลักษณะเดียวกัน"
          : "มีการติดต่อกับต่างประเทศที่มี\nกฎหมายลักษณะเดียวกัน",
      !Responsive.isMobile(context)
          ? "องค์กรอยู่ภายใต้ระเบียบของหน่วยงานกำกับ เช่น กลต. คปภ. ธปท."
          : "องค์กรอยู่ภายใต้ระเบียบของ\nหน่วยงานกำกับ เช่น กลต. คปภ. ธปท.",
      !Responsive.isMobile(context)
          ? "ธุรกิจเฉพาะต้องการปรับแต่งให้เข้ากับการทำงาน"
          : "ธุรกิจเฉพาะต้องการปรับแต่งให้\nเข้ากับการทำงาน",
      !Responsive.isMobile(context)
          ? "ไม่ต้องการเชื่อมต่อกับระบบภายในที่มีอยู่เดิม"
          : "ไม่ต้องการเชื่อมต่อกับระบบภายในที่\nมีอยู่เดิม",
      "มีกฎระเบียบภายในรองรับการใช้ Cloud",
    ];
    List<String> entlist = [
      !Responsive.isMobile(context)
          ? "องค์กรขนาดใหญ่ มีสาขา มีบริษัทในเครือ"
          : "องค์กรขนาดใหญ่ มีสาขา มีบริษัท\nในเครือ",
      !Responsive.isMobile(context)
          ? "มีความเสี่ยงในการเก็บข้อมูลส่วนบุคคลจำนวนมาก"
          : "มีความเสี่ยงในการเก็บข้อมูลส่วน\nบุคคลจำนวนมาก",
      !Responsive.isMobile(context)
          ? "มีความเสี่ยงในการเก็บข้อมูลอ่อนไหว (Sensitivity Data)"
          : "มีความเสี่ยงในการเก็บข้อมูลอ่อนไหว\n(Sensitivity Data)",
      "องค์กรอยู่ในตลาดหลักทรัพย์",
      !Responsive.isMobile(context)
          ? "มีการติดต่อกับต่างประเทศที่มีกฎหมายลักษณะเดียวกัน"
          : "มีการติดต่อกับต่างประเทศที่มี\nกฎหมายลักษณะเดียวกัน",
      !Responsive.isMobile(context)
          ? "องค์กรอยู่ภายใต้ระเบียบของหน่วยงานกำกับ เช่น กลต. คปภ. ธปท."
          : "องค์กรอยู่ภายใต้ระเบียบของ\nหน่วยงานกำกับ เช่น กลต. คปภ. ธปท.",
      !Responsive.isMobile(context)
          ? "ธุรกิจเฉพาะต้องการปรับแต่งให้เข้ากับการทำงานสูงมาก"
          : "ธุรกิจเฉพาะต้องการปรับแต่งให้\nเข้ากับการทำงานสูงมาก",
      !Responsive.isMobile(context)
          ? "ต้องการเชื่อมต่อกับระบบภายในที่มีอยู่เดิม เช่น ERP, Single Sign-On"
          : "ต้องการเชื่อมต่อกับระบบภายในที่มี\nอยู่เดิม เช่น ERP, Single Sign-On",
      "ต้องการใช้ Storage จำนวนมาก",
      !Responsive.isMobile(context)
          ? "ต้องการ Security ที่สามารถควบคุมเองได้ทั้งหมด"
          : "ต้องการ Security ที่สามารถควบคุม\nเองได้ทั้งหมด",
    ];
    var title = Container(
      color: Color.fromARGB(0, 0, 187, 212),
      // height: 60,
      // width: 461,
      child: Text('เหมาะกับใคร?',
          style: GoogleFonts.poppins(
              // letterSpacing: 2,
              // height: 1.25,
              fontSize: !Responsive.isMobile(context) ? 48 : 36,
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 24, 84, 110))),
    );
    var whoselist = Container(
      color: Color.fromARGB(0, 255, 255, 255),
      // height: 486,
      width: !Responsive.isMobile(context) ? 750 : 375,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: widget.title == "Express"
            ? explist.length
            : widget.title == "Standard"
                ? stalist.length
                : entlist.length,
        itemBuilder: (context, index) {
          return ListTile(
            horizontalTitleGap: 0,
            // minLeadingWidth: 0,
            // minVerticalPadding: 0,
            dense: true,
            visualDensity: VisualDensity(vertical: -4, horizontal: -4),
            leading: Transform.translate(
              offset: Offset(
                  Responsive.isDesktop(context)
                      ? 0
                      : Responsive.isTablet(context)
                          ? 20
                          : 0,
                  0),
              child: SizedBox(
                  width: !Responsive.isMobile(context) ? 25 : 23,
                  height: !Responsive.isMobile(context) ? 25 : 23,
                  child: Image(image: AssetImage("assets/product/check.png"))),
            ),
            title: Transform.translate(
              offset: Offset(!Responsive.isMobile(context) ? 34 : 5, 0),
              child: Text(
                widget.title == "Express"
                    ? explist[index]
                    : widget.title == "Standard"
                        ? stalist[index]
                        : entlist[index],
                style: GoogleFonts.ibmPlexSansThai(
                    letterSpacing: -0.2,
                    height: 2,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: !Responsive.isMobile(context) ? 24 : 20,
                    fontWeight: FontWeight.w400),
              ),
            ),
          );
        },
      ),
    );
    var relate = Text(
        !Responsive.isMobile(context)
            ? 'Related Package ดูรายละเอียดแพ็กเกจอื่น'
            : 'Related Package\nดูรายละเอียดแพ็กเกจอื่น',
        textAlign: TextAlign.center,
        style: GoogleFonts.ibmPlexSansThai(
            // letterSpacing: 2,
            // height: 1.25,
            fontSize: !Responsive.isMobile(context) ? 24 : 20,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 24, 84, 110)));
    var enterprise = HoverContainer(
      padding: !Responsive.isMobile(context)
          ? const EdgeInsets.only(top: 27, left: 40)
          : const EdgeInsets.only(top: 23, left: 36),
      width: !Responsive.isMobile(context) ? 363 : 320,
      height: !Responsive.isMobile(context) ? 256 : 226,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color.fromARGB(255, 255, 255, 255),
          border: Border.all(color: Color.fromARGB(255, 225, 232, 240))),
      hoverDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color.fromARGB(255, 241, 251, 252),
          border: Border.all(color: Color.fromARGB(255, 75, 195, 211))),
      child: InkWell(
        onTap: () {
          context.go('/package/3');
        },
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
              height: 47,
              width: 80,
              child: Image.asset("assets/product/blue_rainbow.png")),
          SizedBox(height: 24),
          Text('Enterprise Package',
              style: GoogleFonts.ibmPlexSansThai(
                  height: 1.4, fontSize: 20, fontWeight: FontWeight.w500)),
          Text('(Perpeptual License)',
              style: GoogleFonts.ibmPlexSansThai(
                  height: 1.4, fontSize: 20, fontWeight: FontWeight.w400)),
          SizedBox(height: !Responsive.isMobile(context) ? 16 : 6),
          Text('Read more >',
              style: GoogleFonts.poppins(
                  color: Color.fromARGB(255, 75, 196, 213),
                  fontSize: 16,
                  fontWeight: FontWeight.w600)),
        ]),
      ),
    );
    var standard = HoverContainer(
      padding: !Responsive.isMobile(context)
          ? const EdgeInsets.only(top: 27, left: 40)
          : const EdgeInsets.only(top: 23, left: 36),
      width: !Responsive.isMobile(context) ? 363 : 320,
      height: !Responsive.isMobile(context) ? 256 : 226,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color.fromARGB(255, 255, 255, 255),
          border: Border.all(color: Color.fromARGB(255, 225, 232, 240))),
      hoverDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color.fromARGB(255, 241, 251, 252),
          border: Border.all(color: Color.fromARGB(255, 75, 195, 211))),
      child: InkWell(
        onTap: () {
          context.go('/package/2');
        },
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
              height: 45,
              width: 75,
              child: Image.asset("assets/product/blue_clouds.png")),
          SizedBox(height: 24),
          Text('Standard Package',
              style: GoogleFonts.ibmPlexSansThai(
                  height: 1.4, fontSize: 20, fontWeight: FontWeight.w500)),
          Text('(Subscription License)',
              style: GoogleFonts.ibmPlexSansThai(
                  height: 1.4, fontSize: 20, fontWeight: FontWeight.w400)),
          SizedBox(height: !Responsive.isMobile(context) ? 16 : 6),
          Text('Read more >',
              style: GoogleFonts.poppins(
                  color: Color.fromARGB(255, 75, 196, 213),
                  fontSize: 16,
                  fontWeight: FontWeight.w600)),
        ]),
      ),
    );
    var express = HoverContainer(
      padding: !Responsive.isMobile(context)
          ? const EdgeInsets.only(top: 27, left: 40)
          : const EdgeInsets.only(top: 23, left: 36),
      width: !Responsive.isMobile(context) ? 363 : 320,
      height: !Responsive.isMobile(context) ? 256 : 226,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color.fromARGB(255, 255, 255, 255),
          border: Border.all(color: Color.fromARGB(255, 225, 232, 240))),
      hoverDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color.fromARGB(255, 241, 251, 252),
          border: Border.all(color: Color.fromARGB(255, 75, 195, 211))),
      child: InkWell(
        onTap: () {
          context.go('/package/1');
        },
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
              height: 60,
              width: 60,
              child: Image.asset("assets/product/blue_cloud.png")),
          SizedBox(height: 24),
          Text('Express Package',
              style: GoogleFonts.ibmPlexSansThai(
                  height: 1.4, fontSize: 20, fontWeight: FontWeight.w500)),
          Text('(SaaS)',
              style: GoogleFonts.ibmPlexSansThai(
                  height: 1.4, fontSize: 20, fontWeight: FontWeight.w400)),
          SizedBox(height: !Responsive.isMobile(context) ? 16 : 6),
          Text('Read more >',
              style: GoogleFonts.poppins(
                  color: Color.fromARGB(255, 75, 196, 213),
                  fontSize: 16,
                  fontWeight: FontWeight.w600)),
        ]),
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
              height: Responsive.isDesktop(context)
                  ? 84
                  : Responsive.isTablet(context)
                      ? 50
                      : 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: !Responsive.isMobile(context)
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: Responsive.isDesktop(context)
                          ? const EdgeInsets.only(left: 0)
                          : Responsive.isTablet(context)
                              ? const EdgeInsets.only(left: 20)
                              : const EdgeInsets.only(left: 0),
                      child: title,
                    ),
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
                Responsive.isDesktop(context)
                    ? Column(
                        children: [
                          SizedBox(
                            height: Responsive.isTablet(context) ? 80 : 40,
                          ),
                          Container(
                              height: 469,
                              width: 567,
                              child: Image(
                                  image: AssetImage(widget.title == "Express"
                                      ? "assets/product/express.png"
                                      : widget.title == "Standard"
                                          ? "assets/product/standard.png"
                                          : "assets/product/enterprise.png"))),
                        ],
                      )
                    : SizedBox()
              ],
            ),
            !Responsive.isDesktop(context)
                ? Container(
                    height: Responsive.isTablet(context) ? 469 : 272,
                    width: Responsive.isTablet(context) ? 506 : 322,
                    child: Image(
                        image: AssetImage(widget.title == "Express"
                            ? "assets/product/express.png"
                            : widget.title == "Standard"
                                ? "assets/product/standard.png"
                                : "assets/product/enterprise.png")))
                : SizedBox(),
            Padding(
              padding: Responsive.isDesktop(context)
                  ? const EdgeInsets.only(top: 93)
                  : Responsive.isDesktop(context)
                      ? const EdgeInsets.only(top: 25)
                      : const EdgeInsets.only(top: 60),
              child: Container(
                // height: 342,
                // width: 1140,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: Responsive.isDesktop(context)
                          ? CrossAxisAlignment.start
                          : CrossAxisAlignment.center,
                      children: [
                        relate,
                        SizedBox(
                          width: Responsive.isDesktop(context) ? 1140 : null,
                          height: Responsive.isDesktop(context)
                              ? 38
                              : Responsive.isTablet(context)
                                  ? 74
                                  : 34,
                        ),
                      ],
                    ),
                    Responsive.isDesktop(context)
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              express,
                              SizedBox(
                                width: 25,
                              ),
                              standard,
                              SizedBox(
                                width: 25,
                              ),
                              enterprise
                            ],
                          )
                        : Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              express,
                              SizedBox(
                                height: 56,
                              ),
                              standard,
                              SizedBox(
                                height: 56,
                              ),
                              enterprise
                            ],
                          ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: Responsive.isDesktop(context)
                  ? 80
                  : Responsive.isTablet(context)
                      ? 94
                      : 86,
            )
          ],
        ),
      ),
    );
  }
}
