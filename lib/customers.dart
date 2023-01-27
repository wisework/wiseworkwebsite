import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'navbar.dart';

class CustomerModel {
  final String imageUrl;
  CustomerModel(
    this.imageUrl,
  );
}

class CustomerPage extends StatelessWidget {
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

  // bool isSmallScreen = false;
  // bool isLargeScreen = false;
  // double _opacity = 0;
  // bool _isNavMenuVisible = false;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    // if (screenSize.width > 1000) {
    //   isLargeScreen = true;

    // }

    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 1000,
            color: Colors.white,
            margin: EdgeInsets.all(00.0),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'ลูกค้าคนสำคัญของเรา',
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 24, 84, 110),
                        fontSize: 35,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          'ด้วยประสบการณ์ Software Solutions ครบวงจร เราได้รับความไว้วางใจให้ดูแลธุรกิจทั้งองค์กรภาครัฐ องค์กรเอกชน ตลอดจนธุรกิจขนาดเล็ก หรือ SME ',
                          style: GoogleFonts.ibmPlexSansThai(
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 24, 84, 110),
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        GridView.builder(
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: screenSize.width > 1000 ? 5 : 3,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20,
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
                                    width: 180,
                                    height: 180,
                                    child: Center(
                                      child: Container(
                                        margin: EdgeInsets.all(15),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            SizedBox(
                                              width: 100,
                                              height: 100,
                                              child:
                                                  Image.asset(customer[index]),
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
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      // drawer: NavBar(),
    );
  }
}
