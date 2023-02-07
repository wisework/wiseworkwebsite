import 'package:flutter/material.dart';
import 'home/homepage.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

// import 'auth_dialog.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  _MenuDrawerState createState() => _MenuDrawerState();
}

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
      "Home",
      "",
      false),
  Item(
      // 2,
      "About Us",
      "description-2",
      false),
  Item(
      // 3,
      "Our Services",
      "description-3",
      false),
  Item(
      // 4,
      "Blogs",
      "description-4",
      false),
  Item(
      // 5,
      "Contact Us",
      "description-5",
      false),
];

class _MenuDrawerState extends State<MenuDrawer> {
  final List<String> listHome = <String>['Home', 'h1', 'h2', 'h3', 'h4'];
  final List<String> listAbout = <String>[
    'About Us',
    'ab1',
    'ab2',
    'ab3',
    'ab4'
  ];
  final List<String> listServices = <String>[
    'Our Services',
    'sv1',
    'sv2',
    'sv3',
    'sv4'
  ];
  final List<String> listBlogs = <String>['Blogs', 'b1', 'b2', 'b3', 'b4'];
  final List<String> listContact = <String>[
    'Contacts',
    'ct1',
    'ct2',
    'ct3',
    'ct4'
  ];

  String? HomeValue;
  String? AboutValue;
  String? ServicesValue;
  String? BlogsValue;
  String? ContactValue;

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

  bool _isProcessing = false;
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
              _expandTog()
            ],
          ),
        ),
      ),
    );
  }

  Widget _expandTog() {
    return ExpansionPanelList(
      animationDuration: Duration(seconds: 1),
      dividerColor: Color.fromARGB(255, 228, 236, 248),
      elevation: 0,
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          items[index].isExpanded = !isExpanded;
        });
      },
      children: items.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          // backgroundColor: Color.fromARGB(255, 228, 236, 248),
          canTapOnHeader: true,
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(
                item.title,
                style: TextStyle(color: Color.fromARGB(255, 76, 179, 211)),
              ),
              // selectedColor: Colors.amber,
            );
          },
          body: ListTile(
              contentPadding: EdgeInsets.only(top: 5, bottom: 20, left: 20),
              title: Text(item.description),
              onTap: () {}),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}
