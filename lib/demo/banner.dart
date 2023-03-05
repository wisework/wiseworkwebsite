import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/responsive.dart';

class BannerPage extends StatelessWidget {
  const BannerPage({super.key});

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
                                "ทดลองใช้งานฟรี",
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
                              "สัมผัสประสบการณ์ใหม่ของการจัดการข้อมูลส่วนตัวที่แตกต่างอย่างเป็นระบบ\nทดลองใช้งานโปรแกรม PDPA Management Platform แค่คลิกลงทะเบียน",
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
                                    "ทดลองใช้งานฟรี",
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
                                    "สัมผัสประสบการณ์ใหม่ของการจัดการข้อมูลส่วนตัว\nที่แตกต่างอย่างเป็นระบบทดลองใช้งานโปรแกรม\nPDPA Management Platform แค่คลิกลงทะเบียน",
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
                              height: 300,
                              // color: Colors.indigo,
                            ),
                          ),
                          Container(
                            width: 1440,
                            height: 300,
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
                                    "ทดลองใช้งานฟรี",
                                    style: GoogleFonts.ibmPlexSans(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: Text(
                                    "สัมผัสประสบการณ์ใหม่ของการจัดการข้อมูลส่วนตัว\nที่แตกต่างอย่างเป็นระบบทดลองใช้งานโปรแกรม\nPDPA Management Platform แค่คลิกลงทะเบียน",
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
