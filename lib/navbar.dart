import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:google_fonts/google_fonts.dart';

class Navbar extends StatefulWidget {
  final double opacity;

  Navbar(this.opacity);
  @override
  _Navbar createState() => _Navbar();
}

class _Navbar extends State<Navbar> {
  final List<String> listHome = <String>['h1', 'h2', 'h3', 'h4'];
  final List<String> listAbout = <String>['ab1', 'ab2', 'ab3', 'ab4'];
  final List<String> listServices = <String>['sv1', 'sv2', 'sv3', 'sv4'];
  final List<String> listBlogs = <String>['b1', 'b2', 'b3', 'b4'];
  final List<String> listContact = <String>['ct1', 'ct2', 'ct3', 'ct4'];

  String? HomeValue;
  String? AboutValue;
  String? ServicesValue;
  String? BlogsValue;
  String? ContactValue;

  bool _isProcessing = false;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: Container(
        color: Color.fromARGB(255, 52, 144, 206),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('logo.png',
              height: 50,),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        hint: Text(
                          'Home',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        icon: Transform.translate(
                          offset: Offset(-14, 0),
                          child: Icon(Icons.expand_more_outlined,
                          color: Colors.white,),
                        ),
                        items: listHome
                            .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ))
                            .toList(),
                        value: HomeValue,
                        onChanged: (value) {
                          setState(() {
                            HomeValue = value as String;
                          });
                        },
                        buttonHeight: 40,
                        buttonWidth: 80,
                        itemHeight: 40,
                      ),
                    ),
                    DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        hint: Text(
                          'About',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        icon: Transform.translate(
                          offset: Offset(-14, 0),
                          child: Icon(Icons.expand_more_outlined,
                          color: Colors.white,),
                        ),
                        items: listAbout
                            .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ))
                            .toList(),
                        value:AboutValue,
                        onChanged: (value) {
                          setState(() {
                            AboutValue = value as String;
                          });
                        },
                        buttonHeight: 40,
                        buttonWidth:80,
                        itemHeight: 40,
                      ),
                    ),
                    
                    
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
