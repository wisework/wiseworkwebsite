import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/responsive.dart';
import 'package:wiseintern/home/faq.dart';

class Item {
  // final int id;
  final String title;
  final String description;
  bool isExpanded;
  Item(
    // this.id,
    this.title,
    this.description,
    this.isExpanded,
  );
}

List<Item> items = [
  Item(
      // 1,
      "PDPA คืออะไร?",
      "PDPA (Personal Data Protection Act, B.E. 2562 (2019)) หรือ พระราชบัญญัติคุ้มครองข้อมูลส่วนบุคคล พ.ศ.2562 มีผลบังคับใช้อย่างเป็นทางการเมื่อ 1 มิ.ย. 2565 เหตุผลในการประกาศใช้ PDPA เนื่องมาจากเทคโนโลยีก้าวหน้าขึ้น ช่องทางสื่อสารต่างๆมีหลากหลายขึ้น ทำให้การละเมิดสิทธิความเป็นส่วนตัวของข้อมูลส่วนบุคคลทำได้ง่ายขึ้นและหลายครั้งก็นำมาซึ่งความเดือดร้อนรำคาญหรือสร้างความเสียหายให้แก่เจ้าของข้อมูล ตลอดจนสามารถส่งผลต่อเศรษฐกิจโดยรวมของประเทศได้ด้วย จึงต้องมีกฎหมายว่าด้วยการคุ้มครองข้อมูลส่วนบุคคลขึ้นเพื่อกำหนดหลักเกณฑ์ กลไก หรือมาตรการกำกับดูแลเกี่ยวกับการให้ความคุ้มครองข้อมูลส่วนบุคคลที่รวมถึงการเก็บรวบรวม ใช้ หรือเปิดเผยข้อมูลส่วนบุคคลขึ้น",
      false),
  Item(
      // 2,
      "ธุรกิจอะไรบ้างที่ต้องปฏิบัติตาม PDPA?",
      "description-2",
      false),
  Item(
      // 3,
      "บทลงโทษของ PDPA เป็นอย่างไร?",
      "description-3",
      false),
  Item(
      // 4,
      "ต้องการทำ PDPA จะเริ่มต้นอย่างไร?",
      "description-4",
      false),
  Item(
      // 5,
      "wisework สามารถให้คำปรึกษาเรื่อง PDPA ได้ไหม?",
      "description-5",
      false),
  Item(
      // 6,
      "wisework มีมาตรฐานอะไรบ้างในการควบคุม กระบวนการบริหารความเสี่ยง?",
      "description-6",
      false),
  Item(
      // 7,
      "wisework มี solutions อะไรให้ใช้งานบ้าง?",
      "description-7",
      false),
  Item(
      // 8,
      "wisework ติดตั้งบนระบบ ERP รูปแบบใด?",
      "description-8",
      false),
  Item(
      // 9,
      "wisework สามารถเชื่อมต่อกับ software ภายในองค์กรได้ไหม?",
      "description-9",
      false),
  Item(
      // 10,
      "wisework ช่วยประเมินความเสี่ยงได้อย่างไร แบบใด?",
      "description-10",
      false),
  Item(
      // 11,
      "wisework จะช่วย support การบริหารจัดการได้ไหม?",
      "description-11",
      false),
  Item(
      // 12,
      "wisework จะช่วย support การบริหารจัดการได้ไหม?",
      "description-12",
      false),
  Item(
      // 13,
      "สนใจผลิตภัณฑ์ wisework ขอทดลองใช้งานได้อย่างไร?",
      "description-13",
      false),
];

class Questions extends StatefulWidget {
  // final double opacity;

  Questions();

  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  // bool _showCustomers = false;
  // const Faq({super.key});
  // int _selectedIndex = 0;

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    
    return Center(
      child: Container(
        color: Color.fromARGB(255, 5, 45, 97),
        width: 1440,
        child: Column(
          children: [
            Responsive.isDesktop(context)
                ? FAQ()
                : Stack(
                    children: [
                      Container(
                        // height: 1500,
                        width: 1440,
                        color: Color.fromARGB(0, 204, 220, 57),
                      ),
                      Responsive.isTablet(context)
                          ? Center(
                              child: Stack(
                                children: [
                                  Container(
                                    width: 1440,
                                    height: 1500,
                                  ),
                                  new Positioned(
                                    top: 750,
                                    left: 0,
                                    child: Container(
                                        // color: Colors.black,
                                        width: 250,
                                        height: 700,
                                        child: Image.asset(
                                          "assets/faq/Union.png",
                                          fit: BoxFit.fitWidth,
                                        )),
                                  ),
                                  Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 700,
                                          height: 1500,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 90),
                                                    child: Text(
                                                      'รวมคำถามที่พบบ่อย',
                                                      style: GoogleFonts
                                                          .ibmPlexSansThai(
                                                        fontSize: 32,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Color.fromARGB(
                                                            255, 75, 195, 211),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                'Frequently Asked Questions',
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                  fontSize: 48,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color.fromARGB(
                                                      255, 232, 242, 254),
                                                ),
                                              ),

                                              SizedBox(
                                                height: 85,
                                              ),
                                              // listChoice,
                                              _buildPanel()
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Center(
                              child: Stack(
                                children: [
                                  Container(
                                    width: 1440,
                                    height: 1758,
                                  ),
                                  new Positioned(
                                    top: 750,
                                    left: 0,
                                    child: Container(
                                        // color: Colors.black,
                                        width: 250,
                                        height: 700,
                                        child: Image.asset(
                                          "/faq/Union.png",
                                          fit: BoxFit.fitWidth,
                                        )),
                                  ),
                                  Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 375,
                                          height: 1758,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 86),
                                                    child: Text(
                                                      'รวมคำถามที่พบบ่อย',
                                                      style: GoogleFonts
                                                          .ibmPlexSansThai(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Color.fromARGB(
                                                            255, 75, 195, 211),
                                                      ),
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                'Frequently Asked\nQuestions',
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color.fromARGB(
                                                      255, 232, 242, 254),
                                                ),
                                                textAlign: TextAlign.start,
                                              ),

                                              SizedBox(
                                                height: 60,
                                              ),
                                              // listChoice,
                                              _buildPanel()
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                    ],
                  )
          ],
        ),
      ),
    );
  }

  Widget _buildPanel() {
    return MediaQuery(
      data: MediaQuery.of(context),
      // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: ExpansionPanelList(
        animationDuration: Duration(seconds: 1),
        dividerColor: Color.fromARGB(255, 72, 108, 156),
        elevation: 0,
        expansionCallback: (int index, bool isExpanded) {
          setState(() {
            items[index].isExpanded = !isExpanded;
            // _titleColor = _isexpanded ? Colors.black : Color.fromARGB(255, 75, 195, 211);
          });
        },
        children: items.map<ExpansionPanel>((Item item) {
          return ExpansionPanel(
            backgroundColor: Color.fromARGB(0, 255, 255, 255),
            canTapOnHeader: true,
            // hasIcon: false,
            headerBuilder: (BuildContext context, bool isExpanded) {
              return Wrap(
                children: [
                  ListTile(
                    // style: ListTileStyle.,
                    title: Text(
                      item.title,
                      style: TextStyle(
                          color: isExpanded
                              ? Color.fromARGB(255, 75, 195, 211)
                              : Colors.white,
                          fontSize: Responsive.isDesktop(context)
                              ? 20
                              : Responsive.isTablet(context)
                                  ? 20
                                  : 16),
                    ),
                    // selectedColor: Colors.amber,
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    child: Transform.translate(
                      offset: Offset(
                          Responsive.isDesktop(context)
                              ? 1000
                              : Responsive.isTablet(context)
                                  ? 670
                                  : 350,
                          -30),
                      child: Icon(
                        isExpanded
                            ? Icons.keyboard_arrow_up
                            : Icons.expand_more_outlined,
                        color:isExpanded
                              ? Color.fromARGB(255, 75, 195, 211)
                              : Colors.white,
                      ),
                    ),
                  ),
                ],
              );
            },
            body: ListTile(
                contentPadding: EdgeInsets.all(20),
                title: Text(
                  item.description,
                  style: TextStyle(
                      fontSize: Responsive.isDesktop(context)
                          ? 20
                          : Responsive.isTablet(context)
                              ? 18
                              : 14,
                      color: Colors.white),
                ),
                onTap: () {}),
            isExpanded: item.isExpanded,
          );
        }).toList(),
      ),
    );
  }
}
