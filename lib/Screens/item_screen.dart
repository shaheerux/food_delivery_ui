import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_ui/config/icons.dart';
import 'package:food_delivery_ui/config/resources.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size deviceSize = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Items",
                    style: GoogleFonts.dmSans(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 35,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: Center(
                      child: Text(
                        "22",
                        style: GoogleFonts.dmSans(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(ImportedIcons().filter),
                  ),
                ],
              ),
              SizedBox(height: 55),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: Resources().itemName.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 47,
                            backgroundColor: Colors.transparent,
                            backgroundImage:
                                AssetImage(Resources().itemImagePath[index]),
                          ),
                          SizedBox(
                            width: deviceSize.width * 0.05,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Resources().itemName[index],
                                style: GoogleFonts.dmSans(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                Resources().deliveryStatus[index],
                                style: GoogleFonts.dmSans(
                                  fontSize: 14,
                                  color: Color(0xffc4c4c4),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                Resources().offer[index],
                                style: GoogleFonts.dmSans(
                                    fontSize: 13,
                                    color: Color(0xfff4b333),
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.28),
                              ),
                            ],
                          ),
                          Spacer(),
                          SvgPicture.asset(ImportedIcons().rightArrow)
                        ],
                      ),
                      Resources().itemName.last != Resources().itemName[index]
                          ? Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: Divider(
                                thickness: 1.2,
                                color: Color(0xfff2f2f2),
                              ),
                            )
                          : SizedBox(
                              height: 20,
                            )
                    ],
                  );
                },
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: 172,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Color(0xffffefcc),
                      Color(0xfffff8eb),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Premium Items\n10x Faster Delivery",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.dmSans(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.56),
                    ),
                    Container(
                      width: 98,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [Color(0xff121212), Color(0xdb121212)],
                        ),
                      ),
                      child: Center(
                        child: Text("Buy Pro",
                            style: GoogleFonts.dmSans(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: -0.56)),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
