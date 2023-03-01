import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/responsive.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Address extends StatefulWidget {
  @override
  _Address createState() => _Address();
}

class _Address extends State<Address> {
  final List<String> optionsItem = [
    "option 1",
    "option 2",
    "option 3",
  ];

  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            width: 1440,
            color: Color.fromARGB(255, 232, 242, 254),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 1440,
                      height: 1181,
                      color: Color.fromARGB(255, 232, 242, 254),
                    ),
                    new Positioned(
                      top: 78,
                      left: 284,
                      child: Container(
                        width: 1097,
                        height: 1000,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.white),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 284, top: 78),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Send Us a",
                                        style: GoogleFonts.poppins(
                                            fontSize: 32,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        "Message",
                                        style: GoogleFonts.poppins(
                                            fontSize: 32,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 80, top: 20),
                                    child: Column(
                                      children: [
                                        Text(
                                          "สอบถามรายละเอียดเพิ่มเติม ส่งข้อความถึงเรา ที่นี่\nทีมงานของเราจะติดต่อกลับท่านโดยเร็วที่สุด",
                                          style: GoogleFonts.ibmPlexSansThai(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 284, top: 88),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        width: 310,
                                        child: Text(
                                          "Name",
                                          style: GoogleFonts.poppins(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black),
                                        ),
                                      ),
                                      Container(
                                        width: 310,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            hintText: 'wisework',
                                            hintStyle: GoogleFonts.poppins(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromARGB(
                                                    255, 232, 242, 254)),
                                            contentPadding: EdgeInsets.fromLTRB(
                                                0, 20, 0, 0),
                                            border: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromARGB(
                                                      255, 52, 145, 206)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 32),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 310,
                                          child: Text(
                                            "Company / Business Name",
                                            style: GoogleFonts.poppins(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black),
                                          ),
                                        ),
                                        Container(
                                          width: 310,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              hintText: 'The wisework co.,Ltd.',
                                              hintStyle: GoogleFonts.poppins(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color.fromARGB(
                                                      255, 232, 242, 254)),
                                              contentPadding:
                                                  EdgeInsets.fromLTRB(
                                                      0, 20, 0, 0),
                                              border: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Color.fromARGB(
                                                        255, 52, 145, 206)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 284, top: 64),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        width: 310,
                                        child: Text(
                                          "Email address",
                                          style: GoogleFonts.poppins(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black),
                                        ),
                                      ),
                                      Container(
                                        width: 310,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            hintText: 'hello@thewiseworks.com',
                                            hintStyle: GoogleFonts.poppins(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromARGB(
                                                    255, 232, 242, 254)),
                                            contentPadding: EdgeInsets.fromLTRB(
                                                0, 20, 0, 0),
                                            border: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromARGB(
                                                      255, 52, 145, 206)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 32),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 310,
                                          child: Text(
                                            "Phone",
                                            style: GoogleFonts.poppins(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black),
                                          ),
                                        ),
                                        Container(
                                          width: 310,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              hintText: 'xx-xxxx-xxxx',
                                              hintStyle: GoogleFonts.poppins(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color.fromARGB(
                                                      255, 232, 242, 254)),
                                              contentPadding:
                                                  EdgeInsets.fromLTRB(
                                                      0, 20, 0, 0),
                                              border: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Color.fromARGB(
                                                        255, 52, 145, 206)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 170,
                                top: 77,
                              ),
                              child: Container(
                                width: 698,
                                // color: Colors.pinkAccent,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "How can we help you?",
                                      style: GoogleFonts.poppins(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromARGB(255, 51, 51, 51),
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 16),
                                      child: Container(
                                        width: 698,
                                        height: 60,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Color.fromARGB(
                                                255, 232, 242, 254)),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton2(
                                            value: selectedOption,
                                            hint: Text(
                                              'Select an option',
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color.fromARGB(
                                                      255, 130, 130, 130)),
                                            ),
                                            icon: Transform.translate(
                                              offset: Offset(-12, -2),
                                              child: Icon(
                                                Icons.arrow_drop_down_outlined,
                                                color: Color.fromARGB(
                                                    255, 79, 79, 79),
                                              ),
                                            ),
                                            isExpanded: true,
                                            items: optionsItem.map((option) {
                                              return DropdownMenuItem<String>(
                                                value: option,
                                                child: Text(
                                                  option,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black),
                                                ),
                                              );
                                            }).toList(),
                                            dropdownDecoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            // itemHeight: 8,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedOption = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 43, left: 170),
                              child: Container(
                                width: 698,
                                height: 133,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    border: Border.all(
                                        color:
                                            Color.fromARGB(255, 232, 242, 254),
                                        width: 2)
                                    // boxShadow: [
                                    //   BoxShadow(
                                    //     color: Colors.grey.withOpacity(0.3),
                                    //     spreadRadius: 2,
                                    //     blurRadius: 2,
                                    //     offset: Offset(
                                    //         0, 3), // changes position of shadow
                                    //   ),
                                    // ],
                                    ),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "Enter your message here...",
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 60),
                                      // contentPadding:EdgeInsets.fromLTRB(50, 50, 0, 0),
                                      hintStyle: GoogleFonts.montserrat(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromARGB(
                                              255, 130, 130, 130)),
                                      border: InputBorder.none),
                                  onChanged: (value) {},
                                  maxLines: 5,
                                  // validator: (value) {
                                  //   if (value.isEmpty) {
                                  //     return 'Please enter your name';
                                  //   }
                                  //   return null;
                                  // },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 17),
                              child: Center(
                                child: SizedBox(
                                  width: 188,
                                  height: 47,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 75, 195, 211),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                    ),
                                    child: Text(
                                      'Send Message',
                                      style: GoogleFonts.ibmPlexSansThai(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    new Positioned(
                      top: 218,
                      left: 37,
                      child: Container(
                        width: 460,
                        height: 659,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            color: Colors.white),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 61, top: 70),
                              child: Text(
                                "Contact",
                                style: GoogleFonts.poppins(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 61,
                              ),
                              child: Text(
                                "Directly",
                                style: GoogleFonts.poppins(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 56, left: 61),
                              child: Wrap(
                                children: [
                                  SizedBox(
                                      width: 25,
                                      height: 25,
                                      child: Image.asset("/contact/phone.png")),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Text(
                                    "(02) 103-4379",
                                    style: GoogleFonts.poppins(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 28),
                                    child: SizedBox(
                                      width: 135,
                                      height: 36,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Color.fromARGB(255, 52, 145, 206),
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                color: Color.fromARGB(
                                                    255, 75, 196, 213)),
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                          ),
                                        ),
                                        child: Text(
                                          'Call us now',
                                          style: GoogleFonts.ibmPlexSans(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 48, left: 61),
                              child: Wrap(
                                children: [
                                  SizedBox(
                                      width: 25,
                                      height: 25,
                                      child: Image.asset("/contact/mail.png")),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Text(
                                    "admin@thewiseworks.com",
                                    style: GoogleFonts.poppins(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 76, left: 61),
                              child: Text(
                                "Contact",
                                style: GoogleFonts.poppins(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 61),
                              child: Text(
                                "with Us",
                                style: GoogleFonts.poppins(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30, left: 61),
                              child: Wrap(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: SizedBox(
                                      width: 45,
                                      height: 45,
                                      child:
                                          Image.asset("/contact/facebook.png"),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 9),
                                    child: InkWell(
                                      onTap: () {},
                                      child: SizedBox(
                                        width: 45,
                                        height: 45,
                                        child: Image.asset(
                                            "/contact/instagram.png"),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 13),
                                    child: InkWell(
                                      onTap: () {},
                                      child: SizedBox(
                                        width: 45,
                                        height: 45,
                                        child:
                                            Image.asset("/contact/youtube.png"),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 13),
                                    child: InkWell(
                                      onTap: () {},
                                      child: SizedBox(
                                        width: 45,
                                        height: 45,
                                        child:
                                            Image.asset("/contact/tiktok.png"),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}