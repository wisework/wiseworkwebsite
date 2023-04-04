import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/responsive.dart';
// import 'package:wiseintern/responsive.dart';

class TableHeader extends StatefulWidget {
  @override
  _TableHeaderState createState() => _TableHeaderState();
}

class _TableHeaderState extends State<TableHeader> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 1440,
        color: Color.fromARGB(255, 232, 242, 254),
        child: Column(
          children: [
            SizedBox(
              height: Responsive.isDesktop(context)
                  ? 56
                  : Responsive.isTablet(context)
                      ? 74
                      : 53.5,
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
                          "Package",
                          style: GoogleFonts.ibmPlexSansThai(
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
                  ? 22.5
                  : Responsive.isTablet(context)
                      ? 69.5
                      : null,
            ),
            Text(
              Responsive.isDesktop(context)
                  ? "เปรียบเทียบ Package ต่างกันอย่างไร?"
                  : "เปรียบเทียบ Package\nต่างกันอย่างไร?",
              style: GoogleFonts.ibmPlexSans(
                  fontSize: !Responsive.isMobile(context) ? 48 : 24,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 5, 45, 97)),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 25),
            Text(
              "แนะนำแพ็กเกจที่เหมาะที่สุดสำหรับธุรกิจของคุณ",
              style: GoogleFonts.ibmPlexSansThai(
                  fontSize: !Responsive.isMobile(context) ? 24 : 16,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 75, 196, 213)),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: Responsive.isDesktop(context)
                  ? 102
                  : Responsive.isTablet(context)
                      ? 69.5
                      : 53.5,
            ),
          ],
        ),
      ),
    );
  }
}
