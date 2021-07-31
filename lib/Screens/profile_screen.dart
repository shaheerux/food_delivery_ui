import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_ui/config/icons.dart';
import 'package:food_delivery_ui/config/resources.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 380,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 22),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Divider(
                        height: 1,
                        thickness: 2,
                        indent: 80,
                        color: Colors.black,
                      ),
                      Stack(children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage("assets/profile.png"),
                          backgroundColor: Color(0xffffe6ad),
                        ),
                        Positioned.fill(
                            child: Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            width: 33.87,
                            height: 33.87,
                            child: Stack(
                              children: [
                                Container(
                                  width: 33.87,
                                  height: 33.87,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black,
                                  ),
                                ),
                                Positioned(
                                  left: 11.58,
                                  top: 10.69,
                                  child: Container(
                                      width: 12.53,
                                      height: 12.48,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: SvgPicture.asset(
                                          ImportedIcons().edit)),
                                ),
                              ],
                            ),
                          ),
                        ))
                      ]),
                      Divider(
                        thickness: 1,
                        indent: 80,
                        color: Color(0xffebebeb),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text("Lezine Taynis",
                      style: GoogleFonts.dmSans(
                        color: Color(0xff191919),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      )),
                  Text(
                    "Pro member",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                      color: Color(0xffc4c4c4),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      children: [
                        Container(
                          width: 58,
                          height: 58,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xfffdf9f2), Color(0xc9fdf8ec)],
                            ),
                          ),
                          child: Center(
                              child: SvgPicture.asset(ImportedIcons().wallet)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Card details",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.dmSans(
                            color: Color(0xff232323),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                        SvgPicture.asset(ImportedIcons().rightArrow)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      children: [
                        Container(
                          width: 58,
                          height: 58,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xfffdf9f2), Color(0xc9fdf8ec)],
                            ),
                          ),
                          child: Center(
                              child:
                                  SvgPicture.asset(ImportedIcons().settings)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Settings",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.dmSans(
                            color: Color(0xff232323),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                        SvgPicture.asset(ImportedIcons().rightArrow)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Container(
                width: double.infinity,
                height: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xf21b1b1b), Color(0xff0d0d0d)],
                  ),
                ),
                padding: EdgeInsets.all(24),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 58,
                          height: 58,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff2a2a2a),
                          ),
                          child: Center(
                              child: Text(
                            "⭐️",
                            textScaleFactor: 1.8,
                          )),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Reviewed",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.dmSans(
                                color: Color(0xffdddddd),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "24 items",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.dmSans(
                                color: Color(0xff6b6a6a),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          width: 55,
                          height: 32,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(21),
                            color: Color(0xff2a2a2a),
                          ),
                          child: Center(
                            child: SizedBox(
                              width: 25.36,
                              child: Text(
                                "Edit",
                                style: GoogleFonts.dmSans(
                                  color: Color(0xffe2e2e2),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xff373737),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 120,
                          height: 40,
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    width: 90,
                                    height: 40,
                                    child: Stack(
                                      children: [
                                        Positioned.fill(
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                                width: 40,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(19),
                                                  border: Border.all(
                                                    color: Color(0xff1b1b1b),
                                                    width: 1.24,
                                                  ),
                                                  color: Color(0xfff9eee0),
                                                ),
                                                child: Image.asset(
                                                    "assets/juice.png")),
                                          ),
                                        ),
                                        Positioned.fill(
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                              width: 40,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(19),
                                                border: Border.all(
                                                  color: Color(0xff1b1b1b),
                                                  width: 1.24,
                                                ),
                                                color: Color(0xfff9eee0),
                                              ),
                                              child: Image(
                                                image: AssetImage(Resources()
                                                    .itemImagePath[1]),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned.fill(
                                          child: Align(
                                            alignment: Alignment.topRight,
                                            child: Container(
                                              width: 40,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(19),
                                                border: Border.all(
                                                  color: Color(0xff1b1b1b),
                                                  width: 1.24,
                                                ),
                                                color: Color(0xfff9eee0),
                                              ),
                                              child: Image(
                                                  image: AssetImage(Resources()
                                                      .itemImagePath[2])),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned.fill(
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(19),
                                      border: Border.all(
                                        color: Color(0xff1b1b1b),
                                        width: 1.24,
                                      ),
                                      color: Color(0xfff9eee0),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "+4",
                                        style: GoogleFonts.dmSans(
                                          color: Color(0xff191919),
                                          fontSize: 14.89,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Text(" Items Ordered",
                            style: GoogleFonts.dmSans(
                              color: Color(0xff777777),
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                            ImportedIcons().rightArrow,
                            color: Color(0xff777777),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
