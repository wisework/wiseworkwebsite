import 'package:flutter/material.dart';

class MyMobileBody extends StatelessWidget {
  const MyMobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 228, 236, 248),
      body: Center(
        child: Container(
          width: 400,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: GridView(
              children: [
                // Container(
                //   height: 50,
                //   width: 50,
                //   color: Colors.red,
                //   child: Center(
                //     child: Text('kiki'),
                //   ),
                // ),
                Container(
                  child: InkWell(
                    onTap: () {},
                    splashColor: Color.fromARGB(255, 187, 194, 225),
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      child: Column(children: [
                        Text('\n'),
                        Image(
                          image: AssetImage('assets/folder.png'),
                          height: 70,
                          width: 70,
                        ),
                        Text(
                          '\n PD Management ',
                          style: TextStyle(
                            color: Color.fromARGB(255, 43, 42, 44),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'จัดการบันทึกรายการข้อมูลส่วนบุคคล \n และการไหลของข้อมูล',
                          style: TextStyle(
                            color: Color.fromARGB(255, 151, 154, 154),
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'more ',
                                style: TextStyle(fontSize: 15),
                              ), // <-- Text

                              Icon(
                                // <-- Icon
                                Icons.arrow_forward_sharp,
                                size: 10.0,
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),

                InkWell(
                  onTap: () {},
                  splashColor: Color.fromARGB(255, 187, 194, 225),
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent,
                    ),
                    child: Column(children: [
                      Text('\n'),
                      Image(
                        image: AssetImage('assets/risk.png'),
                        height: 70,
                        width: 70,
                      ),
                      Text(
                        'DPIA & Risk Management ',
                        style: TextStyle(
                          color: Color.fromARGB(255, 43, 42, 44),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'การบริหารความเสี่ยงและผลกระทบจากข้อมูลส่วนบุคคล',
                        style: TextStyle(
                          color: Color.fromARGB(255, 151, 154, 154),
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'more ',
                              style: TextStyle(fontSize: 15),
                            ), // <-- Text

                            Icon(
                              // <-- Icon
                              Icons.arrow_forward_sharp,
                              size: 10.0,
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),

                InkWell(
                  onTap: () {},
                  splashColor: Color.fromARGB(255, 187, 194, 225),
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent,
                    ),
                    child: Column(children: [
                      Text('\n'),
                      Image(
                        image: AssetImage('assets/cookie.png'),
                        height: 70,
                        width: 70,
                      ),
                      Text(
                        'Cookie Consent ',
                        style: TextStyle(
                          color: Color.fromARGB(255, 43, 42, 44),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'การขอความยินยอมจากเจ้าของข้อมูลและการบริหารจัดการคุกกี้',
                        style: TextStyle(
                          color: Color.fromARGB(255, 151, 154, 154),
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'more ',
                              style: TextStyle(fontSize: 15),
                            ), // <-- Text

                            Icon(
                              // <-- Icon
                              Icons.arrow_forward_sharp,
                              size: 10.0,
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  splashColor: Color.fromARGB(255, 187, 194, 225),
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent,
                    ),
                    child: Column(children: [
                      Text('\n'),
                      Image(
                        image: AssetImage('assets/consent.png'),
                        height: 70,
                        width: 70,
                      ),
                      Text(
                        'Consent Management ',
                        style: TextStyle(
                          color: Color.fromARGB(255, 43, 42, 44),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'การบริหารจัดการให้ความยินยอม',
                        style: TextStyle(
                          color: Color.fromARGB(255, 151, 154, 154),
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'more ',
                              style: TextStyle(fontSize: 15),
                            ), // <-- Text

                            Icon(
                              // <-- Icon
                              Icons.arrow_forward_sharp,
                              size: 10.0,
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  splashColor: Color.fromARGB(255, 187, 194, 225),
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent,
                    ),
                    child: Column(children: [
                      Text('\n'),
                      Image(
                        image: AssetImage('assets/data.png'),
                        height: 70,
                        width: 70,
                      ),
                      Text(
                        'Data Subject Right Management ',
                        style: TextStyle(
                          color: Color.fromARGB(255, 43, 42, 44),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'บริหารการขอใช้สิทธิ์จากเจ้าของข้อมูล',
                        style: TextStyle(
                          color: Color.fromARGB(255, 151, 154, 154),
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'more ',
                              style: TextStyle(fontSize: 15),
                            ), // <-- Text

                            Icon(
                              // <-- Icon
                              Icons.arrow_forward_sharp,
                              size: 10.0,
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  splashColor: Color.fromARGB(255, 187, 194, 225),
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent,
                    ),
                    child: Column(children: [
                      Text('\n'),
                      Image(
                        image: AssetImage('assets/branch.png'),
                        height: 70,
                        width: 70,
                      ),
                      Text(
                        'Data Breach',
                        style: TextStyle(
                          color: Color.fromARGB(255, 43, 42, 44),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'บริหารกรณีเกิดข้อมูลรั่วไหล',
                        style: TextStyle(
                          color: Color.fromARGB(255, 151, 154, 154),
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'more ',
                              style: TextStyle(fontSize: 15),
                            ), // <-- Text

                            Icon(
                              // <-- Icon
                              Icons.arrow_forward_sharp,
                              size: 10.0,
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  splashColor: Color.fromARGB(255, 187, 194, 225),
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent,
                    ),
                    child: Column(children: [
                      Text('\n'),
                      Image(
                        image: AssetImage('assets/audit.png'),
                        height: 70,
                        width: 70,
                      ),
                      Text(
                        'Audit&Gap Management',
                        style: TextStyle(
                          color: Color.fromARGB(255, 43, 42, 44),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'บริหารงานตรจสอบและการทำ GAP Analysis',
                        style: TextStyle(
                          color: Color.fromARGB(255, 151, 154, 154),
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'more ',
                              style: TextStyle(fontSize: 15),
                            ), // <-- Text

                            Icon(
                              // <-- Icon
                              Icons.arrow_forward_sharp,
                              size: 10.0,
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  splashColor: Color.fromARGB(255, 187, 194, 225),
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent,
                    ),
                    child: Column(children: [
                      Text('\n'),
                      Image(
                        image: AssetImage('assets/policy.png'),
                        height: 70,
                        width: 70,
                      ),
                      Text(
                        'Policy&Notices Management',
                        style: TextStyle(
                          color: Color.fromARGB(255, 43, 42, 44),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'บริหารการสื่อสารนโยบายและประกาศความเป็นส่วนตัว',
                        style: TextStyle(
                          color: Color.fromARGB(255, 151, 154, 154),
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'more ',
                              style: TextStyle(fontSize: 15),
                            ), // <-- Text

                            Icon(
                              // <-- Icon
                              Icons.arrow_forward_sharp,
                              size: 10.0,
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  splashColor: Color.fromARGB(255, 187, 194, 225),
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent,
                    ),
                    child: Column(children: [
                      Text('\n'),
                      Image(
                        image: AssetImage('assets/discovery.png'),
                        height: 70,
                        width: 70,
                      ),
                      Text(
                        'Data Deiscover',
                        style: TextStyle(
                          color: Color.fromARGB(255, 43, 42, 44),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'ค้นหาข้อมูลส่วนตัวในระบบสารสนเทศ',
                        style: TextStyle(
                          color: Color.fromARGB(255, 151, 154, 154),
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'more ',
                              style: TextStyle(fontSize: 15),
                            ), // <-- Text

                            Icon(
                              // <-- Icon
                              Icons.arrow_forward_sharp,
                              size: 10.0,
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  splashColor: Color.fromARGB(255, 187, 194, 225),
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent,
                    ),
                    child: Column(children: [
                      Text('\n'),
                      Image(
                        image: AssetImage('assets/executive.png'),
                        height: 70,
                        width: 70,
                      ),
                      Text(
                        'Executive Support System',
                        style: TextStyle(
                          color: Color.fromARGB(255, 43, 42, 44),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'บริหารงานและจัดการรายงาน สำหรับผู้บริหาร',
                        style: TextStyle(
                          color: Color.fromARGB(255, 151, 154, 154),
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'more ',
                              style: TextStyle(fontSize: 15),
                            ), // <-- Text

                            Icon(
                              // <-- Icon
                              Icons.arrow_forward_sharp,
                              size: 10.0,
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  splashColor: Color.fromARGB(255, 187, 194, 225),
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent,
                    ),
                    child: Column(children: [
                      Text('\n'),
                      Image(
                        image: AssetImage('assets/legi.png'),
                        height: 70,
                        width: 70,
                      ),
                      Text(
                        'Legitimate Interest Assessment',
                        style: TextStyle(
                          color: Color.fromARGB(255, 43, 42, 44),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'การประเมินการนำฐานกฏหมายมาใช้',
                        style: TextStyle(
                          color: Color.fromARGB(255, 151, 154, 154),
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'more ',
                              style: TextStyle(fontSize: 15),
                            ), // <-- Text

                            Icon(
                              // <-- Icon
                              Icons.arrow_forward_sharp,
                              size: 10.0,
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  splashColor: Color.fromARGB(255, 187, 194, 225),
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent,
                    ),
                    child: Column(children: [
                      Text('\n'),
                      Image(
                        image: AssetImage('assets/system.png'),
                        height: 70,
                        width: 70,
                      ),
                      Text(
                        'System Setting Management',
                        style: TextStyle(
                          color: Color.fromARGB(255, 43, 42, 44),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'ส่วนการตั้งค่า ส่วนส่งเสริมที่ถูกพัฒนาขึ้นมาเพื่อให้ผู้ดูแลระบบจัดการกับข้อมูลต่างๆ',
                        style: TextStyle(
                          color: Color.fromARGB(255, 151, 154, 154),
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'more ',
                              style: TextStyle(fontSize: 15),
                            ), // <-- Text

                            Icon(
                              // <-- Icon
                              Icons.arrow_forward_sharp,
                              size: 10.0,
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
              ],
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, mainAxisSpacing: 10),
            ),
          ),
        ),
      ),
    );
  }
}
