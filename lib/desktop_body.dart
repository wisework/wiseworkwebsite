import 'package:flutter/material.dart';
import 'responsive_layout.dart';

class FeatureModel {
  final String title;
  final String description;
  final String imageUrl;
  final String? routePath;
  FeatureModel(this.title, this.description, this.imageUrl, this.routePath);
}

class MyDesktopBody extends StatefulWidget {
  const MyDesktopBody({Key? key}) : super(key: key);

  @override
  State<MyDesktopBody> createState() => _MyDesktopBodyState();
}

class _MyDesktopBodyState extends State<MyDesktopBody> {
  // List title = [
  //   " PD Management",
  //   "DPIA & Risk Management",
  //   "Cookie Consent",
  //   "Consent Management",
  //   "Data Subject Right Management",
  //   "Data Breach",
  //   "Audit&Gap Management",
  //   "Policy&Notices Management",
  //   "Data Deiscover",
  //   "Executive Support System",
  //   "Legitimate Interest Assessment",
  //   "System Setting Management",
  // ];

  // List desc = [
  //   " จัดการบันทึกรายการข้อมูลส่วนบุคคลและการไหลของข้อมูล",
  //   "การบริหารความเสี่ยงและผลกระทบจากข้อมูลส่วนบุคคล",
  //   "การขอความยินยอมจากเจ้าของข้อมูลและการบริหารจัดการคุกกี้",
  //   "การบริหารจัดการให้ความยินยอม",
  //   "บริหารการขอใช้สิทธิ์จากเจ้าของข้อมูล",
  //   "บริหารกรณีเกิดข้อมูลรั่วไหล",
  //   "บริหารงานตรจสอบและการทำ GAP Analysis",
  //   "บริหารการสื่อสารนโยบายและประกาศความเป็นส่วนตัว",
  //   "ค้นหาข้อมูลส่วนตัวในระบบสารสนเทศ",
  //   "บริหารงานและจัดการรายงาน สำหรับผู้บริหาร",
  //   "การประเมินการนำฐานกฏหมายมาใช้",
  //   "ส่วนการตั้งค่า ส่วนส่งเสริมที่ถูกพัฒนาขึ้นมาเพื่อให้ผู้ดูแลระบบจัดการกับข้อมูลต่างๆ",
  // ];

  // List img = [
  //   "folder.png",
  //   "risk.png",
  //   "Cookie.png",
  //   "Consent.png",
  //   "data.png",
  //   "breach.png",
  //   "audit.png",
  //   "Policy.png",
  //   "discovery.png",
  //   "executive.png",
  //   "legi.png",
  //   "system.png",
  // ];

  List<FeatureModel> features = [
    FeatureModel(
        "PD Management",
        "จัดการบันทึกรายการข้อมูลส่วนบุคคลและการไหลของข้อมูล",
        "folder.png",
        "routePath"),
    FeatureModel(
        "DPIA & Risk Management",
        "การบริหารความเสี่ยงและผลกระทบจากข้อมูลส่วนบุคคล",
        "risk.png",
        "routePath"),
    FeatureModel(
        "Cookie Consent",
        "การขอความยินยอมจากเจ้าของข้อมูลและการบริหารจัดการคุกกี้",
        "Cookie.png",
        "routePath"),
    FeatureModel("Consent Management", "การบริหารจัดการให้ความยินยอม",
        "Consent.png", "routePath"),
    FeatureModel("Data Subject Right Management",
        "บริหารการขอใช้สิทธิ์จากเจ้าของข้อมูล", "data.png", "routePath"),
    FeatureModel("Data Breach", "บริหารกรณีเกิดข้อมูลรั่วไหล", "breach.png",
        "routePath"),
    FeatureModel("Audit&Gap Management", "บริหารงานตรจสอบและการทำ GAP Analysis",
        "audit.png", "routePath"),
    FeatureModel(
        "Policy&Notices Management",
        "บริหารการสื่อสารนโยบายและประกาศความเป็นส่วนตัว",
        "Policy.png",
        "routePath"),
    FeatureModel("Data Deiscover", "ค้นหาข้อมูลส่วนตัวในระบบสารสนเทศ",
        "discovery.png", "routePath"),
    FeatureModel(
        "Executive Support System",
        "บริหารงานและจัดการรายงาน สำหรับผู้บริหาร",
        "executive.png",
        "routePath"),
    FeatureModel("Legitimate Interest Assessment",
        "การประเมินการนำฐานกฏหมายมาใช้", "legi.png", "routePath"),
    FeatureModel(
        "System Setting Management",
        "ส่วนการตั้งค่าส่วนส่งเสริมที่ถูกพัฒนาขึ้นมาเพื่อให้ผู้ดูแลระบบจัดการกับข้อมูลต่างๆ",
        "system.png",
        "routePath"),
  ];

  bool isSmallScreen = false;
  bool isMediamScreen = false;
  bool isLargeScreen = false;

  @override
  Widget build(BuildContext context) {
    var deviceData = MediaQuery.of(context);
    var screenSize = MediaQuery.of(context).size;
    if (screenSize.width > 1200) {
      isLargeScreen = true;
      // } else if (screenSize.width >= 800 && screenSize.width <= 1200) {
      //   isMediamScreen = true;
    } else {
      isSmallScreen = true;
    }

    return Scaffold(
        backgroundColor: Color.fromARGB(255, 228, 236, 248),
        body: Center(
          child: Container(
            width: 1000,
            color: Color.fromARGB(255, 228, 236, 248),
            margin: EdgeInsets.all(20.0),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: screenSize.width > 800 ? 3 : 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemCount: features.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(20),
                        //   color: Color.fromARGB(255, 178, 205, 244),
                        // ),
                        child: new Material(
                          child: new InkWell(
                            onTap: () {},
                            child: new Container(
                              width: 200,
                              height: 200,
                              child: Center(
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                          width: 45,
                                          height: 45,
                                          child: Image.asset(
                                            'assets/${features[index].imageUrl}',
                                          )),
                                      Text(
                                        '${features[index].title}',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        '${features[index].description}',
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 77, 85, 97),
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            TextButton(
                                              onPressed: () {},
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text(
                                                    'more ',
                                                    style:
                                                        TextStyle(fontSize: 13),
                                                  ), // <-- Text

                                                  Icon(
                                                    // <-- Icon
                                                    Icons.arrow_forward_sharp,
                                                    size: 13.0,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          color: Colors.transparent,
                        ),
                      );
                    }),
              ),
            ),
          ),
        ));
  }
}
