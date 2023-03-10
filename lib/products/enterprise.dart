import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SingleProductPage extends StatefulWidget {
  const SingleProductPage({Key? key}) : super(key: key);

  @override
  State<SingleProductPage> createState() => _SingleProductPageState();
}

class Model {
  final String title;
  final String description;
  Model(this.title, this.description);
}

class _SingleProductPageState extends State<SingleProductPage> {
  int? hoveredIndex;
  List<Model> list = [
    Model(
      "Modules",
      "Max (11 Modules)",
    ),
    Model(
      "Concurrent User",
      "Unlimited",
    ),
    Model(
      "Storage",
      "Unlimited",
    ),
    Model(
      "Number of Data Subject",
      "~ 10,000,000",
    ),
    Model(
      "ครบถ้วนตามพรบ.ฯ",
      "Support",
    ),
    Model(
      "การติดตั้งระบบ",
      "On Cloud/ On Premise",
    ),
    Model(
      "พัฒนาเพิ่มเติมตามความต้องการ",
      "Support",
    ),
    Model(
      "รองรับการทำงานแบบ Multi-Tenant",
      "Support",
    ),
    Model(
      "Product Support",
      "24x7 Premium Support",
    ),
    Model(
      "API for Import&Export",
      "Import & Export",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var groupofpic = Container(
      color: Color.fromARGB(0, 255, 193, 7),
      height: 582,
      width: 815,
      // alignment: FractionalOffset.center,
      child: new Stack(
        //alignment:new Alignment(x, y)
        children: <Widget>[
          new SizedBox(
            height: 582,
            width: 815,
          ),
          // new Image(image: AssetImage("assets/product/productframe.png")),
          new Positioned(
            // left: 160,
            right: 35,
            top: 2,
            height: 630,
            width: 650,
            child: new Image(image: AssetImage("assets/product/productbg.png")),
          ),
          new Positioned(
            left: 0,
            bottom: 100,
            height: 500,
            width: 815,
            child:
                new Image(image: AssetImage("assets/product/productpic.png")),
          ),
        ],
      ),
    );
    var title = Container(
      color: Color.fromARGB(0, 0, 187, 212),
      height: 18,
      width: 444,
      child: Text('PDPA MANAGEMENT PLATFORM',
          style: GoogleFonts.ibmPlexSansThai(
              letterSpacing: 2,
              // height: 1.25,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 0, 112, 240))),
    );
    var productname = Container(
      color: Color.fromARGB(0, 0, 187, 212),
      height: 60,
      width: 444,
      child: Text('Enterprise',
          style: GoogleFonts.ibmPlexSansThai(
              // height: 1.25,
              fontSize: 50,
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 24, 84, 110))),
    );
    var productlicense = Container(
      color: Color.fromARGB(0, 0, 187, 212),
      height: 60,
      width: 444,
      child: Text('Perpetual License',
          style: GoogleFonts.ibmPlexSansThai(
              // height: 1.25,
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 31, 40, 79))),
    );
    var aboutproduct = Container(
      color: Color.fromARGB(0, 255, 153, 0),
      height: 158,
      width: 444,
      child: Text(
        'ระบบบริหารจัดการข้อมูลส่วนบุคคล PDPA \nเหมาะสำหรับองค์กรขนาดใหญ่ และบริษัทในเครือ\nควบคุมระบบทั้งหมดได้จากศูนย์กลาง \nครอบคลุมทุกฟังก์ชันการใช้งานเต็มรูปแบบ 11 \nModules และไม่มีข้อจำกัดในการเชื่อมต่อกับระบบอื่น',
        style: GoogleFonts.ibmPlexSansThai(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 0, 0, 0)),
      ),
    );

    var priceclick = SizedBox(
      width: 192,
      height: 48,
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 52, 145, 206),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          child: Text(
            'รับใบเสนอราคา',
            style: GoogleFonts.ibmPlexSansThai(
                fontSize: 20, fontWeight: FontWeight.w500),
          )),
    );
    var democlick = SizedBox(
      width: 192,
      height: 48,
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 75, 195, 211),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          child: Text(
            'Request Demo',
            style: GoogleFonts.ibmPlexSansThai(
                fontSize: 20, fontWeight: FontWeight.w500),
          )),
    );

    return Center(
      child: Container(
        color: Colors.white,
        width: 1440,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 22,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    title,
                    productname,
                    productlicense,
                    aboutproduct,
                    SizedBox(height: 32),
                    Row(
                      children: [
                        priceclick,
                        SizedBox(
                          width: 16,
                        ),
                        democlick,
                        SizedBox(
                          width: 42,
                        ),
                      ],
                    )
                  ],
                ),
                groupofpic
              ],
            ),
            SizedBox(
              height: 90,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 180),
                  child: Column(
                    children: [
                      Container(
                        // color: Colors.red,
                        width: 500,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: list.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                child: new Material(
                                  child: new InkWell(
                                    onTap: () {},
                                    onHover: (value) {
                                      setState(() {
                                        if (value) {
                                          hoveredIndex = index;
                                        } else {
                                          hoveredIndex = null;
                                        }
                                      });
                                    },
                                    // hoverColor: Color.fromARGB(255, 228, 238, 250),
                                    child: new Container(
                                      // width: 500,
                                      // height: 200,
                                      child: Container(
                                        height: 56,
                                        color: hoveredIndex == index
                                            ? Color.fromARGB(255, 255, 255, 255)
                                            : Color.fromARGB(
                                                255, 255, 255, 255),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 16,
                                                  height: 16,
                                                  child: Image.asset(hoveredIndex ==
                                                          index
                                                      ? "assets/product/select.png"
                                                      : "assets/product/choices.png"),
                                                ),
                                                SizedBox(
                                                  width: 24,
                                                ),
                                                Text(
                                                  '${list[index].title}',
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          fontSize: 24,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color:
                                                              hoveredIndex ==
                                                                      index
                                                                  ? Color
                                                                      .fromARGB(
                                                                          255,
                                                                          75,
                                                                          196,
                                                                          213)
                                                                  : Color
                                                                      .fromARGB(
                                                                          255,
                                                                          23,
                                                                          24,
                                                                          26)),
                                                ),
                                              ],
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
                ),
                Column(
                  children: [
                    Container(
                      // color: Colors.red,
                      width: 450,
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: list.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              child: new Material(
                                child: new InkWell(
                                  onTap: () {},
                                  onHover: (value) {
                                    setState(() {
                                      if (value) {
                                        hoveredIndex = index;
                                      } else {
                                        hoveredIndex = null;
                                      }
                                    });
                                  },
                                  // hoverColor: Color.fromARGB(255, 228, 238, 250),
                                  child: new Container(
                                    // width: 500,
                                    // height: 200,
                                    child: Container(
                                      height: 56,
                                      color: hoveredIndex == index
                                          ? Color.fromARGB(255, 255, 255, 255)
                                          : Color.fromARGB(255, 255, 255, 255),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${list[index].description}',
                                            style: GoogleFonts.ibmPlexSansThai(
                                              fontWeight: FontWeight.w400,
                                              color: hoveredIndex == index
                                                  ? Color.fromARGB(
                                                      255, 75, 196, 213)
                                                  : Color.fromARGB(
                                                      255, 23, 24, 26),
                                              fontSize: 24,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
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
                )
              ],
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
