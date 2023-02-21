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
        child: Stack(
          children: [
            Center(
              child: Container(
                width: Responsive.isDesktop(context)
                    ? 1440
                    : Responsive.isTablet(context)
                        ? 767
                        : 375,
                height: Responsive.isDesktop(context)
                    ? 304
                    : Responsive.isTablet(context)
                        ? 187
                        : 250,
                // color: Colors.amber,
              ),
            ),
            Center(
              child: Container(
                width: Responsive.isDesktop(context)
                    ? 1440
                    : Responsive.isTablet(context)
                        ? 767
                        : 375,
                height: Responsive.isDesktop(context)
                    ? 304
                    : Responsive.isTablet(context)
                        ? 187
                        : 250,
                color: Colors.indigo,
                child: Image.asset("/about/banner/banner.png"),
              ),
            ),
            Responsive.isMobile(context)
                ? Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
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
                            "“เรา คือ ผู้ให้บริการและคำปรึกษา\nเกี่ยวกับกฎหมาย และกฎระเบียบ\nจากหน่วยงานกำกับดูแล โดยทีมนักพัฒนา\nและผู้เชี่ยวชาญมากประสบการณ์”",
                            style: GoogleFonts.ibmPlexSansThai(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  )
                : Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 40, left: 224, right: 224),
                          child: Container(
                            width: Responsive.isDesktop(context) ? 984 : 690,
                            height: Responsive.isDesktop(context) ? 110 : 67,
                            // color: Colors.amber,
                            child: Text(
                              "About Us",
                              style: GoogleFonts.ibmPlexSansThai(
                                  fontSize: Responsive.isDesktop(context)
                                      ? 96
                                      : Responsive.isTablet(context)
                                          ? 48
                                          : 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Responsive.isDesktop(context) ? 30 : 0,
                        ),
                        Container(
                          width: Responsive.isTablet(context) ? 750 : 806.19,
                          // width: 806.91,
                          // height: Responsive.isDesktop(context) ? 65 : 60,
                          // color: Colors.amber,
                          child: Text(
                            "“เรา คือ ผู้ให้บริการและคำปรึกษาเกี่ยวกับกฎหมาย และกฎระเบียบจากหน่วยงานกำกับดูแล\nโดยทีมนักพัฒนา และผู้เชี่ยวชาญมากประสบการณ์”",
                            style: GoogleFonts.ibmPlexSans(
                                fontSize:
                                    Responsive.isTablet(context) ? 20 : 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
