import 'package:flutter/material.dart';

class FeatureModel {
  final String title;
  final String description;
  final String imageUrl;
  final String? routePath;
  FeatureModel(this.title, this.description, this.imageUrl, this.routePath);
}

class MyDesktopBody extends StatefulWidget {
  const MyDesktopBody({Key? key}) : super(key: key);

  @override
  State<MyDesktopBody> createState() => _MyDesktopBodyState();
}

class _MyDesktopBodyState extends State<MyDesktopBody> {
  List<FeatureModel> features = [
    FeatureModel("a", "des 1", "folder.png", "routePath"),
    FeatureModel("b", "des 2", "risk.png", "routePath"),
    FeatureModel("c", "des 3", "Cookie.png", "routePath"),
    FeatureModel("d", "des 4", "Consent.png", "routePath"),
    FeatureModel("e", "des 5", "DSRM.png", "routePath"),
    FeatureModel("f", "des 6", "dtbreach.png", "routePath"),
    FeatureModel("g", "des 7", "audit.png", "routePath"),
    FeatureModel("h", "des 8", "Policy.png", "routePath"),
    FeatureModel("i", "des 9", "discovery.png", "routePath"),
    FeatureModel("j", "des 10", "executive.png", "routePath"),
    FeatureModel("k", "des 9", "legi.png", "routePath"),
    FeatureModel("l", "des 10", "system.png", "routePath"),
  ];

  bool isSmallScreen() {
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 228, 236, 248),
      body: Center(
        child: Container(
          width: 800,
          color: Colors.green[50],
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: isSmallScreen() ? 2 : 3,
                ),
                itemCount: features.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: new Material(
                      child: new InkWell(
                        onTap: () {
                          print("tapped");
                        },
                        child: new Container(
                          width: 100.0,
                          height: 100.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                      'assets/${features[index].imageUrl}')),
                              Text('${features[index].title}'),
                              Text('${features[index].description}'),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    border: Border.all(
                                        width: 1, color: Colors.blue)),
                                width: 100,
                                height: 40,
                              )
                            ],
                          ),
                        ),
                      ),
                      color: Colors.transparent,
                    ),
                  );
                }),
          ),
        ),
      ),
    );
  }
}
