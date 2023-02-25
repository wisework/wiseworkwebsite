import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/home/homepage.dart';
import 'package:wiseintern/about/aboutpage.dart';
import 'package:wiseintern/services/servicespage.dart';

// import 'auth_dialog.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  _MenuDrawerState createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  bool _showStory = false;
  bool _showRewards = false;
  bool _showCustomers = false;

  bool _showPDPA = false;
  bool _showGovernance = false;
  bool _showRequest = false;

  bool _isAboutExpanded = false;
  bool _isServiceExpanded = false;

  @override
  Widget build(BuildContext context) {
    // var screenSize = MediaQuery.of(context).size;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          ListTile(
            title: Text('Home',
                style: GoogleFonts.ibmPlexSansThai(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 35, 34, 51))),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
          ListTile(
            title: Text('About Us',
                style: GoogleFonts.ibmPlexSansThai(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: _isAboutExpanded
                        ? Color.fromARGB(255, 52, 145, 206)
                        : Color.fromARGB(255, 35, 34, 51))),
            trailing: Icon(Icons.expand_more),
            onTap: () {
              // toggle the boolean value for this item
              setState(() {
                _showStory = false;
                _showRewards = false;
                _showCustomers = !_showCustomers;
                _isAboutExpanded = !_isAboutExpanded;
              });
            },
          ),
          if (_showCustomers)
            Column(
              children: <Widget>[
                ListTile(
                  title: Text('Our Story',
                      style: GoogleFonts.ibmPlexSansThai(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 87, 87, 87))),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutPage()),
                    );
                  },
                ),
                ListTile(
                  title: Text('Our Rewards',
                      style: GoogleFonts.ibmPlexSansThai(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 87, 87, 87))),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutPage()),
                    );
                  },
                ),
                ListTile(
                  title: Text('Our Customers',
                      style: GoogleFonts.ibmPlexSansThai(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 87, 87, 87))),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutPage()),
                    );
                  },
                ),
              ],
            ),
          ListTile(
            title: Text('Our Services',
                style: GoogleFonts.ibmPlexSansThai(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: _isServiceExpanded
                        ? Color.fromARGB(255, 52, 145, 206)
                        : Color.fromARGB(255, 35, 34, 51))),
            trailing: Icon(Icons.expand_more),
            onTap: () {
              // toggle the boolean value for this item
              setState(() {
                _showPDPA = false;
                _showGovernance = false;
                _showRequest = !_showRequest;
                _isServiceExpanded = !_isServiceExpanded;
              });
            },
          ),
          if (_showRequest)
            Column(
              children: <Widget>[
                ListTile(
                  title: Text('PDPA Management Platform',
                      style: GoogleFonts.ibmPlexSansThai(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 87, 87, 87))),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ServicesPage()),
                    );
                  },
                ),
                ListTile(
                  title: Text('Governance Assurance Suit',
                      style: GoogleFonts.ibmPlexSansThai(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 87, 87, 87))),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ServicesPage()),
                    );
                  },
                ),
                ListTile(
                  title: Text('Request Demo',
                      style: GoogleFonts.ibmPlexSansThai(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 87, 87, 87))),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ServicesPage()),
                    );
                  },
                ),
              ],
            ),
          ListTile(
            title: Text('Blogs',
                style: GoogleFonts.ibmPlexSansThai(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 35, 34, 51))),
            onTap: () {
              // handle tap on tile
            },
          ),
          ListTile(
            title: Text('Contact Us',
                style: GoogleFonts.ibmPlexSansThai(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 35, 34, 51))),
            onTap: () {
              // handle tap on tile
            },
          ),
        ],
      ),
    );
  }

  // Widget _expandTog() {
  //   return ExpansionPanelList(
  //     animationDuration: Duration(seconds: 1),
  //     dividerColor: Color.fromARGB(255, 228, 236, 248),
  //     elevation: 0,
  //     expansionCallback: (int index, bool isExpanded) {
  //       setState(() {
  //         items[index].isExpanded = !isExpanded;
  //       });
  //     },
  //     children: items.map<ExpansionPanel>((Item item) {
  //       return ExpansionPanel(
  //         // backgroundColor: Color.fromARGB(255, 228, 236, 248),
  //         canTapOnHeader: true,
  //         headerBuilder: (BuildContext context, bool isExpanded) {
  //           return ListTile(
  //             title: Text(
  //               item.title,
  //               style: TextStyle(color: Color.fromARGB(255, 76, 179, 211)),
  //             ),
  //             // selectedColor: Colors.amber,
  //           );
  //         },
  //         body: ListTile(
  //             contentPadding: EdgeInsets.only(top: 5, bottom: 20, left: 20),
  //             title: Text(item.description),
  //             onTap: () {}),
  //         isExpanded: item.isExpanded,
  //       );
  //     }).toList(),
  //   );
  // }

  // Widget _buildPanel() {
  //   return ExpansionPanelList(
  //     expansionCallback: (int index, bool isExpanded) {
  //       setState(() {
  //         _data[index].isExpanded = !isExpanded;
  //       });
  //     },
  //     elevation: 0,
  //     children: _data.map<ExpansionPanel>((Item item) {
  //       if (item.headerValue == 'Home') {
  //         return ExpansionPanel(
  //           headerBuilder: (BuildContext context, bool isExpanded) {
  //             return Container(
  //               child: ListTile(
  //                 title: Text(
  //                   item.headerValue,
  //                   style: GoogleFonts.ibmPlexSansThai(
  //                       fontSize: 20,
  //                       fontWeight: FontWeight.w600,
  //                       color: Color.fromARGB(255, 35, 34, 51)),
  //                 ),
  //               ),
  //             );
  //           },
  //           body: Container(),
  //           canTapOnHeader: false,
  //           isExpanded: false,
  //         );
  //       } else if (item.headerValue == 'Blogs') {
  //         return ExpansionPanel(
  //           headerBuilder: (BuildContext context, bool isExpanded) {
  //             return Container(
  //               child: ListTile(
  //                 title: Text(
  //                   item.headerValue,
  //                   style: GoogleFonts.ibmPlexSansThai(
  //                       fontSize: 20,
  //                       fontWeight: FontWeight.w600,
  //                       color: Color.fromARGB(255, 35, 34, 51)),
  //                 ),
  //               ),
  //             );
  //           },
  //           body: Container(),
  //           canTapOnHeader: false,
  //           isExpanded: false,
  //         );
  //       } else if (item.headerValue == 'Contact Us') {
  //         return ExpansionPanel(
  //           headerBuilder: (BuildContext context, bool isExpanded) {
  //             return Container(
  //               child: ListTile(
  //                 title: Text(
  //                   item.headerValue,
  //                   style: GoogleFonts.ibmPlexSansThai(
  //                       fontSize: 20,
  //                       fontWeight: FontWeight.w600,
  //                       color: Color.fromARGB(255, 35, 34, 51)),
  //                 ),
  //               ),
  //             );
  //           },
  //           body: Container(),
  //           canTapOnHeader: false,
  //           isExpanded: false,
  //         );
  //       } else {
  //         return ExpansionPanel(
  //           headerBuilder: (BuildContext context, bool isExpanded) {
  //             return ListTile(
  //               title: Text(
  //                 item.headerValue,
  //                 style: GoogleFonts.ibmPlexSansThai(
  //                     fontSize: 20,
  //                     fontWeight: FontWeight.w600,
  //                     color: isExpanded
  //                         ? Color.fromARGB(255, 52, 145, 206)
  //                         : Color.fromARGB(255, 35, 34, 51)),
  //               ),
  //             );
  //           },
  //           body: item.children != null
  //               ? Column(
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: item.children.map<Widget>((ChildItem childItem) {
  //                     return Padding(
  //                       padding: EdgeInsets.only(left: 16.0),
  //                       child: ListTile(
  //                         title: Text(
  //                           childItem.headerValue,
  //                           style: GoogleFonts.ibmPlexSansThai(
  //                               fontSize: 16,
  //                               fontWeight: FontWeight.w400,
  //                               color: Color.fromARGB(255, 87, 87, 87)),
  //                         ),
  //                       ),
  //                     );
  //                   }).toList(),
  //                 )
  //               : Container(),
  //           isExpanded: item.isExpanded,
  //           canTapOnHeader: true,
  //         );
  //       }
  //     }).toList(),
  //   );
  // }
}
