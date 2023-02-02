import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'navbar.dart';
import 'responsive.dart';

class CustomerModel {
  final String imageUrl;
  CustomerModel(
    this.imageUrl,
  );
}

class CustomerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List customer = [
      'customer/nia.png',
      'customer/viriya.png',
      'customer/royalTH.png',
      'customer/bitkub.png',
      'customer/bdms.png',
      'customer/boonrawd.png',
      'customer/brr.png',
      'customer/pat.png',
      'customer/advice.png',
      'customer/ichitan.png',
      'customer/singha.png',
      'customer/click.png',
      'customer/p-pat.png',
      'customer/rise-consulting.png',
      'customer/meng.png',
      'customer/singha-beer.png',
      'customer/daiichi.png',
      'customer/kdn.png',
      'customer/national-economic.png',
      'customer/intrarat.png',
      'customer/singha-park.png',
      'customer/muzik.png',
      'customer/santafe.png',
      'customer/ku.png',
      'customer/sbp.png',
      'customer/win.png',
    ];
    var screenSize = MediaQuery.of(context).size;
    // if (screenSize.width > 1000) {
    //   isLargeScreen = true;

    // }
    return Center(
      child: Container(
        width: 1440,
        color: Colors.white,
        margin: EdgeInsets.all(00.0),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 123,
                ),
                Text(
                  'ลูกค้าคนสำคัญของเรา',
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 24, 84, 110),
                    fontSize: Responsive.isDesktop(context)
                        ? 48
                        : Responsive.isTablet(context)
                            ? 35
                            : 25,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Column(
                  children: [
                    Text(
                      Responsive.isDesktop(context)
                          ? 'ด้วยประสบการณ์ Software Solutions ครบวงจร เราได้รับความไว้วางใจ\nให้ดูแลธุรกิจทั้งองค์กรภาครัฐ องค์กรเอกชน ตลอดจนธุรกิจขนาดเล็ก หรือ SME '
                          : 'ด้วยประสบการณ์ Software Solutions ครบวงจร เราได้รับความไว้วางใจให้ดูแลธุรกิจทั้งองค์กรภาครัฐ องค์กรเอกชน ตลอดจนธุรกิจขนาดเล็ก หรือ SME ',
                      style: GoogleFonts.ibmPlexSansThai(
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 24, 84, 110),
                        fontSize: Responsive.isDesktop(context)
                            ? 20
                            : Responsive.isTablet(context)
                                ? 20
                                : 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Column(
                  children: [
                    Container(
                      width: 980,
                      child: GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: Responsive.isDesktop(context)
                                ? 5
                                : Responsive.isTablet(context)
                                    ? 3
                                    : 2,
                            crossAxisSpacing: Responsive.isDesktop(context)
                                ? 20
                                : Responsive.isTablet(context)
                                    ? 20
                                    : 10,
                            mainAxisSpacing: Responsive.isDesktop(context)
                                ? 20
                                : Responsive.isTablet(context)
                                    ? 20
                                    : 10,
                          ),
                          itemCount: customer.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              // decoration: BoxDecoration(
                              //   borderRadius: BorderRadius.circular(20),
                              //   color: Color.fromARGB(255, 178, 205, 244),
                              // ),
                              child: new Material(
                                child: new Container(
                                  width: 165,
                                  height: 165,
                                  child: Center(
                                    child: Container(
                                      margin: EdgeInsets.all(15),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          SizedBox(
                                            width: Responsive.isDesktop(context)
                                                ? 140
                                                : Responsive.isTablet(context)
                                                    ? 140
                                                    : 100,
                                            height: Responsive.isDesktop(
                                                    context)
                                                ? 140
                                                : Responsive.isTablet(context)
                                                    ? 140
                                                    : 100,
                                            child: Image.asset(customer[index]),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                color: Colors.transparent,
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
