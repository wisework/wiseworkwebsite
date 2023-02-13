import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'auth_dialog.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  _MenuDrawerState createState() => _MenuDrawerState();
}

class Item {
  String headerValue;
  List<ChildItem> children;
  bool isExpanded;

  Item(
      {required this.headerValue,
      required this.children,
      this.isExpanded = false});
}

class ChildItem {
  String headerValue;
  // String expandedValue;
  // bool isExpanded;

  ChildItem({
    required this.headerValue,
    // required this.expandedValue,
    // this.isExpanded = false
  });
}

// List<Item> generateItems(int numberOfItems) {
//   return List.generate(numberOfItems, (int index) {
//     if (index == 1) {
//       return Item(
//         headerValue: 'About Us',
//         children: [
//           ChildItem(
//             headerValue: 'Our Story',
//             expandedValue: 'About Us - Our Story Content',
//           ),
//           ChildItem(
//             headerValue: 'Our Reward',
//             expandedValue: 'About Us - Our Reward Content',
//           ),
//           ChildItem(
//             headerValue: 'Our Customers',
//             expandedValue: 'About Us - Our Customers',
//           ),
//         ],
//       );
//     } else {
//       return Item(
//         headerValue: 'Our Services',
//         children: [
//           ChildItem(
//             headerValue: 'PDPA Management Platform',
//             expandedValue: 'choice1',
//           ),
//           ChildItem(
//             headerValue: 'Governance Assurance Suit',
//             expandedValue: 'choice2',
//           ),
//         ],
//       );
//     }
//   });
// }

// List<Item> items = [
//   // Item(
//   //     // 1,
//   //     title: "Home",
//   //     description: "",
//   //     children:[],
//   //     isExpanded: false),
//   // Item(
//   //     // 2,
//   //     title: "About Us",
//   //     children: ["Our Story", "Our Rewards", "Our Customers"],
//   //     isExpanded: false),
//   // Item(
//   //     // 3,
//   //     title: "Our Services",
//   //     children: [
//   //       "PDPA Management Platform",
//   //       "Governance Assurance Suit",
//   //       "Request Demo"
//   //     ],
//   //     isExpanded: false),
//   // Item(
//   //     // 4,
//   //     title: "Home",
//   //     description: "",
//   //     children:[],
//   //     isExpanded: false),
//   // Item(
//   //     // 5,
//   //     title: "Home",
//   //     description: "",
//   //     children:[],
//   //     isExpanded: false),
// ];

class _MenuDrawerState extends State<MenuDrawer> {
  String? HomeValue;
  String? AboutValue;
  String? ServicesValue;
  String? BlogsValue;
  String? ContactValue;

  List<Item> _data = <Item>[
    Item(
        // 1,
        headerValue: "Home",
        children: [],
        isExpanded: false),
    Item(
      // 2,
      headerValue: "About Us",
      children: [
        ChildItem(
          headerValue: 'Our Story',
        ),
        ChildItem(
          headerValue: 'Our Reward',
        ),
        ChildItem(
          headerValue: 'Our Customers',
        ),
      ],
    ),
    Item(
        // 3,
        headerValue: "Our Services",
        children: [
          ChildItem(
            headerValue: 'PDPA Management Platform',
            // expandedValue: '',
          ),
          ChildItem(
            headerValue: 'Governance Assurance Suit',
            // expandedValue: '',
          ),
        ],
        isExpanded: false),
    Item(
        // 1,
        headerValue: "Blogs",
        children: [],
        isExpanded: false),
    Item(
        // 1,
        headerValue: "Contact Us",
        children: [],
        isExpanded: false),
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Drawer(
      child: Container(
        color: Theme.of(context).bottomAppBarColor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'logo.png',
                height: 40,
                width: 100,
              ),
              SizedBox(
                width: screenSize.width / 15,
              ),
              _buildPanel()
            ],
          ),
        ),
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

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      elevation: 0,
      children: _data.map<ExpansionPanel>((Item item) {
        if (item.headerValue == 'Home') {
          return ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded) {
              return Container(
                child: ListTile(
                  title: Text(
                    item.headerValue,
                    style: GoogleFonts.ibmPlexSansThai(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 35, 34, 51)),
                  ),
                ),
              );
            },
            body: Container(),
            canTapOnHeader: false,
            isExpanded: false,
          );
        } else if (item.headerValue == 'Blogs') {
          return ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded) {
              return Container(
                child: ListTile(
                  title: Text(
                    item.headerValue,
                    style: GoogleFonts.ibmPlexSansThai(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 35, 34, 51)),
                  ),
                ),
              );
            },
            body: Container(),
            canTapOnHeader: false,
            isExpanded: false,
          );
        } else if (item.headerValue == 'Contact Us') {
          return ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded) {
              return Container(
                child: ListTile(
                  title: Text(
                    item.headerValue,
                    style: GoogleFonts.ibmPlexSansThai(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 35, 34, 51)),
                  ),
                ),
              );
            },
            body: Container(),
            canTapOnHeader: false,
            isExpanded: false,
          );
        } else {
          return ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded) {
              return ListTile(
                title: Text(
                  item.headerValue,
                  style: GoogleFonts.ibmPlexSansThai(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: isExpanded
                          ? Color.fromARGB(255, 52, 145, 206)
                          : Color.fromARGB(255, 35, 34, 51)),
                ),
              );
            },
            body: item.children != null
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: item.children.map<Widget>((ChildItem childItem) {
                      return Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: ListTile(
                          title: Text(
                            childItem.headerValue,
                            style: GoogleFonts.ibmPlexSansThai(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 87, 87, 87)),
                          ),
                        ),
                      );
                    }).toList(),
                  )
                : Container(),
            isExpanded: item.isExpanded,
            canTapOnHeader: true,
          );
        }
      }).toList(),
    );
  }
}
