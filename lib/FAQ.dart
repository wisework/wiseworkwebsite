import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

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

class FAQ extends StatefulWidget {
  // final double opacity;

  FAQ();

  @override
  _FAQState createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  // const Faq({super.key});
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    var consult = MediaQuery(
      data: MediaQuery.of(context),
      child: Text(
        'พร้อมวางแผนให้ธุรกิจคุณปรึกษา',
        style: GoogleFonts.ibmPlexSansThai(
            color: Color.fromARGB(255, 24, 84, 110),
            fontSize: MediaQuery.of(context).size.width > 1000 ? 20 : 15,
            fontWeight: FontWeight.w400),
      ),
    );
    var hashtag = MediaQuery(
      data: MediaQuery.of(context),
      child: Text(
        '#Teamwisework',
        style: GoogleFonts.ibmPlexSansThai(
            color: Color.fromARGB(255, 24, 84, 110),
            fontSize: MediaQuery.of(context).size.width > 1000 ? 36 : 25,
            fontWeight: FontWeight.w700),
      ),
    );

    var describe = MediaQuery(
      data: MediaQuery.of(context),
      child: Text(
        'ให้องค์กรของคุณ วางแผนและจัดการกับ DATA \n หัวใจสำคัญของธุรกิจ ได้ถูกต้องตามกฎหมาย',
        style: GoogleFonts.ibmPlexSansThai(
            color: Colors.black,
            fontSize: MediaQuery.of(context).size.width > 1000 ? 18 : 13,
            fontWeight: FontWeight.w400),
      ),
    );

    var button = SizedBox(
      width: 193,
      height: 48,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 75, 195, 211),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        ),
        child: Text(
          'รับคำปรึกษา',
          style: GoogleFonts.ibmPlexSansThai(
            fontSize: MediaQuery.of(context).size.width > 1000 ? 20 : 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );

    var groupofpic = Container(
      width: MediaQuery.of(context).size.width < 1000 ? 250 : 500,
      height: MediaQuery.of(context).size.height < 1000 ? 250 : 500,
      child: new Stack(
        children: <Widget>[
          new SizedBox(
            width: MediaQuery.of(context).size.width < 1000 ? 70 : 450,
            height: MediaQuery.of(context).size.height < 1000 ? 70 : 450,
          ),
          new Positioned(
            width: MediaQuery.of(context).size.width < 1000 ? 180 : 450,
            height: MediaQuery.of(context).size.height < 1000 ? 180 : 450,
            top: MediaQuery.of(context).size.width < 1000 ? 15 : 40,
            left: MediaQuery.of(context).size.width < 1000 ? 40 : 90,
            child: new Image.asset('/faq/faq-bg.png'),
          ),
          new Positioned(
            width: MediaQuery.of(context).size.width < 1000 ? 180 : 450,
            height: MediaQuery.of(context).size.height < 1000 ? 180 : 450,
            top: MediaQuery.of(context).size.width < 1000 ? 10 : 20,
            left: MediaQuery.of(context).size.width < 1000 ? 20 : 40,
            child: new Image.asset('/faq/faq-pic.png'),
          ),
        ],
      ),
    );

    var Qth = MediaQuery(
      data: MediaQuery.of(context),
      child: Text(
        'รวมคำถามที่พบบ่อย',
        style: GoogleFonts.ibmPlexSansThai(
          fontSize: MediaQuery.of(context).size.width > 1000 ? 32 : 20,
          fontWeight: FontWeight.w600,
          color: Color.fromARGB(255, 75, 195, 211),
        ),
      ),
    );

    MediaQuery(
      data: MediaQuery.of(context),
      child: Text(
        'Your Text',
        style: TextStyle(
          fontSize: MediaQuery.of(context).size.width > 500 ? 20 : 14,
        ),
      ),
    );

    var Qen = MediaQuery(
      data: MediaQuery.of(context),
      child: Text(
        'Frequently Asked Questions',
        style: GoogleFonts.ibmPlexSansThai(
          fontSize: MediaQuery.of(context).size.width > 1000 ? 48 : 25,
          fontWeight: FontWeight.w600,
          color: Color.fromARGB(255, 24, 84, 110),
        ),
      ),
    );

    bool _isLargeScreen() {
      final double screenWidth = MediaQuery.of(context).size.width;
      return screenWidth > 1400;
    }

    return Center(
      child: Container(
        width: 1400,
        child: Column(
          children: [
            SizedBox(
              height: 42,
            ),
            _isLargeScreen()
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 700,
                        height: 1500,
                        color: Color.fromARGB(0, 204, 220, 57),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                consult,
                                hashtag,
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            button,
                            SizedBox(
                              height: 20,
                            ),
                            groupofpic,
                          ],
                        ),
                      ),
                      Container(
                        width: 700,
                        height: 1300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Qth,
                              ],
                            ),
                            Qen,

                            SizedBox(
                              height: 50,
                            ),
                            // listChoice,
                            _buildPanel(),
                          ],
                        ),
                      ),
                    ],
                  )
                : Container(
                    color: Color.fromARGB(0, 204, 220, 57),
                    child: Column(
                      children: [
                        consult,
                        hashtag,
                        SizedBox(
                          height: 20,
                        ),
                        button,
                        SizedBox(
                          height: 50,
                        ),
                        groupofpic,
                        Qth,
                        Qen,
                        SizedBox(
                          height: MediaQuery.of(context).size.width > 1000
                              ? 50
                              : 25,
                        ),
                        _buildPanel(),
                      ],
                    ),
                  )
          ],
        ),
      ),
    );
  }

  bool _onHover = false;
  bool _onFocus = false;
  Color _titleColor = Colors.black;
  bool _isexpanded = false;

  // void _changeTitle() {
  //   setState(() {
  //     _isexpanded = !_isexpanded;
  //     _titleColor = _isexpanded ? Colors.black : Color.fromARGB(255, 75, 195, 211);
  //   });
  // }

  Widget _buildPanel() {
    return MediaQuery(
      data: MediaQuery.of(context),
      // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: ExpansionPanelList(
        animationDuration: Duration(seconds: 1),
        dividerColor: Color.fromARGB(255, 228, 236, 248),
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
            headerBuilder: (BuildContext context, bool isExpanded) {
              return ListTile(
                // style: ListTileStyle.,
                title: Text(
                  item.title,
                  style: TextStyle(
                      color: Color.fromARGB(255, 75, 195, 211),
                      fontSize:
                          MediaQuery.of(context).size.width > 1000 ? 20 : 15),
                ),

                // selectedColor: Colors.amber,
              );
            },
            body: ListTile(
                contentPadding: EdgeInsets.all(20),
                title: Text(
                  item.description,
                  style: TextStyle(
                      fontSize:
                          MediaQuery.of(context).size.width > 1000 ? 20 : 15),
                ),
                onTap: () {}),
            isExpanded: item.isExpanded,
          );
        }).toList(),
      ),
    );
  }
}
