import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  //final Widget mobileBody;
  final Widget largeScreen;
  final Widget? smallScreen;

  const ResponsiveLayout(
      {Key? key, required this.largeScreen, required this.smallScreen})
      : super(key: key);

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100;

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 1100) {
        //   return mobileBody;
        return largeScreen;
        // } else if (constraints.maxWidth < 1200 && constraints.maxWidth > 480) {
        //   return tabletBody;
      } else {
        return smallScreen ?? largeScreen;
        // }
      }
    });
  }
}
