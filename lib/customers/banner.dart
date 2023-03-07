import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/responsive.dart';

class BannerCus extends StatelessWidget {
  const BannerCus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 1440,
        color: Colors.white,
        child: Center(
          child: Container(
            width: Responsive.isDesktop(context) ? 1440 : 768,
            color: Colors.white,
            child: Responsive.isDesktop(context)
                ? Padding(
                    padding: const EdgeInsets.only(top: 68, left: 109),
                    child: Wrap(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            width: 60,
                            height: 5,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 57, 128, 237),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    color: Color.fromARGB(255, 57, 128, 237),
                                    width: 5)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            // color: Colors.amber,
                            height: 20,
                            child: Text(
                              "Our Customers",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 57, 128, 237)),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                : Responsive.isTablet(context)
                    ? Padding(
                        padding: const EdgeInsets.only(top: 50, left: 40),
                        child: Wrap(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                width: 60,
                                height: 5,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 57, 128, 237),
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color:
                                            Color.fromARGB(255, 57, 128, 237),
                                        width: 5)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Container(
                                // color: Colors.amber,
                                height: 20,
                                child: Text(
                                  "Our Customers",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 57, 128, 237)),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    : Container(),
          ),
        ));
  }
}
