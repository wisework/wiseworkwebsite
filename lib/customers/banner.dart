import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/responsive.dart';

class Banner extends StatelessWidget {
  const Banner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1440,
      // color: Colors.indigo,
      child: Center(
          child: Responsive.isDesktop(context)
              ? Stack(
                  children: [
                    Center(
                      child: Container(
                        width: 1440,
                        height: 304,
                        // color: Colors.indigo,
                      ),
                    ),
                    Center(
                      child: Container(
                        width: 1440,
                        height: 304,
                        child: Image.asset(
                          "/about/banner/banner.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Center(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 40, left: 224, right: 224),
                            child: Container(
                              width: 984,
                              height: 110,
                              // color: Colors.amber,
                              child: Text(
                                "About Us",
                                style: GoogleFonts.ibmPlexSansThai(
                                    fontSize: 96,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            width: 750,
                            // width: 806.91,
                            // height: Responsive.isDesktop(context) ? 65 : 60,
                            // color: Colors.amber,
                            child: Text(
                              "“เรา คือ ผู้ให้บริการและคำปรึกษาเกี่ยวกับกฎหมาย และกฎระเบียบจากหน่วยงานกำกับดูแล\nโดยทีมนักพัฒนา และผู้เชี่ยวชาญมากประสบการณ์”",
                              style: GoogleFonts.ibmPlexSans(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : Responsive.isTablet(context)
                  ? Center(
                      child: Stack(
                        children: [
                          Center(
                            child: Container(
                              width: 768,
                              height: 305,
                              // color: Colors.indigo,
                            ),
                          ),
                          Container(
                            width: 1440,
                            height: 305,
                            child: Image.asset(
                              "/about/banner/banner.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 50),
                                  child: Text(
                                    "About Us",
                                    style: GoogleFonts.ibmPlexSans(
                                        fontSize: 48,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Text(
                                    "“เรา คือ ผู้ให้บริการและคำปรึกษาเกี่ยวกับกฎหมาย และกฎระเบียบจากหน่วยงานกำกับดูแล\nโดยทีมนักพัฒนาและผู้เชี่ยวชาญมากประสบการณ์”",
                                    style: GoogleFonts.ibmPlexSansThai(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  : Center(
                      child: Stack(
                        children: [
                          Center(
                            child: Container(
                              width: 375,
                              height: 344,
                              // color: Colors.indigo,
                            ),
                          ),
                          Container(
                            width: 1440,
                            height: 344,
                            child: Image.asset(
                              "/about/banner/banner.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 50),
                                  child: Text(
                                    "Our Customers",
                                    style: GoogleFonts.ibmPlexSans(
                                        fontSize: 48,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: Text(
                                    "จากประสบการณ์ของทีมผู้ให้คำปรึกษามากกว่า 50+ โครงการ\nที่ได้รับความไว้วางใจให้ดูแลธุรกิจทั้งหน่วยงานองค์ภาครัฐ และองค์กรเอกชน ",
                                    style: GoogleFonts.ibmPlexSansThai(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
    );
  }
}
