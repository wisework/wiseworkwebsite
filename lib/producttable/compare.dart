import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/responsive.dart';

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
        height: 242,
        color: Color.fromARGB(255, 232, 242, 254),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 65),
              child: Text(
                "เปรียบเทียบ Package ต่างกันอย่างไร?",
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
            )
          ],
        ),
      ),
    );
  }
}
