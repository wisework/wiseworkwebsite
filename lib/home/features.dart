import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:google_fonts/google_fonts.dart';
import '../navbar.dart';
import '../responsive.dart';

class FeatureModel {
  final String title;
  final String description;
  final String imageUrl;
  final String? routePath;
  FeatureModel(this.title, this.description, this.imageUrl, this.routePath);
}

// class FeaturesPage extends StatefulWidget {
//   const FeaturesPage({Key? key}) : super(key: key);

//   @override
//   State<FeaturesPage> createState() => _FeaturesPageState();
// }

final List<String> listHome = <String>['h1', 'h2', 'h3', 'h4'];
final List<String> listAbout = <String>['ab1', 'ab2', 'ab3', 'ab4'];
final List<String> listServices = <String>['sv1', 'sv2', 'sv3', 'sv4'];
final List<String> listBlogs = <String>['b1', 'b2', 'b3', 'b4'];
final List<String> listContact = <String>['ct1', 'ct2', 'ct3', 'ct4'];

class FeaturesPage extends StatelessWidget {
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
    FeatureModel("Data Discover", "ค้นหาข้อมูลส่วนตัวในระบบสารสนเทศ",
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

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Color.fromARGB(255, 232, 242, 254),
        width: Responsive.isDesktop(context)
            ? 1440
            : Responsive.isTablet(context)
                ? 900
                : 500,
        // color: Color.fromARGB(255, 228, 236, 248),
        margin: EdgeInsets.all(00.0),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: Responsive.isDesktop(context) ? 90 : 45,
                ),
                Text(
                  'Key Features',
                  style: GoogleFonts.ibmPlexSans(
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
                  height: 50,
                ),
                GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: Responsive.isDesktop(context)
                          ? 3
                          : Responsive.isTablet(context)
                              ? 2
                              : 1,
                      crossAxisSpacing: Responsive.isDesktop(context) ? 20 : 10,
                      mainAxisSpacing: Responsive.isDesktop(context) ? 20 : 10,
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
                            borderRadius: BorderRadius.circular(20),
                            onTap: () {},
                            child: new Container(
                              width: Responsive.isDesktop(context)
                                  ? 368
                                  : Responsive.isTablet(context)
                                      ? 200
                                      : 100,
                              height: Responsive.isDesktop(context)
                                  ? 368
                                  : Responsive.isTablet(context)
                                      ? 200
                                      : 100,
                              child: Center(
                                child: Container(
                                  margin: EdgeInsets.all(15),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 100
                                              : Responsive.isTablet(context)
                                                  ? 70
                                                  : 70,
                                          height: Responsive.isDesktop(context)
                                              ? 100
                                              : Responsive.isTablet(context)
                                                  ? 70
                                                  : 70,
                                          child: Image.asset(
                                            'assets/${features[index].imageUrl}',
                                          )),
                                      Text(
                                        '${features[index].title}',
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w500,
                                            fontSize: Responsive.isDesktop(
                                                    context)
                                                ? 24
                                                : Responsive.isTablet(context)
                                                    ? 20
                                                    : 18,
                                            color: Color.fromARGB(
                                                255, 16, 24, 40)),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        '${features[index].description}',
                                        style: GoogleFonts.ibmPlexSansThai(
                                          color: Color.fromARGB(
                                              255, 102, 112, 133),
                                          fontSize:
                                              Responsive.isDesktop(context)
                                                  ? 20
                                                  : Responsive.isTablet(context)
                                                      ? 16
                                                      : 15,
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
                                                        fontSize: Responsive
                                                                .isDesktop(
                                                                    context)
                                                            ? 18
                                                            : Responsive
                                                                    .isTablet(
                                                                        context)
                                                                ? 18
                                                                : 12,
                                                        color: Color.fromARGB(
                                                            255, 57, 129, 237)),
                                                  ), // <-- Text

                                                  Icon(
                                                    // <-- Icon
                                                    Icons.arrow_forward_sharp,
                                                    color: Color.fromARGB(
                                                        255, 57, 129, 237),
                                                    size: Responsive.isDesktop(
                                                            context)
                                                        ? 18
                                                        : Responsive.isTablet(
                                                                context)
                                                            ? 18
                                                            : 12,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
