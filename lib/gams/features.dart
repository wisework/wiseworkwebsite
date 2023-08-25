import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/responsive.dart';
import 'package:go_router/go_router.dart';

import 'package:wiseintern/model/features.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

// import 'package:wiseintern/features/templateFeatures.dart';

class FeaturesgamsPage extends StatefulWidget {
  const FeaturesgamsPage({Key? key}) : super(key: key);

  @override
  State<FeaturesgamsPage> createState() => _FeaturesgamsPageState();
}

class _FeaturesgamsPageState extends State<FeaturesgamsPage> {
  int? hoveredIndex;
  bool _hoverText = false;

  List<FeatureModel> features = [];

  // bool _hover = false;
  Future<String> loadjsonData() async {
    return await rootBundle.loadString("assets/featuresGAMS.json");
  }

  Future<void> parsejsonData() async {
    String json = await loadjsonData();
    List<dynamic> data = jsonDecode(json);
    // print(1);
    List<FeatureModel> demo = [];
    for (dynamic item in data) {
      Map<String, dynamic> test = item;
      demo.add(FeatureModel.fromJson(test));
      // print(test);
    }
    setState(() {
      features = demo;
    });
  }

  @override
  void initState() {
    parsejsonData();
    super.initState();
  }

  int _gridCount = 5;

  // @override
  // void dispose() {
  //   _isHoveredNotifier.dispose();
  //   super.dispose();
  // }

  final ValueNotifier<bool> _isHoveredNotifier = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    if (features.isEmpty) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    return Center(
      child: Container(
        color: Color.fromARGB(255, 255, 255, 255),
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
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: Responsive.isDesktop(context)
                              ? 48
                              : Responsive.isTablet(context)
                                  ? 35
                                  : 24,
                        ),
                      ),
                    ),
                    Responsive.isDesktop(context)
                        ? Container()
                        : Responsive.isTablet(context)
                            ? Container()
                            : Padding(
                                padding:
                                    const EdgeInsets.only(top: 16, bottom: 15),
                                child: Text(
                                  "“เครื่องมือที่ช่วยให้องค์กรของคุณ\nจัดการ PDPA อย่างเป็นระบบ”",
                                  style: GoogleFonts.ibmPlexSansThai(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color:
                                          const Color.fromARGB(255, 0, 0, 0)),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                    Responsive.isDesktop(context)
                        ? Container(
                            child: GridView.builder(
                                shrinkWrap: true,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 50,
                                  mainAxisSpacing: 50,
                                ),
                                itemCount: features.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    width: 416,
                                    height: 380,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.3),
                                            spreadRadius: 2,
                                            blurRadius: 20,
                                            offset: Offset(0,
                                                3), // changes position of shadow
                                          ),
                                        ],
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: new Material(
                                      child: new InkWell(
                                        borderRadius: BorderRadius.circular(16),
                                        onTap: () => context
                                            .go('/${features[index].page}'),
                                        onHover: (value) {
                                          setState(() {
                                            if (value) {
                                              hoveredIndex = index;
                                            } else {
                                              hoveredIndex = null;
                                            }
                                          });
                                        },
                                        hoverColor:
                                            Color.fromARGB(255, 57, 128, 237),
                                        child: new Container(
                                          width: 416,
                                          height: 380,
                                          child: Center(
                                            child: Container(
                                              // margin: EdgeInsets.all(15),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 48,
                                                    left: 6,
                                                    right: 6,
                                                    bottom: 12),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    SizedBox(
                                                        width: 100,
                                                        height: 100,
                                                        child: Image.asset(
                                                          'assets/${features[index].imageUrl}',
                                                        )),
                                                    Text(
                                                      '${features[index].title}',
                                                      style: GoogleFonts.ibmPlexSansThai(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 24,
                                                          color: hoveredIndex ==
                                                                  index
                                                              ? Color.fromARGB(
                                                                  255,
                                                                  255,
                                                                  255,
                                                                  255)
                                                              : const Color
                                                                      .fromARGB(
                                                                  255,
                                                                  0,
                                                                  0,
                                                                  0)),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                    Text(
                                                      '${features[index].description}',
                                                      style: GoogleFonts
                                                          .ibmPlexSansThai(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: hoveredIndex ==
                                                                index
                                                            ? Color.fromARGB(
                                                                255,
                                                                255,
                                                                254,
                                                                254)
                                                            : const Color
                                                                    .fromARGB(
                                                                255, 0, 0, 0),
                                                        fontSize: 20,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                    // TextButton(
                                                    //   // style: TextButton
                                                    //   //     .styleFrom(
                                                    //   //   backgroundColor: hoveredIndex ==
                                                    //   //           index
                                                    //   //       ? Color.fromARGB(255,228,238,250)
                                                    //   //       :Color.fromARGB(255, 5, 45, 97) ,
                                                    //   // ),
                                                    //   onPressed: () => context.go(
                                                    //       '/${features[index].page}'),
                                                    //   child: GridTile(
                                                    //       child: Row(
                                                    //     mainAxisAlignment:
                                                    //         MainAxisAlignment
                                                    //             .center,
                                                    //     children: [
                                                    //       Text(
                                                    //         "more",
                                                    //         style: GoogleFonts
                                                    //             .ibmPlexSansThai(
                                                    //                 fontSize:
                                                    //                     18,
                                                    //                 color: Color
                                                    //                     .fromARGB(
                                                    //                         255,
                                                    //                         57,
                                                    //                         129,
                                                    //                         237)),
                                                    //       ),
                                                    //       Icon(
                                                    //         // <-- Icon
                                                    //         Icons
                                                    //             .arrow_forward_sharp,
                                                    //         color:
                                                    //             Color.fromARGB(
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
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Container(
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.3),
                                                spreadRadius: 2,
                                                blurRadius: 20,
                                                offset: Offset(0,
                                                    3), // changes position of shadow
                                              ),
                                            ],
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: new Material(
                                          child: new InkWell(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            onTap: () => context
                                                .go('/${features[index].page}'),
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
                                                255, 57, 128, 237),
                                            child: new Container(
                                              width: 200,
                                              height: 195,
                                              child: Center(
                                                child: Container(
                                                  // margin: EdgeInsets.all(15),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
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
                                                            child: Image.asset(
                                                              'assets/${features[index].imageUrl}',
                                                            )),
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        Text(
                                                          '${features[index].title}',
                                                          style: GoogleFonts.ibmPlexSansThai(
                                                              fontWeight: FontWeight
                                                                  .w500,
                                                              fontSize: 20,
                                                              color: hoveredIndex ==
                                                                      index
                                                                  ? Color
                                                                      .fromARGB(
                                                                          255,
                                                                          255,
                                                                          255,
                                                                          255)
                                                                  : const Color
                                                                          .fromARGB(
                                                                      255,
                                                                      0,
                                                                      0,
                                                                      0)),
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                        Text(
                                                          '${features[index].description}',
                                                          style: GoogleFonts
                                                              .ibmPlexSansThai(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: hoveredIndex ==
                                                                    index
                                                                ? Color
                                                                    .fromARGB(
                                                                        255,
                                                                        255,
                                                                        255,
                                                                        255)
                                                                : const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    0,
                                                                    0,
                                                                    0),
                                                            fontSize: 16,
                                                          ),
                                                          textAlign:
                                                              TextAlign.center,
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
                            : Column(
                                children: [
                                  Container(
                                      child: GridView.builder(
                                          shrinkWrap: true,
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 1,
                                            crossAxisSpacing: 20,
                                            mainAxisSpacing: 20,
                                          ),
                                          itemCount: _gridCount,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return Container(
                                              decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(0.3),
                                                      spreadRadius: 2,
                                                      blurRadius: 20,
                                                      offset: Offset(0,
                                                          3), // changes position of shadow
                                                    ),
                                                  ],
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: new Material(
                                                child: new InkWell(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                  onTap: () => context.go(
                                                      '/${features[index].page}'),
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
                                                      255, 57, 128, 237),
                                                  child: new Container(
                                                    // width: 266,
                                                    // height: 189,
                                                    width: 160,
                                                    height: 300,
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
                                                                  height: 52,
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/${features[index].imageUrl}',
                                                                  )),
                                                              Text(
                                                                '${features[index].title}',
                                                                style: GoogleFonts.ibmPlexSansThai(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        18,
                                                                    color: hoveredIndex ==
                                                                            index
                                                                        ? Color.fromARGB(
                                                                            255,
                                                                            255,
                                                                            255,
                                                                            255)
                                                                        : const Color.fromARGB(
                                                                            255,
                                                                            5,
                                                                            5,
                                                                            5)),
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
                                                                          253,
                                                                          253,
                                                                          253)
                                                                      : const Color
                                                                              .fromARGB(
                                                                          255,
                                                                          0,
                                                                          0,
                                                                          0),
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
                                          })),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30),
                                    child: SizedBox(
                                      width: 193,
                                      height: 50,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            if (_gridCount == 5) {
                                              _gridCount = features.length;
                                            } else {
                                              _gridCount = 5;
                                            }
                                          });
                                        },
                                        child: Text(
                                          _gridCount == 5
                                              ? 'See More'
                                              : 'See Less',
                                          style: GoogleFonts.ibmPlexSansThai(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Color.fromARGB(255, 75, 195, 211),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
