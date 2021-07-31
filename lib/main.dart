import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_ui/Screens/main_screen.dart';
import 'package:food_delivery_ui/Screens/profile_screen.dart';
import 'package:food_delivery_ui/config/icons.dart';
import 'Screens/item_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;
  List bodyItems = [
    const MainScreen(),
    const ItemScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) => Scaffold(
          bottomNavigationBar: Container(
            width: MediaQuery.of(context).size.width,
            height: 80,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              index = 0;
                            });
                          },
                          icon: SvgPicture.asset(index == 0
                              ? ImportedIcons().home
                              : ImportedIcons().homeInactive)),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              index = 1;
                            });
                          },
                          icon: SvgPicture.asset(index == 1
                              ? ImportedIcons().bag
                              : ImportedIcons().bagInactive)),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              index = 2;
                            });
                          },
                          icon: SvgPicture.asset(
                            index == 2
                                ? ImportedIcons().profile
                                : ImportedIcons().profileInactive,
                          )),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 20),
                  child: Stack(children: [
                    AnimatedAlign(
                      alignment: index == 0
                          ? Alignment.centerLeft
                          : index == 1
                              ? Alignment.center
                              : Alignment.centerRight,
                      duration: Duration(
                        milliseconds: 500,
                      ),
                      curve: Curves.linear,
                      child: Container(
                        child: SvgPicture.asset("assets/curvebar.svg"),
                      ),
                    ),
                  ]),
                )
              ],
            ),
          ),
          body: bodyItems[index],
        ),
      ),
    );
  }
}
