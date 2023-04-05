import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/responsive.dart';

class PakageDetails {
  final String title;
  final String express;
  final String standard;
  final String enterprise;
  PakageDetails({
    required this.title,
    required this.express,
    required this.standard,
    required this.enterprise,
  });

  PakageDetails copyWith(
      {String? title, String? express, String? standard, String? enterprise}) {
    return PakageDetails(
      title: title ?? this.title,
      express: express ?? this.express,
      standard: standard ?? this.standard,
      enterprise: enterprise ?? this.enterprise,
    );
  }
}

class ProductDetails extends StatefulWidget {
  final String title;
  ProductDetails({required this.title});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int? hoveredIndex;

  @override
  Widget build(BuildContext context) {
    final List<PakageDetails> detaillist = [
      PakageDetails(
          title: "Modules",
          express: "Main (4 Modules)",
          standard: "Max (11 Modules)",
          enterprise: "Max (11 Modules)"),
      PakageDetails(
          title: "Concurrent User",
          express: "5",
          standard: "10",
          enterprise: "Unlimited"),
      PakageDetails(
          title: "Storage",
          express: "10 GB",
          standard: "100 GB",
          enterprise: "Unlimited"),
      PakageDetails(
          title: !Responsive.isMobile(context)
              ? "Number of Data Subject"
              : "Number of Data\nSubject",
          express: "~ 100,000",
          standard: "~ 1,000,000",
          enterprise: "~ 10,000,000"),
      PakageDetails(
          title: "ครบถ้วนตามพรบ.ฯ",
          express: Responsive.isDesktop(context)
              ? "Support ส่วนที่เป็นวัตถุประสงค์หลักของ PDPA"
              : Responsive.isTablet(context)
                  ? "Support ส่วนที่เป็นวัตถุ\nประสงค์หลักของ PDPA"
                  : "Support วัตถุประสงค์หลัก",
          standard: "Support",
          enterprise: "Support"),
      PakageDetails(
          title: "การติดตั้งระบบ",
          express: "On Cloud",
          standard: "On Cloud/ On Premise",
          enterprise: "On Cloud/ On Premise"),
      PakageDetails(
          title: !Responsive.isMobile(context)
              ? "พัฒนาเพิ่มเติมตามความต้องการ"
              : "พัฒนาเพิ่มเติมตาม\nความต้องการ",
          express: "Not Support",
          standard: "Support",
          enterprise: "Support"),
      PakageDetails(
          title: Responsive.isDesktop(context)
              ? "รองรับการทำงานแบบ Multi-Tenant"
              : "รองรับการทำงานแบบ\nMulti-Tenant",
          express: "Not Support",
          standard: "Not Support",
          enterprise: "Support"),
      PakageDetails(
          title: "Product Support",
          express: "8x5 Standard Support",
          standard: "8x5 Standard Support",
          enterprise: "24x7 Premium Support"),
      PakageDetails(
          title: !Responsive.isMobile(context)
              ? "API for Import & Export"
              : "API for Import &\nExport",
          express: "For Export Only",
          standard: "Import & Export",
          enterprise: "Import & Export"),
    ];
    return Center(
      child: Container(
        width: 1440,
        color: Color.fromARGB(255, 255, 255, 255),
        child: Center(
          child: Padding(
            padding: Responsive.isDesktop(context)
                ? const EdgeInsets.only(bottom: 85, left: 200)
                : Responsive.isTablet(context)
                    ? const EdgeInsets.only(bottom: 75, left: 40)
                    : const EdgeInsets.only(bottom: 35, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    // Text(widget.title),
                    Container(
                        // color: Colors.red,
                        width: Responsive.isDesktop(context)
                            ? 500
                            : Responsive.isTablet(context)
                                ? 411
                                : 177,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: detaillist.length,
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
                                                ? (widget.title == "Express" &&
                                                                index == 4 ||
                                                            index == 7) ||
                                                        index == 7
                                                    ? 90
                                                    : 60
                                                : index == 3 ||
                                                        index == 6 ||
                                                        index == 7 ||
                                                        index == 9
                                                    ? 58
                                                    : 40,
                                        color: hoveredIndex == index
                                            ? Color.fromARGB(255, 255, 255, 255)
                                            : Color.fromARGB(
                                                255, 255, 255, 255),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: Responsive.isDesktop(
                                                          context)
                                                      ? 16
                                                      : 11,
                                                  height: !Responsive.isMobile(
                                                          context)
                                                      ? 16
                                                      : 11,
                                                  child: Image.asset(hoveredIndex ==
                                                          index
                                                      ? "assets/product/select.png"
                                                      : "assets/product/choices.png"),
                                                ),
                                                SizedBox(
                                                  width: !Responsive.isMobile(
                                                          context)
                                                      ? 24
                                                      : 15,
                                                ),
                                                Text(
                                                  '${detaillist[index].title}',
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          fontSize: !Responsive
                                                                  .isMobile(
                                                                      context)
                                                              ? 24
                                                              : 14,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: hoveredIndex ==
                                                                  index
                                                              ? Color.fromARGB(
                                                                  255,
                                                                  75,
                                                                  196,
                                                                  213)
                                                              : Color.fromARGB(
                                                                  255,
                                                                  23,
                                                                  24,
                                                                  26)),
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
                            })),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      // color: Colors.red,
                      width: Responsive.isDesktop(context)
                          ? 480
                          : Responsive.isTablet(context)
                              ? 315
                              : 160,
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: detaillist.length,
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
                                              ? (widget.title == "Express" &&
                                                              index == 4 ||
                                                          index == 7) ||
                                                      index == 7
                                                  ? 90
                                                  : 60
                                              : index == 3 ||
                                                      index == 6 ||
                                                      index == 7 ||
                                                      index == 9
                                                  ? 58
                                                  : 40,
                                      color: hoveredIndex == index
                                          ? Color.fromARGB(255, 255, 255, 255)
                                          : Color.fromARGB(255, 255, 255, 255),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            widget.title == "Express"
                                                ? '${detaillist[index].express}'
                                                : widget.title == "Standard"
                                                    ? '${detaillist[index].standard}'
                                                    : '${detaillist[index].enterprise}',
                                            style: GoogleFonts.ibmPlexSansThai(
                                              fontWeight: FontWeight.w400,
                                              color: hoveredIndex == index
                                                  ? Color.fromARGB(
                                                      255, 75, 196, 213)
                                                  : Color.fromARGB(
                                                      255, 23, 24, 26),
                                              fontSize:
                                                  !Responsive.isMobile(context)
                                                      ? 24
                                                      : 14,
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
