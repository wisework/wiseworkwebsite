import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/responsive.dart';
// import 'package:wiseintern/responsive.dart';

class Compare extends StatefulWidget {
  @override
  _CompareState createState() => _CompareState();
}

class _CompareState extends State<Compare> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 1440,
        color: Color.fromARGB(255, 232, 242, 254),
        child: Column(
          children: [
            SizedBox(
              height: Responsive.isDesktop(context) ? 56 : 74,
            ),
            Row(
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
                          color: Color.fromARGB(255, 57, 128, 237), width: 5)),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  // color: Colors.amber,
                  height: 25,
                  child: Text(
                    "Package",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color.fromARGB(255, 57, 128, 237)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 65),
              child: Text(
                Responsive.isDesktop(context)
                    ? "เปรียบเทียบ Package ต่างกันอย่างไร?"
                    : "เปรียบเทียบ Package\nต่างกันอย่างไร?",
                style: GoogleFonts.ibmPlexSans(
                    fontSize: 48,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 5, 45, 97)),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "แนะนำแพ็กเกจที่เหมาะที่สุดสำหรับธุรกิจของคุณ",
              style: GoogleFonts.nunito(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 75, 196, 213)),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 102,
            ),
          ],
        ),
      ),
    );
  }
}
