import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/responsive.dart';

class AdvisePage extends StatefulWidget {
  @override
  _AdviseState createState() => _AdviseState();
}

class _AdviseState extends State<AdvisePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 1440,
      height: 556,
      color: Color.fromARGB(255, 5, 45, 97),
      child: Stack(
        children: [
          Container(
            width: 1440,
            height: 556,
            color: Color.fromARGB(255, 5, 45, 97),
          ),
          new Positioned(
              bottom: 480,
              child: Container(
                width: 390,
                height: 390,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                    border: Border.all(
                        color: Color.fromARGB(62, 57, 129, 237), width: 35)),
              )),
          new Positioned(
              bottom: 420,
              right: 980,
              child: Container(
                width: 525,
                height: 525,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                    border: Border.all(
                        color: Color.fromARGB(62, 57, 129, 237), width: 35)),
              )),
          new Positioned(
              bottom: 360,
              right: 910,
              child: Container(
                width: 663,
                height: 663,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                    border: Border.all(
                        color: Color.fromARGB(62, 57, 129, 237), width: 35)),
              )),
          new Positioned(
              bottom: 100,
              left: 1380,
              child: Container(
                width: 390,
                height: 390,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                    border: Border.all(
                        color: Color.fromARGB(62, 57, 129, 237), width: 35)),
              )),
          new Positioned(
              bottom: 40,
              left: 1310,
              child: Container(
                width: 525,
                height: 525,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                    border: Border.all(
                        color: Color.fromARGB(62, 57, 129, 237), width: 35)),
              )),
          new Positioned(
            top: 166.5,
            left: 118,
            child: Container(
              width: 540,
              height: 65,
              // color: Colors.amber,
              child: Text(
                "พร้อมวางแผนให้ธุรกิจคุณ!",
                style: GoogleFonts.ibmPlexSans(
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.start,
              ),
            ),
          ),
          new Positioned(
              top: 240,
              left: 118,
              child: Text(
                "ให้องค์กรของคุณ วางแผนและจัดการกับ DATA หัวใจสำคัญของธุรกิจ\nได้ถูกต้องตามกฎหมาย ปรึกษาเรา #TeamWiseWork",
                style: GoogleFonts.ibmPlexSansThai(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
                textAlign: TextAlign.start,
              )),
          new Positioned(
            top: 47,
            left: 745,
            child: SizedBox(
                width: 506,
                height: 435,
                child: Image.asset("/about/advise/comp.png")),
          ),
          new Positioned(
            top: 375,
            left: 118,
            child: SizedBox(
              width: 193,
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 75, 195, 211),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                ),
                child: Text(
                  'ติดต่อเรา',
                  style: GoogleFonts.ibmPlexSansThai(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
