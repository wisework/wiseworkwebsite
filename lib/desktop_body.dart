import 'package:flutter/material.dart';

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
        "ส่วนการตั้งค่า ส่วนส่งเสริมที่ถูกพัฒนาขึ้นมาเพื่อให้ผู้ดูแลระบบจัดการกับข้อมูลต่างๆ",
        "system.png",
        "routePath"),
  ];

  bool isSmallScreen() {
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 228, 236, 248),
      body: Center(
        child: Container(
          width: 1000,
          color: Color.fromARGB(255, 228, 236, 248),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: isSmallScreen() ? 2 : 3,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20),
                itemCount: features.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: new Material(
                      child: new InkWell(
                        onTap: () {
                          print("tapped");
                        },
                        child: new Container(
                          width: 100.0,
                          height: 100.0,
                          
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: Image.asset(
                                    'assets/${features[index].imageUrl}',
                                  )),
                              Text('${features[index].title}',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('${features[index].description}',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 77, 85, 97),
                                  )),
                              Container(
                                  // decoration: BoxDecoration(
                                  //     borderRadius: BorderRadius.circular(10),
                                  //     border: Border.all(
                                  //         width: 1, color: Colors.blue),
                                  //     color: Colors.lime),
                                  // width: 100,
                                  // height: 40,
                                  child: Column(
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'more ',
                                          style: TextStyle(fontSize: 13),
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
                              ))
                            ],
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
    );
  }
}
