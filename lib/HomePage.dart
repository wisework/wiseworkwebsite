import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'navbar.dart';

class FeatureModel {
  final String title;
  final String description;
  final String imageUrl;
  final String? routePath;
  FeatureModel(this.title, this.description, this.imageUrl, this.routePath);
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _MyHomePageState();
}

// final List<String> listHome = <String>['h1', 'h2', 'h3', 'h4'];
// final List<String> listAbout = <String>['ab1', 'ab2', 'ab3', 'ab4'];
// final List<String> listServices = <String>['sv1', 'sv2', 'sv3', 'sv4'];
// final List<String> listBlogs = <String>['b1', 'b2', 'b3', 'b4'];
// final List<String> listContact = <String>['ct1', 'ct2', 'ct3', 'ct4'];

class _MyHomePageState extends State<HomePage> {
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
        "จัดการบันทึกรายการข้อมูลส่วนบุคคลและการไหลของข้อมูล (Data Flow)",
        "features/folder.png",
        "routePath"),
    FeatureModel(
        "DPIA & Risk Management",
        "การบริหารความเสี่ยงและผลกระทบจากข้อมูลส่วนบุคคล",
        "features/risk.png",
        "routePath"),
    FeatureModel(
        "Cookie Consent",
        "การขอความยินยอมจากเจ้าของข้อมูลและการบริหารจัดการคุกกี้",
        "features/Cookie.png",
        "routePath"),
    FeatureModel("Consent Management", "การบริหารจัดการให้ความยินยอม",
        "features/Consent.png", "routePath"),
    FeatureModel(
        "Data Subject Right Management",
        "บริหารการขอใช้สิทธิ์จากเจ้าของข้อมูล",
        "features/data.png",
        "routePath"),
    FeatureModel("Data Breach", "บริหารกรณีเกิดข้อมูลรั่วไหล",
        "features/breach.png", "routePath"),
    FeatureModel("Audit&Gap Management", "บริหารงานตรจสอบและการทำ GAP Analysis",
        "features/audit.png", "routePath"),
    FeatureModel(
        "Policy&Notices Management",
        "บริหารการสื่อสารนโยบายและประกาศความเป็นส่วนตัว",
        "features/Policy.png",
        "routePath"),
    FeatureModel("Data Deiscover", "ค้นหาข้อมูลส่วนตัวในระบบสารสนเทศ",
        "features/discovery.png", "routePath"),
    FeatureModel(
        "Executive Support System",
        "บริหารงานและจัดการรายงาน สำหรับผู้บริหาร",
        "features/executive.png",
        "routePath"),
    FeatureModel("Legitimate Interest Assessment",
        "การประเมินการนำฐานกฏหมายมาใช้", "features/legi.png", "routePath"),
    FeatureModel(
        "System Setting Management",
        "ส่วนการตั้งค่าส่วนส่งเสริมที่ถูกพัฒนาขึ้นมาเพื่อให้ผู้ดูแลระบบจัดการกับข้อมูลต่างๆ",
        "features/system.png",
        "routePath"),
  ];

  bool isSmallScreen = false;
  bool isLargeScreen = false;
  double _opacity = 0;
  bool _isNavMenuVisible = false;

  // String? HomeValue;
  // String? AboutValue;
  // String? ServicesValue;
  // String? BlogsValue;
  // String? ContactValue;

  @override
  Widget build(BuildContext context) {
    // var deviceData = MediaQuery.of(context);
    var screenSize = MediaQuery.of(context).size;
    if (screenSize.width > 700) {
      isLargeScreen = true;
    } else {
      isSmallScreen = true;
    }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 228, 236, 248),
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 60),
        child: Column(
          children: [
            TopBarContents(_opacity),
          ],
        ),
      ),
      body: Center(
        child: Container(
          width: 1000,
          color: Color.fromARGB(255, 228, 236, 248),
          margin: EdgeInsets.all(00.0),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: screenSize.width > 700 ? 3 : 2,
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
                            width: 350,
                            height: 350,
                            child: Center(
                              child: Container(
                                margin: EdgeInsets.all(15),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    SizedBox(
                                        width: 50,
                                        height: 50,
                                        child: Image.asset(
                                          'assets/${features[index].imageUrl}',
                                        )),
                                    Text(
                                      '${features[index].title}',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          color:
                                              Color.fromARGB(255, 16, 24, 40)),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      '${features[index].description}',
                                      style: GoogleFonts.ibmPlexSansThai(
                                        color:
                                            Color.fromARGB(255, 102, 112, 133),
                                        fontSize: 13,
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
                                                  style: GoogleFonts.inter(
                                                      fontSize: 14,
                                                      color: Color.fromARGB(
                                                          255, 57, 129, 237)),
                                                ), // <-- Text

                                                Icon(
                                                  // <-- Icon
                                                  Icons.arrow_forward_sharp,
                                                  color: Color.fromARGB(
                                                      255, 57, 129, 237),
                                                  size: 14.0,
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
      ),
      // bottomNavigationBar: MyBottomNavigationBar()
    );
  }
}
