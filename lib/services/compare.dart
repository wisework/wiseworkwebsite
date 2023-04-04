import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/responsive.dart';
import 'package:go_router/go_router.dart';

class Compare extends StatefulWidget {
  @override
  _CompareState createState() => _CompareState();
}

class _CompareState extends State<Compare> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Responsive.isDesktop(context)
            ? Container(
                width: 1440,
                height: 242,
                color: Color.fromARGB(255, 5, 45, 97),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 65),
                      child: Text(
                        "เปรียบเทียบ Package ต่างกันอย่างไร?",
                        style: GoogleFonts.ibmPlexSans(
                            fontSize: 48,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "แนะนำแพ็กเกจที่เหมาะที่สุดสำหรับธุรกิจของคุณ",
                          style: GoogleFonts.ibmPlexSansThai(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 75, 196, 213)),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        SizedBox(
                          width: 193,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () => context.go('/package'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 75, 195, 211),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0)),
                            ),
                            child: Text(
                              'คลิกที่นี่',
                              style: GoogleFonts.ibmPlexSansThai(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            : Container(
                width: 1440,
                color: Color.fromARGB(255, 5, 45, 97),
                child: Container(
                    width: Responsive.isTablet(context) ? 768 : 375,
                    height: Responsive.isTablet(context) ? 400 : 295,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Responsive.isTablet(context)
                            ? Padding(
                                padding: const EdgeInsets.only(top: 60),
                                child: Text(
                                  "เปรียบเทียบ Package\nต่างกันอย่างไร?",
                                  style: GoogleFonts.ibmPlexSans(
                                      fontSize: 48,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            : Padding(
                                padding: const EdgeInsets.only(top: 55.5),
                                child: Text(
                                    "เปรียบเทียบ Package\nต่างกันอย่างไร?",
                                    style: GoogleFonts.ibmPlexSans(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
                                    textAlign: TextAlign.center),
                              ),
                        Responsive.isTablet(context)
                            ? Padding(
                                padding: const EdgeInsets.only(top: 50),
                                child: Text(
                                  "แนะนำแพ็กเกจที่เหมาะที่สุดสำหรับธุรกิจของคุณ",
                                  style: GoogleFonts.ibmPlexSansThai(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 75, 195, 213)),
                                ),
                              )
                            : Padding(
                                padding: const EdgeInsets.only(top: 25),
                                child: Text(
                                  "แนะนำแพ็กเกจที่เหมาะที่สุดสำหรับธุรกิจของคุณ",
                                  style: GoogleFonts.ibmPlexSansThai(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 75, 195, 213)),
                                ),
                              ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: SizedBox(
                            width: 193,
                            height: 46,
                            child: ElevatedButton(
                              onPressed: () => context.go('/package'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 75, 195, 211),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0)),
                              ),
                              child: Text(
                                'คลิกที่นี่',
                                style: GoogleFonts.ibmPlexSansThai(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ));
  }
}
