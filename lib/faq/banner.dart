import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/responsive.dart';

class BannerPage extends StatefulWidget {
  @override
  _BannerState createState() => _BannerState();
}

class _BannerState extends State<BannerPage> {
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1440,
      // color: Colors.indigo,
      child: Center(
          child: Responsive.isDesktop(context)
              ? Stack(
                  children: [
                    Center(
                      child: Container(
                        width: 1440,
                        height: 341,
                        color: Color.fromARGB(255, 232, 242, 254),
                      ),
                    ),
                    new Positioned(
                      top: 53,
                      left: 150,
                      child: Wrap(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              width: 60,
                              height: 5,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 57, 128, 237),
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      color: Color.fromARGB(255, 57, 128, 237),
                                      width: 5)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              // color: Colors.amber,
                              height: 20,
                              child: Text(
                                "FAQ",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 57, 128, 237)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    new Positioned(
                      top: 35,
                      left: 350,
                      child: Container(
                        width: 270,
                        height: 270,
                        child: Image.asset("/faq/qa.png"),
                      ),
                    ),
                    new Positioned(
                      left: 700,
                      top: 85,
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              "FAQs",
                              style: GoogleFonts.inter(
                                  fontSize: 11.77,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 83, 104, 106)),
                            ),
                            Text(
                              "Ask us anything",
                              style: GoogleFonts.inter(
                                  fontSize: 48,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 5, 45, 97)),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "มีข้อสงสัยหรือต้องการปรึกษาเกี่ยวกับ wisework เรายินดีให้คำแนะนำ",
                              style: GoogleFonts.inter(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 5, 45, 97)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 35),
                              child: SearchBox(
                                onChanged: (query) {
                                  setState(() {
                                    _searchQuery = query;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              : Responsive.isTablet(context)
                  ? Container(
                      width: 1440,
                      color: Color.fromARGB(255, 232, 242, 254),
                      child: Center(
                        child: Container(
                          width: 768,
                          child: Center(
                            child: Stack(
                              children: [
                                Center(
                                  child: Container(
                                    width: 768,
                                    height: 569,
                                    color: Color.fromARGB(255, 232, 242, 254),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 65, left: 40),
                                  child: Wrap(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Container(
                                          width: 60,
                                          height: 5,
                                          decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 57, 128, 237),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              border: Border.all(
                                                  color: Color.fromARGB(
                                                      255, 57, 128, 237),
                                                  width: 5)),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Container(
                                          // color: Colors.amber,
                                          height: 20,
                                          child: Text(
                                            "FAQ",
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                                color: Color.fromARGB(
                                                    255, 57, 128, 237)),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 35),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                            width: 270,
                                            height: 270,
                                            child: Image.asset("/faq/qa.png")),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 50),
                                          child: Text(
                                            "FAQs",
                                            style: GoogleFonts.inter(
                                                fontSize: 11.77,
                                                fontWeight: FontWeight.w600,
                                                color: Color.fromARGB(
                                                    255, 83, 104, 106)),
                                          ),
                                        ),
                                        Text(
                                          "Ask us anything",
                                          style: GoogleFonts.inter(
                                              fontSize: 48,
                                              fontWeight: FontWeight.w600,
                                              color: Color.fromARGB(
                                                  255, 5, 45, 97)),
                                        ),
                                        Text(
                                          "มีข้อสงสัยหรือต้องการปรึกษาเกี่ยวกับ wisework เรายินดีให้คำแนะนำ",
                                          style: GoogleFonts.inter(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  255, 5, 45, 97)),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 30),
                                          child: SearchBox(
                                            onChanged: (query) {
                                              setState(() {
                                                _searchQuery = query;
                                              });
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  : Container(
                      width: 1440,
                      color: Color.fromARGB(255, 232, 242, 254),
                      child: Center(
                        child: Container(
                          width: 375,
                          child: Center(
                            child: Stack(
                              children: [
                                Center(
                                  child: Container(
                                    width: 375,
                                    height: 665,
                                    // color: Colors.indigo,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 47,
                                  ),
                                  child: Wrap(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Container(
                                          width: 60,
                                          height: 5,
                                          decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 57, 128, 237),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              border: Border.all(
                                                  color: Color.fromARGB(
                                                      255, 57, 128, 237),
                                                  width: 5)),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Container(
                                          // color: Colors.amber,
                                          height: 20,
                                          child: Text(
                                            "FAQ",
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                                color: Color.fromARGB(
                                                    255, 57, 128, 237)),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 109),
                                        child: SizedBox(
                                            width: 270,
                                            height: 270,
                                            child: Image.asset("/faq/qa.png")),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 50),
                                        child: Text(
                                          "FAQs",
                                          style: GoogleFonts.inter(
                                              fontSize: 11.77,
                                              fontWeight: FontWeight.w600,
                                              color: Color.fromARGB(
                                                  255, 83, 104, 106)),
                                        ),
                                      ),
                                      Text(
                                        "Ask us anything",
                                        style: GoogleFonts.inter(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600,
                                            color:
                                                Color.fromARGB(255, 5, 45, 97)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 17),
                                        child: Text(
                                          "มีข้อสงสัยหรือต้องการปรึกษาเกี่ยวกับ\nwisework เรายินดีให้คำแนะนำ",
                                          style: GoogleFonts.inter(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  255, 5, 45, 97)),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30),
                                        child: SearchBox(
                                          onChanged: (query) {
                                            setState(() {
                                              _searchQuery = query;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )),
    );
  }
}

class SearchBox extends StatefulWidget {
  final ValueChanged<String> onChanged;

  const SearchBox({Key? key, required this.onChanged}) : super(key: key);

  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Responsive.isDesktop(context)
          ? 531
          : Responsive.isTablet(context)
              ? 531
              : 236,
      height: Responsive.isDesktop(context)
          ? 50
          : Responsive.isTablet(context)
              ? 36
              : 36,
      child: TextField(
        controller: _controller,
        cursorColor: Colors.blueAccent,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 2),
          hoverColor: Colors.white,
          filled: true,
          fillColor: Colors.white,
          hintText: 'Search here',
          hintStyle: GoogleFonts.inter(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 183, 197, 204)),
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        onChanged: widget.onChanged,
      ),
    );
  }
}
