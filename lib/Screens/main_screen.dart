import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_ui/config/icons.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size deviceSize = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hey!\nSpecial\nOffers For You",
                    style: GoogleFonts.dmSans(
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.28),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(ImportedIcons().search))
                ],
              ),
              SizedBox(
                height: 38,
              ),
              Container(
                height: 135,
                width: deviceSize.width,
                child: Stack(children: [
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Container(
                          width: deviceSize.width,
                          height: 112,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17.23),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Color(0xffffca5d).withOpacity(0.3),
                                Color(0x00fbce71)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 125,
                    width: deviceSize.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [Color(0xffffca5d), Color(0x72fbce71)],
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 73,
                            height: 71.75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35.88),
                              color: Color(0xffffeabc),
                            ),
                            child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/donut.png"),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Donuts",
                                  style: GoogleFonts.dmSans(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff313131),
                                  )),
                              SizedBox(height: 4),
                              Text(
                                "40%OFF",
                                style: GoogleFonts.dmSans(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xffc48302),
                                    letterSpacing: 0.13),
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                            width: 46,
                            height: 43,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [Color(0xff171717), Color(0xbc171717)],
                              ),
                            ),
                            child: Center(
                                child: SvgPicture.asset(ImportedIcons().plus)),
                          )
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 22,
              ),
              Container(
                width: deviceSize.width,
                height: 330,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: deviceSize.width,
                          height: 295,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding:
                                EdgeInsets.only(left: 23, right: 23, top: 39),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundImage:
                                          AssetImage("assets/deliveryboy.png"),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Chris Madive",
                                          style: GoogleFonts.dmSans(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Text(
                                          "⭐️ 4.8 Delivery boy",
                                          style: GoogleFonts.dmSans(),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    SvgPicture.asset(
                                      ImportedIcons().rightArrow,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 25.0),
                                  child: Divider(
                                    thickness: 1.2,
                                    color: Color(0xfff2f2f2),
                                  ),
                                ),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundColor: Colors.white,
                                      child: SvgPicture.asset(
                                        ImportedIcons().direction,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "15 min",
                                          style: GoogleFonts.dmSans(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Delivered on",
                                          style: GoogleFonts.dmSans(
                                              fontSize: 14,
                                              color: Color(0xff999999)),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Stack(children: [
                                      Positioned.fill(
                                        child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "60%",
                                              style: GoogleFonts.dmSans(
                                                color: Color(0xff272727),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                letterSpacing: 0.14,
                                              ),
                                            )),
                                      ),
                                      Container(
                                        width: 60,
                                        height: 60,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 6,
                                          value: 67,
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                                  Color(0xfffdad4e)),
                                        ),
                                      ),
                                    ])
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: deviceSize.width,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [Color(0xff121212), Color(0xdb121212)],
                            ),
                          ),
                          padding: const EdgeInsets.only(
                            top: 29,
                            bottom: 28,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Check out",
                                  style: GoogleFonts.dmSans(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
