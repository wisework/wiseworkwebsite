import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

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

  @override
  Widget build(BuildContext context) {
    var consult = Container(
      child: Text(
        'พร้อมวางแผนให้ธุรกิจคุณปรึกษา',
        style: GoogleFonts.ibmPlexSansThai(
            color: Color.fromARGB(255, 24, 84, 110),
            fontSize: 20,
            fontWeight: FontWeight.w400),
      ),
    );
    var hashtag = Container(
      child: Text(
        '#Teamwisework',
        style: GoogleFonts.ibmPlexSansThai(
            color: Color.fromARGB(255, 24, 84, 110),
            fontSize: 36,
            fontWeight: FontWeight.w700),
      ),
    );
    var describe = Container(
      child: Text(
        'ให้องค์กรของคุณ วางแผนและจัดการกับ DATA \n หัวใจสำคัญของธุรกิจ ได้ถูกต้องตามกฎหมาย',
        style: GoogleFonts.ibmPlexSansThai(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w400),
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
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );

    var groupofpic = Container(
      height: 500,
      width: 500,
      child: new Stack(
        children: <Widget>[
          new SizedBox(
            height: 500,
            width: 500,
          ),
          new Positioned(
            height: 450,
            width: 400,
            top: 40,
            left: 90,
            child: new Image.asset('/faq/faq-bg.png'),
          ),
          new Positioned(
            height: 450,
            width: 450,
            top: 20,
            left: 40,
            child: new Image.asset('/faq/faq-pic.png'),
          ),
        ],
      ),
    );

    var Qth = Container(
      child: Text(
        'รวมคำถามที่พบบ่อย',
        style: GoogleFonts.ibmPlexSansThai(
          fontSize: 32,
          fontWeight: FontWeight.w600,
          color: Color.fromARGB(255, 75, 195, 211),
        ),
      ),
    );

    var Qen = Container(
      child: Text(
        'Frequently Asked Questions',
        style: GoogleFonts.ibmPlexSansThai(
          fontSize: 48,
          fontWeight: FontWeight.w700,
          color: Color.fromARGB(255, 24, 84, 110),
        ),
      ),
    );

    var pdpa = Container(
      child: Text(
        '         PDPA คืออะไร?',
        style: GoogleFonts.ibmPlexSansThai(
          color: Color.fromARGB(255, 75, 195, 211),
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
    );

    // List<String> pdpaList = [
    //   "PDPA (Personal Data Protection Act, B.E. 2562 (2019)) หรือ พระราชบัญญัติคุ้มครองข้อมูลส่วนบุคคล",
    //   " พ.ศ.2562 มีผลบังคับใช้อย่างเป็นทางการเมื่อ 1 มิ.ย. 2565",
    //   "เหตุผลในการประกาศใช้ PDPA เนื่องมาจากเทคโนโลยีก้าวหน้าขึ้น ช่องทางสื่อสารต่างๆ",
    //   "มีหลากหลายขึ้น ทำให้การละเมิดสิทธิความเป็นส่วนตัวของข้อมูลส่วนบุคคลทำได้ง่ายขึ้น",
    //   "และหลายครั้งก็นำมาซึ่งความเดือดร้อนรำคาญหรือสร้างความเสียหายให้แก่เจ้าของข้อมูล",
    //   " ตลอดจนสามารถส่งผลต่อเศรษฐกิจโดยรวมของประเทศได้ด้วย จึงต้องมีกฎหมายว่าด้วย ",
    //   "การคุ้มครองข้อมูลส่วนบุคคลขึ้นเพื่อกำหนดหลักเกณฑ์ กลไก หรือมาตรการกำกับดูแล ",
    //   "เกี่ยวกับการให้ความคุ้มครองข้อมูลส่วนบุคคลที่รวมถึงการเก็บรวบรวม ใช้ หรือเปิดเผย",
    //   " ข้อมูลส่วนบุคคลขึ้น"
    // ];

    var pdpaList2 = Container(
      child: Text(
        'PDPA (Personal Data Protection Act, B.E. 2562 (2019)) หรือ พระราชบัญญัติ \nคุ้มครองข้อมูลส่วนบุคคล พ.ศ.2562 มีผลบังคับใช้อย่างเป็นทางการเมื่อ 1 มิ.ย. 2565 \nเหตุผลในการประกาศใช้ PDPA เนื่องมาจากเทคโนโลยีก้าวหน้าขึ้น ช่องทางสื่อสารต่างๆ \nมีหลากหลายขึ้น ทำให้การละเมิดสิทธิความเป็นส่วนตัวของข้อมูลส่วนบุคคลทำได้ง่ายขึ้น \nและหลายครั้งก็นำมาซึ่งความเดือดร้อนรำคาญหรือสร้างความเสียหายให้แก่เจ้าของข้อมูล \nตลอดจนสามารถส่งผลต่อเศรษฐกิจโดยรวมของประเทศได้ด้วย จึงต้องมีกฎหมายว่าด้วย \nการคุ้มครองข้อมูลส่วนบุคคลขึ้นเพื่อกำหนดหลักเกณฑ์ กลไก หรือมาตรการกำกับดูแล \nเกี่ยวกับการให้ความคุ้มครองข้อมูลส่วนบุคคลที่รวมถึงการเก็บรวบรวม ใช้ \nหรือเปิดเผยข้อมูลส่วนบุคคลขึ้น',
        style: GoogleFonts.ibmPlexSansThai(
          fontSize: 18,
        ),
      ),
    );

    List<String> choices = [
      "ธุรกิจอะไรบ้างที่ต้องปฏิบัติตาม PDPA?",
      "บทลงโทษของ PDPA เป็นอย่างไร?",
      "ต้องการทำ PDPA จะเริ่มต้นอย่างไร?",
      "wisework สามารถให้คำปรึกษาเรื่อง PDPA ได้ไหม?",
      "wisework มีมาตรฐานอะไรบ้างในการควบคุม กระบวนการบริหารความเสี่ยง?",
      "wisework มี solutions อะไรให้ใช้งานบ้าง?",
      "wisework ติดตั้งบนระบบ ERP รูปแบบใด?",
      "wisework สามารถเชื่อมต่อกับ software ภายในองค์กรได้ไหม?",
      "wisework ช่วยประเมินความเสี่ยงได้อย่างไร แบบใด?",
      "wisework จะช่วย support การบริหารจัดการได้ไหม?",
      "wisework จะช่วย support การบริหารจัดการได้ไหม?",
      "สนใจผลิตภัณฑ์ wisework ขอทดลองใช้งานได้อย่างไร?"
    ];
    String? ChoicesValue;
    var listChoice = Container(
      color: Color.fromARGB(0, 255, 193, 7),
      height: 700,
      width: 600,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: choices.length,
        itemBuilder: (context, index) {
          return ListTile(
            dense: true,
            
            title: Transform.translate(
              offset: Offset(0, 0),
              child: Text(
                choices[index],
                style: GoogleFonts.ibmPlexSansThai(
                    fontSize: 15, fontWeight: FontWeight.w400),
              ),
            ),
            leading: Transform.translate(
              offset: Offset(600, -10),
              child: SizedBox(
                  width: 12,
                  height: 12,
                  child:
                      Icon(Icons.expand_more)),
            ),
          );
        },
      ),
    );

    bool _isLargeScreen() {
      final double screenWidth = MediaQuery.of(context).size.width;
      return screenWidth > 1400;
    }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 228, 236, 248),
      body: SingleChildScrollView(
        child: Center(
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
                            height: 1300,
                            color: Color.fromARGB(0, 204, 220, 57),
                            child: Column(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                pdpa,
                                pdpaList2,
                                SizedBox(
                                  height: 50,
                                ),
                                
                                listChoice,
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
                              height: 50,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [pdpa, pdpaList2],
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            listChoice,
                          ],
                        ),
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
