import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/responsive.dart';

class BannerCus extends StatelessWidget {
  const BannerCus({super.key});

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
                    // Center(
                    //   child: Container(
                    //     width: 1440,
                    //     height: 304,
                    //     child: Image.asset(
                    //       "/about/banner/banner.png",
                    //       fit: BoxFit.fill,
                    //     ),
                    //   ),
                    // ),
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
                                "ลูกค้าคนสำคัญของเรา",
                                style: GoogleFonts.josefinSans(
                                    fontSize: 48,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 5, 45, 97)),
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
                              "ด้วยประสบการณ์ Software Solutions ครบวงจร เราได้รับความไว้วางใจให้ดูแล\nธุรกิจทั้งองค์กรภาครัฐ องค์กรเอกชน ตลอดจนธุรกิจขนาดเล็ก หรือ SME",
                              style: GoogleFonts.ibmPlexSans(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 108, 108, 114)),
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
                          // Container(
                          //   width: 1440,
                          //   height: 305,
                          //   child: Image.asset(
                          //     "/about/banner/banner.png",
                          //     fit: BoxFit.fill,
                          //   ),
                          // ),
                          Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 50),
                                  child: Text(
                                    "ลูกค้าคนสำคัญของเรา",
                                    style: GoogleFonts.josefinSans(
                                        fontSize: 36,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromARGB(255, 5, 45, 97)),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Text(
                                    "ด้วยประสบการณ์ Software Solutions ครบวงจร เราได้รับความไว้วางใจให้ดูแล\nธุรกิจทั้งองค์กรภาครัฐ องค์กรเอกชน ตลอดจนธุรกิจขนาดเล็ก หรือ SME  ",
                                    style: GoogleFonts.ibmPlexSansThai(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color:
                                            Color.fromARGB(255, 108, 108, 114)),
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
                          // Container(
                          //   width: 1440,
                          //   height: 344,
                          //   child: Image.asset(
                          //     "/about/banner/banner.png",
                          //     fit: BoxFit.fill,
                          //   ),
                          // ),
                          Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 50),
                                  child: Text(
                                    "ลูกค้าคนสำคัญของเรา",
                                    style: GoogleFonts.josefinSans(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromARGB(255, 5, 45, 97)),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: Text(
                                    "ด้วยประสบการณ์ Software Solutions ครบวงจร\nเราได้รับความไว้วางใจให้ดูแล\nธุรกิจทั้งองค์กรภาครัฐ องค์กรเอกชน\nตลอดจนธุรกิจขนาดเล็ก หรือ SME",
                                    style: GoogleFonts.ibmPlexSansThai(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color:
                                            Color.fromARGB(255, 108, 108, 114)),
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
