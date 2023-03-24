import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/responsive.dart';

class SingleProductPage extends StatefulWidget {
  const SingleProductPage({Key? key}) : super(key: key);

  @override
  State<SingleProductPage> createState() => _SingleProductPageState();
}

class Model {
  final String title;
  final String description;

  Model({
    required this.title,
    required this.description,
  });

  Model copyWith({
    String? title,
    String? description,
  }) {
    return Model(
      title: title ?? this.title,
      description: description ?? this.description,
    );
  }
}

class _SingleProductPageState extends State<SingleProductPage> {
  int? hoveredIndex;

  @override
  Widget build(BuildContext context) {
    final List<Model> list = [
      Model(
        title: "Modules",
        description: "Max (11 Modules)",
      ),
      Model(
        title: "Concurrent User",
        description: "Unlimited",
      ),
      Model(
        title: "Storage",
        description: "Unlimited",
      ),
      Model(
        title: "Number of Data Subject",
        description: "~ 10,000,000",
      ),
      Model(
        title: "ครบถ้วนตามพรบ.ฯ",
        description: "Support",
      ),
      Model(
        title: "การติดตั้งระบบ",
        description: "On Cloud/ On Premise",
      ),
      Model(
        title: "พัฒนาเพิ่มเติมตามความต้องการ",
        description: "Support",
      ),
      Model(
        title: !Responsive.isTablet(context)
            ? "รองรับการทำงานแบบ Multi-Tenant"
            : "รองรับการทำงานแบบ\nMulti-Tenant",
        description: !Responsive.isTablet(context) ? "Support" : "Support\n",
      ),
      Model(
        title: "Product Support",
        description: "24x7 Premium Support",
      ),
      Model(
        title: "API for Import&Export",
        description: "Import & Export",
      ),
    ];
    var pic = Container(
      color: Color.fromARGB(0, 255, 193, 7),
      child: Image.asset(
        !Responsive.isMobile(context)
            ? 'assets/product/creative.png'
            : 'assets/product/mobile_creative.png',
        width: !Responsive.isMobile(context) ? 828 : 368,
        height: !Responsive.isMobile(context) ? 628 : 265,
      ),
    );
    var title = Container(
      color: Color.fromARGB(0, 0, 187, 212),
      // height: 18,
      // width: 444,
      child: Text('PDPA MANAGEMENT PLATFORM',
          style: GoogleFonts.ibmPlexSansThai(
              letterSpacing: 2,
              // height: 1.25,
              fontSize: !Responsive.isMobile(context) ? 16 : 10,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 0, 112, 240))),
    );
    var productname = Container(
      color: Color.fromARGB(0, 0, 187, 212),
      // height: 60,
      // width: 444,
      child: Text('Enterprise',
          style: GoogleFonts.ibmPlexSansThai(
              // height: 1.25,
              fontSize: !Responsive.isMobile(context) ? 50 : 20,
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 24, 84, 110))),
    );
    var productlicense = Container(
      color: Color.fromARGB(0, 0, 187, 212),
      // height: 60,
      // width: 444,
      child: Text('Perpetual License',
          style: GoogleFonts.ibmPlexSansThai(
              // height: 1.25,
              fontSize: !Responsive.isMobile(context) ? 24 : 20,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 31, 40, 79))),
    );
    var aboutproduct = Container(
      color: Color.fromARGB(0, 255, 153, 0),
      // height: 158,
      // width: 444,
      child: Text(
        textAlign:
            !Responsive.isMobile(context) ? TextAlign.start : TextAlign.center,
        'ระบบบริหารจัดการข้อมูลส่วนบุคคล PDPA \nเหมาะสำหรับองค์กรขนาดใหญ่ และบริษัทในเครือ\nควบคุมระบบทั้งหมดได้จากศูนย์กลาง \nครอบคลุมทุกฟังก์ชันการใช้งานเต็มรูปแบบ 11 \nModules และไม่มีข้อจำกัดในการเชื่อมต่อกับระบบอื่น',
        style: GoogleFonts.ibmPlexSansThai(
            fontSize: !Responsive.isMobile(context) ? 20 : 10,
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 0, 0, 0)),
      ),
    );

    var priceclick = SizedBox(
      width: 192,
      height: 48,
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 52, 145, 206),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          child: Text(
            'รับใบเสนอราคา',
            style: GoogleFonts.ibmPlexSansThai(
                fontSize: 20, fontWeight: FontWeight.w500),
          )),
    );
    var democlick = SizedBox(
      width: 192,
      height: 48,
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 75, 195, 211),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          child: Text(
            'Request Demo',
            style: GoogleFonts.ibmPlexSansThai(
                fontSize: 20, fontWeight: FontWeight.w500),
          )),
    );

    return Center(
      child: Container(
        color: Colors.white,
        width: 1440,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              color: Responsive.isDesktop(context)
                  ? Color.fromARGB(255, 232, 242, 254)
                  : Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: Responsive.isDesktop(context)
                        ? 53
                        : Responsive.isTablet(context)
                            ? 72
                            : null,
                  ),
                  !Responsive.isMobile(context)
                      ? Row(
                          children: [
                            SizedBox(
                              width: Responsive.isDesktop(context) ? 107 : 40,
                            ),
                            Container(
                              width: 60,
                              height: 5,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 57, 128, 237),
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      color: Color.fromARGB(255, 57, 128, 237),
                                      width: 5)),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              // color: Colors.amber,
                              height: 25,
                              child: Text(
                                "Ours Services",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 57, 128, 237)),
                              ),
                            ),
                          ],
                        )
                      : SizedBox(),
                  SizedBox(
                    height: Responsive.isDesktop(context)
                        ? 39
                        : Responsive.isTablet(context)
                            ? null
                            : null,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 42,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: Responsive.isDesktop(context)
                  ? MainAxisAlignment.end
                  : MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: !Responsive.isMobile(context)
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: !Responsive.isMobile(context) ? 44 : 22,
                    ),
                    title,
                    SizedBox(
                      height: !Responsive.isMobile(context) ? 0 : 25,
                    ),
                    productname,
                    SizedBox(
                      height: 32,
                    ),
                    productlicense,
                    SizedBox(
                      height: !Responsive.isMobile(context) ? 0 : 30,
                    ),
                    aboutproduct,
                    SizedBox(height: 32),
                    !Responsive.isMobile(context)
                        ? Row(
                            children: [
                              priceclick,
                              SizedBox(
                                width: 16,
                              ),
                              democlick,
                              SizedBox(
                                width: 42,
                              ),
                            ],
                          )
                        : Column(
                            children: [
                              priceclick,
                              SizedBox(
                                height: 16,
                              ),
                              democlick,
                            ],
                          )
                  ],
                ),
                Responsive.isDesktop(context) ? pic : SizedBox()
              ],
            ),
            SizedBox(
              height: Responsive.isDesktop(context)
                  ? 0
                  : Responsive.isTablet(context)
                      ? 0
                      : 40,
            ),
            Responsive.isDesktop(context) ? SizedBox() : pic,
            SizedBox(
              height: Responsive.isDesktop(context)
                  ? 0
                  : Responsive.isTablet(context)
                      ? 75
                      : 65,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      // color: Colors.red,
                      width: Responsive.isDesktop(context)
                          ? 500
                          : Responsive.isTablet(context)
                              ? 411
                              : 189,
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: list.length,
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
                                  // hoverColor: Color.fromARGB(255, 228, 238, 250),
                                  child: new Container(
                                    // width: 500,
                                    // height: 200,
                                    child: Container(
                                      height: Responsive.isDesktop(context)
                                          ? 56
                                          : Responsive.isTablet(context)
                                              ? index == 7
                                                  ? 90
                                                  : 56
                                              : 27.5,
                                      color: hoveredIndex == index
                                          ? Color.fromARGB(255, 255, 255, 255)
                                          : Color.fromARGB(255, 255, 255, 255),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: !Responsive.isMobile(
                                                        context)
                                                    ? 16
                                                    : 7,
                                                height: !Responsive.isMobile(
                                                        context)
                                                    ? 16
                                                    : 7,
                                                child: Image.asset(hoveredIndex ==
                                                        index
                                                    ? "assets/product/select.png"
                                                    : "assets/product/choices.png"),
                                              ),
                                              SizedBox(
                                                width: !Responsive.isMobile(
                                                        context)
                                                    ? 24
                                                    : 7,
                                              ),
                                              Text(
                                                '${list[index].title}',
                                                style: GoogleFonts.poppins(
                                                    fontSize: !Responsive
                                                            .isMobile(context)
                                                        ? 24
                                                        : 10,
                                                    fontWeight: FontWeight.w400,
                                                    color: hoveredIndex == index
                                                        ? Color.fromARGB(
                                                            255, 75, 196, 213)
                                                        : Color.fromARGB(
                                                            255, 23, 24, 26)),
                                              ),
                                            ],
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
                  ],
                ),
                Column(
                  children: [
                    Container(
                      // color: Colors.red,
                      width: !Responsive.isMobile(context) ? 291 : 122,
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: list.length,
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
                                  // hoverColor: Color.fromARGB(255, 228, 238, 250),
                                  child: new Container(
                                    // width: 500,
                                    // height: 200,
                                    child: Container(
                                      height: Responsive.isDesktop(context)
                                          ? 56
                                          : Responsive.isTablet(context)
                                              ? index == 7
                                                  ? 90
                                                  : 56
                                              : 27.5,
                                      color: hoveredIndex == index
                                          ? Color.fromARGB(255, 255, 255, 255)
                                          : Color.fromARGB(255, 255, 255, 255),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${list[index].description}',
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400,
                                              color: hoveredIndex == index
                                                  ? Color.fromARGB(
                                                      255, 75, 196, 213)
                                                  : Color.fromARGB(
                                                      255, 23, 24, 26),
                                              fontSize:
                                                  !Responsive.isMobile(context)
                                                      ? 24
                                                      : 10,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
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
                  ],
                )
              ],
            ),
            SizedBox(
              height: Responsive.isDesktop(context)
                  ? 102
                  : Responsive.isTablet(context)
                      ? 70
                      : 51,
            ),
          ],
        ),
      ),
    );
  }
}
