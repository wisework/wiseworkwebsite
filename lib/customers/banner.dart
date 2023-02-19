import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/responsive.dart';

class BannerPage extends StatelessWidget {
  const BannerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            width: 1440,
            height: 304,
            // color: Colors.amber,
          ),
          new Positioned(
            top: 0,
            child: Container(
              width: 1440,
              height: 304,
              child: Image.asset("/about/banner/bg-banner.png"),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 224, right: 224),
                child: Container(
                  width: 984,
                  height: 110,
                  // color: Colors.amber,
                  child: Text(
                    "Our Customers",
                    style: GoogleFonts.ibmPlexSansThai(
                        fontSize: 96,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 35, left: 313, right: 320.09),
                child: Container(
                  width: 806.91,
                  height: 65,
                  // color: Colors.amber,
                  child: Text(
                    "จากประสบการณ์ของทีมผู้ให้คำปรึกษามามากกว่า 50+ โครงการ\nที่ได้รับความไว้วางใจให้ดูแลธุรกิจทั้งหน่วยงานองค์ภาครัฐ และองค์กรเอกชน ",
                    style: GoogleFonts.ibmPlexSansThai(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
