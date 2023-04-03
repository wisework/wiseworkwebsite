import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:wiseintern/navbar.dart';
import 'package:wiseintern/responsive.dart';
import 'package:wiseintern/menu_drawer.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:wiseintern/features/pdmanagement.dart';
import 'package:wiseintern/home/packagepage.dart';
import 'package:wiseintern/home/footer.dart';
import 'package:wiseintern/model/packages.dart';

class MyPackages extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final String detail;
  MyPackages(this.title, this.description, this.imageUrl, this.detail);

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
                  child: Row(
                    children: [
                      SizedBox(
                        height: 60,
                        width: 100,
                        child: GestureDetector(
                          onTap: () => context.go('/'),
                          child: Image.asset(
                            'assets/logo.png',
                          ),
                        ),
                      ),
                    ],
                  ))
              : NavBar()),
      drawer: MenuDrawer(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Responsive.isDesktop(context)
                  ? Container(
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
                                padding:
                                    const EdgeInsets.only(top: 121, left: 150),
                                child: Container(
                                  width: 553,
                                  // color: Colors.amber,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      
                                      Text(
                                        "$title",
                                        style: GoogleFonts.poppins(
                                            fontSize: 48,
                                            fontWeight: FontWeight.w700,
                                            color:
                                                Color.fromARGB(255, 5, 45, 97)),
                                        textAlign: TextAlign.start,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 32),
                                        child: Text(
                                          "$description",
                                          style: GoogleFonts.ibmPlexSansThai(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 63),
                                        child: Text(
                                          "$detail",
                                          style: GoogleFonts.ibmPlexSansThai(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  255, 23, 24, 26)),
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
                                padding:
                                    const EdgeInsets.only(top: 64, left: 72),
                                child: SizedBox(
                                    width: 540,
                                    height: 540,
                                    child: Image.asset("assets/$imageUrl")),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  : Responsive.isTablet(context)
                      ? Container(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 23.5, left: 50),
                                        child: Container(
                                          width: 367,
                                          // color: Colors.amber,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "KEY FEATURES",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color.fromARGB(
                                                        255, 0, 112, 240)),
                                                textAlign: TextAlign.start,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8),
                                                child: Text(
                                                  "$title",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 44,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Color.fromARGB(
                                                          255, 5, 45, 97)),
                                                  textAlign: TextAlign.start,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10),
                                                child: Text(
                                                  "$description",
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          fontSize: 22,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.black),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10),
                                                child: Text(
                                                  "รองรับการใช้สิทธิของเจ้าของข้อมูลส่วนบุคคล\nตามกฎหมายมาตรา ได้แก่ มาตรา 24 , มาตรา\n26, มาตรา 30,มาตรา 31, มาตรา 32, มาตรา\n36(1), มาตรา 39",
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Color.fromARGB(
                                                              255, 23, 24, 26)),
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
                                        padding: const EdgeInsets.only(
                                            top: 70, left: 20),
                                        child: SizedBox(
                                            width: 275,
                                            height: 270,
                                            child: Image.asset(
                                                "assets/$imageUrl")),
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
                      : Container(
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
                                  padding:
                                      const EdgeInsets.only(top: 30, left: 30),
                                  child: Text(
                                    "KEY FEATURES",
                                    style: GoogleFonts.ibmPlexSansThai(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            Color.fromARGB(255, 0, 112, 240)),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 8, left: 30),
                                  child: Text(
                                    "$title",
                                    style: GoogleFonts.ibmPlexSansThai(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromARGB(255, 5, 45, 97)),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 20, left: 30),
                                  child: Text(
                                    "$description",
                                    style: GoogleFonts.ibmPlexSansThai(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20, left: 30, bottom: 30),
                                  child: Text(
                                    "รองรับการใช้สิทธิของเจ้าของข้อมูลส่วนบุคคล\nตามกฎหมายมาตรา ได้แก่ มาตรา 24 ,\nมาตรา 26, มาตรา 30, มาตรา 31, มาตรา\n32, มาตรา 36(1), มาตรา 39",
                                    style: GoogleFonts.ibmPlexSansThai(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 30),
                                  child: Center(
                                    child: SizedBox(
                                        height: 270,
                                        child: Image.asset(
                                          "assets/$imageUrl",
                                          fit: BoxFit.fitHeight,
                                        )),
                                  ),
                                )
                              ],
                            ),
                          )),
                        ),
              // Check(),
              // Example(),
              // FeaturesPage(),
              Footer()
            ],
          ),
        ),
      ),
    );
  }
}
