import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;
  final Widget tabletBody;

  ResponsiveLayout(
      {required this.mobileBody,
      required this.desktopBody,
      required this.tabletBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 480) {
        return mobileBody;
      } else if (constraints.maxWidth < 1100 && constraints.maxWidth > 480) {
        return tabletBody;
      } else {
        return desktopBody;
      }
    });
  }
}
