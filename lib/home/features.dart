import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:google_fonts/google_fonts.dart';
import '../navbar.dart';
import '../responsive.dart';
import 'package:wiseintern/features/pdmanagement.dart';
import 'package:go_router/go_router.dart';

class FeatureModel {
  final String title;
  final String description;
  final String imageUrl;
  final String page;
  // final String? routePath;
  FeatureModel(this.title, this.description, this.imageUrl, this.page);
}

class FeaturesPage extends StatefulWidget {
  const FeaturesPage({Key? key}) : super(key: key);

  @override
  State<FeaturesPage> createState() => _FeaturesPageState();
}

class _FeaturesPageState extends State<FeaturesPage> {
  int? hoveredIndex;
  List<FeatureModel> features = [
    FeatureModel(
        "PD Management",
        "จัดการบันทึกรายการข้อมูลส่วนบุคคลและการไหลของข้อมูล (Data Flow)",
        "features/folder.png",
        "pdmanagement"),
    FeatureModel(
        "DPIA & Risk Management",
        "การบริหารความเสี่ยงและผลกระทบจากข้อมูลส่วนบุคคล",
        "features/risk.png",
        "routePath"),
    FeatureModel(
        "Cookie Consent",
        "การขอความยินยอมจากเจ้าของข้อมูลและการบริหารจัดการคุกกี้",
        "features/cookie.png",
        "routePath"),
    FeatureModel("Consent Management", "การบริหารจัดการให้ความยินยอม",
        "features/consent.png", "routePath"),
    FeatureModel(
        "Data Subject Right Management",
        "บริหารการขอใช้สิทธิ์จากเจ้าของข้อมูล",
        "features/data.png",
        "routePath"),
    FeatureModel("Data Breach", "บริหารกรณีเกิดข้อมูลรั่วไหล",
        "features/breach.png", "routePath"),
    FeatureModel("Audit&Gap Management", "บริหารงานตรจสอบและการทำ GAP Analysis",
        "features/audit.png", "routePath"),
    FeatureModel(
        "Policy&Notices Management",
        "บริหารการสื่อสารนโยบายและประกาศความเป็นส่วนตัว",
        "features/policy.png",
        "routePath"),
    FeatureModel("Data Discover", "ค้นหาข้อมูลส่วนตัวในระบบสารสนเทศ",
        "features/discovery.png", "routePath"),
    FeatureModel(
        "Executive Support System",
        "บริหารงานและจัดการรายงาน สำหรับผู้บริหาร",
        "features/executive.png",
        "routePath"),
    FeatureModel("Legitimate Interest Assessment",
        "การประเมินการนำฐานกฏหมายมาใช้", "features/legi.png", "routePath"),
    FeatureModel(
        "System Setting Management",
        "ส่วนการตั้งค่าส่วนส่งเสริมที่ถูกพัฒนาขึ้นมาเพื่อให้ผู้ดูแลระบบจัดการกับข้อมูลต่างๆ",
        "features/system.png",
        "routePath"),
  ];

  bool _hover = false;

  void _navigateToPage(BuildContext context, String page) {
    switch (page) {
      case "pdmanagementpage":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Pdmanagement()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
        stream: null,
        builder: (context, snapshot) {
          return Center(
            child: Container(
              color: Color.fromARGB(255, 5, 45, 97),
              width: 1440,
              child: Center(
                child: Container(
                  width: Responsive.isDesktop(context)
                      ? 1440
                      : Responsive.isTablet(context)
                          ? 768
                          : 375,
                  // color: Color.fromARGB(255, 228, 236, 248),
                  margin: EdgeInsets.all(00.0),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: Responsive.isDesktop(context) ? 96 : 44,
                          ),
                          Padding(
                            padding: Responsive.isDesktop(context)
                                ? EdgeInsets.only(bottom: 79)
                                : EdgeInsets.only(bottom: 29),
                            child: Text(
                              'Key Features',
                              style: GoogleFonts.ibmPlexSans(
                                fontWeight: Responsive.isDesktop(context)
                                    ? FontWeight.w700
                                    : FontWeight.w600,
                                color: Colors.white,
                                fontSize: Responsive.isDesktop(context)
                                    ? 48
                                    : Responsive.isTablet(context)
                                        ? 35
                                        : 24,
                              ),
                            ),
                          ),
                          Responsive.isDesktop(context)
                              ? Container(
                                  child: GridView.builder(
                                      shrinkWrap: true,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3,
                                        crossAxisSpacing: 20,
                                        mainAxisSpacing: 20,
                                      ),
                                      itemCount: features.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Container(
                                          child: new Material(
                                            child: new InkWell(
                                              borderRadius:
                                                  BorderRadius.circular(16),
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
                                              hoverColor: Color.fromARGB(
                                                  255, 228, 238, 250),
                                              child: new Container(
                                                width: 368,
                                                height: 338,
                                                child: Center(
                                                  child: Container(
                                                    // margin: EdgeInsets.all(15),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 48,
                                                              left: 6,
                                                              right: 6,
                                                              bottom: 12),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: <Widget>[
                                                          SizedBox(
                                                              width: 100,
                                                              height: 100,
                                                              child:
                                                                  Image.asset(
                                                                'assets/${features[index].imageUrl}',
                                                              )),
                                                          Text(
                                                            '${features[index].title}',
                                                            style: GoogleFonts.poppins(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 24,
                                                                color: hoveredIndex ==
                                                                        index
                                                                    ? Color
                                                                        .fromARGB(
                                                                            255,
                                                                            57,
                                                                            129,
                                                                            237)
                                                                    : Colors
                                                                        .white),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                          Text(
                                                            '${features[index].description}',
                                                            style: GoogleFonts
                                                                .ibmPlexSansThai(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: hoveredIndex ==
                                                                      index
                                                                  ? Color
                                                                      .fromARGB(
                                                                          255,
                                                                          57,
                                                                          129,
                                                                          237)
                                                                  : Colors
                                                                      .white,
                                                              fontSize: 20,
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                          TextButton(
                                                            onPressed: () =>
                                                                context.go(
                                                                    '/${features[index].page}'),
                                                            child: GridTile(
                                                                child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Text(
                                                                  "more",
                                                                  style: GoogleFonts.inter(
                                                                      fontSize:
                                                                          18,
                                                                      color: Color.fromARGB(
                                                                          255,
                                                                          57,
                                                                          129,
                                                                          237)),
                                                                ),
                                                                Icon(
                                                                  // <-- Icon
                                                                  Icons
                                                                      .arrow_forward_sharp,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          57,
                                                                          129,
                                                                          237),
                                                                  size: 18,
                                                                ),
                                                              ],
                                                            )),
                                                          ),
                                                          // GestureDetector(
                                                          //   onTap: () {
                                                          //     _navigateToPage(
                                                          //         context,
                                                          //         features[
                                                          //                 index]
                                                          //             .page);
                                                          //   },
                                                          //   child: GridTile(
                                                          //       child: Row(
                                                          //     mainAxisAlignment:
                                                          //         MainAxisAlignment
                                                          //             .center,
                                                          //     children: [
                                                          //       Text(
                                                          //         "more",
                                                          //         style: GoogleFonts.inter(
                                                          //             fontSize:
                                                          //                 18,
                                                          //             color: Color.fromARGB(
                                                          //                 255,
                                                          //                 57,
                                                          //                 129,
                                                          //                 237)),
                                                          //       ),
                                                          //       Icon(
                                                          //         // <-- Icon
                                                          //         Icons
                                                          //             .arrow_forward_sharp,
                                                          //         color: Color
                                                          //             .fromARGB(
                                                          //                 255,
                                                          //                 57,
                                                          //                 129,
                                                          //                 237),
                                                          //         size: 18,
                                                          //       ),
                                                          //     ],
                                                          //   )),
                                                          // ),
                                                        ],
                                                      ),
                                                    ),
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
                                  ? Container(
                                      child: GridView.builder(
                                          shrinkWrap: true,
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 3,
                                            crossAxisSpacing: 20,
                                            mainAxisSpacing: 20,
                                          ),
                                          itemCount: features.length,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return Container(
                                              child: new Material(
                                                child: new InkWell(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
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
                                                  hoverColor: Color.fromARGB(
                                                      255, 228, 238, 250),
                                                  child: new Container(
                                                    width: 244,
                                                    height: 244,
                                                    child: Center(
                                                      child: Container(
                                                        // margin: EdgeInsets.all(15),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            top: 15,
                                                            left: 6,
                                                            right: 6,
                                                          ),
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: <Widget>[
                                                              SizedBox(
                                                                  width: 50,
                                                                  height: 50,
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/${features[index].imageUrl}',
                                                                  )),
                                                              SizedBox(
                                                                height: 24,
                                                              ),
                                                              Text(
                                                                '${features[index].title}',
                                                                style: GoogleFonts.poppins(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        20,
                                                                    color: hoveredIndex ==
                                                                            index
                                                                        ? Color.fromARGB(
                                                                            255,
                                                                            57,
                                                                            129,
                                                                            237)
                                                                        : Colors
                                                                            .white),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                              ),
                                                              Text(
                                                                '${features[index].description}',
                                                                style: GoogleFonts
                                                                    .ibmPlexSansThai(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: hoveredIndex ==
                                                                          index
                                                                      ? Color.fromARGB(
                                                                          255,
                                                                          57,
                                                                          129,
                                                                          237)
                                                                      : Colors
                                                                          .white,
                                                                  fontSize: 16,
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                color: Colors.transparent,
                                              ),
                                            );
                                          }),
                                    )
                                  : Container(
                                      child: GridView.builder(
                                          shrinkWrap: true,
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 1,
                                            crossAxisSpacing: 20,
                                            mainAxisSpacing: 20,
                                          ),
                                          itemCount: features.length,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return Container(
                                              child: new Material(
                                                child: new InkWell(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
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
                                                  hoverColor: Color.fromARGB(
                                                      255, 228, 238, 250),
                                                  child: new Container(
                                                    // width: 266,
                                                    // height: 189,
                                                    width: 100,
                                                    height: 100,
                                                    child: Center(
                                                      child: Container(
                                                        // margin: EdgeInsets.all(15),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 6,
                                                                  right: 6,
                                                                  bottom: 12),
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: <Widget>[
                                                              SizedBox(
                                                                  width: 70,
                                                                  height: 70,
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/${features[index].imageUrl}',
                                                                  )),
                                                              Text(
                                                                '${features[index].title}',
                                                                style: GoogleFonts.poppins(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        20,
                                                                    color: hoveredIndex ==
                                                                            index
                                                                        ? Color.fromARGB(
                                                                            255,
                                                                            57,
                                                                            129,
                                                                            237)
                                                                        : Colors
                                                                            .white),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                              ),
                                                              Text(
                                                                '${features[index].description}',
                                                                style: GoogleFonts
                                                                    .ibmPlexSansThai(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: hoveredIndex ==
                                                                          index
                                                                      ? Color.fromARGB(
                                                                          255,
                                                                          57,
                                                                          129,
                                                                          237)
                                                                      : Colors
                                                                          .white,
                                                                  fontSize: 16,
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                color: Colors.transparent,
                                              ),
                                            );
                                          }))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
