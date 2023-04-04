import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/responsive.dart';

class packagedetails extends StatefulWidget {
  final String title;
  packagedetails({required this.title});

  @override
  _packagedetailsState createState() => _packagedetailsState();
}

class _packagedetailsState extends State<packagedetails> {
  int? hoveredIndex;
  final List<String> listname = [
    "Modules",
    "Concurrent User",
    "Storage",
    "Number of Data Subject",
    "ครบถ้วนตามพรบ.ฯ",
    "การติดตั้งระบบ",
    "พัฒนาเพิ่มเติมตามความต้องการ",
    "รองรับการทำงานแบบ Multi-Tenant",
    "Product Support",
    "API for Import&Export"
  ];
  final List<String> exlist = [
    "Main (4 Modules)",
    "5",
    "10 GB",
    "~ 100,000",
    "Support ส่วนที่เป็นวัตถุประสงค์หลักของ PDPA",
    "On Cloud",
    "Not Support",
    "Not Support",
    "8x5 Standard Support",
    "For Export Only"
  ];
  final List<String> stlist = [
    "Max (11 Modules)",
    "10",
    "100 GB",
    "~ 1,000,000",
    "Support",
    "On Cloud / On Premise",
    "Support",
    "Not Support",
    "8x5 Standard Support",
    "Import & Export"
  ];
  final List<String> enlist = [
    "Max (11 Modules)",
    "Unlimited",
    "Unlimited",
    "~ 10,000,000",
    "Support",
    "On Cloud/ On Premise",
    "Support",
    "Support",
    "24x7 Premium Support",
    "Import & Export"
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 1440,
        color: Color.fromARGB(255, 255, 255, 255),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 85),
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
                                : 189,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: listname.length,
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
                                            : Color.fromARGB(
                                                255, 255, 255, 255),
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
                                                  '${listname[index]}',
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          fontSize: !Responsive
                                                                  .isMobile(
                                                                      context)
                                                              ? 24
                                                              : 10,
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
                      width: !Responsive.isMobile(context) ? 291 : 122,
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: listname.length,
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
                                            widget.title == "Express"
                                                ? '${exlist[index]}'
                                                : widget.title == "Standard"
                                                    ? '${stlist[index]}'
                                                    : '${enlist[index]}',
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
