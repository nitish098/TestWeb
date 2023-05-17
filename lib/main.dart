import 'dart:math';
import 'package:flutter/material.dart';
// import 'package:web_test/UX/footer.dart';
// import 'package:web_test/UX/header.dart';
// import 'package:web_test/UX/info_pallete.dart';
// import 'package:web_test/UX/profie_tile.dart';
// import 'package:web_test/UX/profile_image.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:web_test/UX/testmonial_tile.dart';

import './UX/footer.dart';
import './UX/header.dart';
import './UX/info_pallete.dart';
import './UX/profie_tile.dart';
import './UX/profile_image.dart';
import './UX/testmonial_tile.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late ScrollController _controller;
  double pixelst = 0.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller = ScrollController();
    _controller.addListener(() {
      setState(() {
        pixelst = _controller.position.pixels;
        // print(_controller.position.pixels);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          controller: _controller,
          child: Column(
            children: [
              Stack(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 600.0,
                        width: MediaQuery.of(context).size.width * 0.45,
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Transform(
                              transform: Matrix4.rotationZ(pi / 6)
                                ..translate(-180.0, 170.0),
                              child: Container(
                                height: 350.0,
                                width: 700.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(300.0),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 200.0,
                              left: 100.0,
                              child: SizedBox(
                                height: 400.0,
                                width: 400.0,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Manage all your data",
                                      style: GoogleFonts.nunito(
                                        fontSize: 38.0,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      "Projects in one place",
                                      style: GoogleFonts.nunito(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20.0,
                                    ),
                                    SizedBox(
                                      width: 300.0,
                                      child: Text(
                                        "Describe your project and find a top team to assit you.Leave your E-mail here",
                                        style: GoogleFonts.nunito(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 45.0,
                                          width: 230.0,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              hintText:
                                                  "enter your email address",
                                              hintStyle: GoogleFonts.nunito(
                                                  fontSize: 12.0),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(50.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20.0,
                                        ),
                                        TextButton(
                                          style: TextButton.styleFrom(
                                              backgroundColor: Colors.black87,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30.0),
                                              )),
                                          onPressed: () {},
                                          child: SizedBox(
                                            height: 45.0,
                                            width: 100.0,
                                            child: Center(
                                                child: Text(
                                              "Get Invite",
                                              style: GoogleFonts.nunito(
                                                color: Colors.white,
                                                fontSize: 13.0,
                                              ),
                                            )),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 600.0,
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width * 0.55,
                        child: const Stack(
                          clipBehavior: Clip.none,
                          children: [
                            ProfileImage(
                              pTop: 140.0,
                              pLeft: 90.0,
                              pDiameter: 200.0,
                              pImage: "assets/images/captain-america.png",
                            ),
                            ProfileTile(
                                ptTop: 140.0,
                                ptLeft: 10.0,
                                ptTitle: "On your left.",
                                ptSubTitle: "Captain America, Steve",
                                factor: 1),
                            ProfileImage(
                              pTop: 160.0,
                              pLeft: 310.0,
                              pDiameter: 100.0,
                              pImage: "assets/images/hulk.png",
                            ),
                            ProfileTile(
                                ptTop: 160.0,
                                ptLeft: 340.0,
                                ptTitle: "I am ironman",
                                ptSubTitle: "Ironman, Tony Stark",
                                factor: 0.5),
                            ProfileImage(
                              pTop: 275.0,
                              pLeft: 280.0,
                              pDiameter: 200.0,
                              pImage: "assets/images/ironMan.png",
                            ),
                            ProfileTile(
                                ptTop: 275.0,
                                ptLeft: 380.0,
                                ptTitle: "I am Gonna give u Color theory",
                                ptSubTitle: "Scarlett, Designer",
                                factor: 1),
                            ProfileImage(
                              pTop: 360.0,
                              pLeft: 90.0,
                              pDiameter: 170.0,
                              pImage: "assets/images/bw.png",
                            ),
                            ProfileTile(
                                ptTop: 360.0,
                                ptLeft: 90.0,
                                ptTitle: "I am Gonna give u Color theory",
                                ptSubTitle: "Scarlett, Designer",
                                factor: 0.8)
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Header(),
                ],
              ),
              Container(
                height: 600.0,
                width: double.infinity,
                color: Colors.white,
                child: Stack(
                  children: [
                    Positioned(
                      right: -200.0,
                      child: Container(
                        height: 330.0,
                        width: 430.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(300.0),
                          color: Colors.grey[100],
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "How It Works",
                          style: GoogleFonts.nunito(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          height: 60.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            AnimatedOpacity(
                              opacity: pixelst >= 100 ? 1.0 : 0.0,
                              duration: const Duration(milliseconds: 500),
                              child: AnimatedPadding(
                                duration: const Duration(milliseconds: 500),
                                padding: EdgeInsets.only(
                                    left: pixelst >= 100 ? 0.0 : 500.0),
                                child: const InfoPallete(
                                  iptTitle: "Community",
                                  ipText:
                                      "Communicate with collegaues, share ideas ,find a team in a project in one space",
                                  ipIcon: Icons.people_rounded,
                                ),
                              ),
                            ),
                            const InfoPallete(
                              iptTitle: "Overview Reports",
                              ipText:
                                  "Track you progress thanks to the reporting system.",
                              ipIcon: Icons.people_rounded,
                            ),
                            const InfoPallete(
                              iptTitle: "Dashboard",
                              ipText:
                                  "Manage your activity by tracking the dashboard. ",
                              ipIcon: Icons.people_rounded,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 160.0,
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black87,
                              padding: const EdgeInsets.all(6.0)),
                          onPressed: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30.0,
                              vertical: 8.0,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40.0),
                                border: Border.all(
                                  color: Colors.grey.shade800,
                                )),
                            child: Text(
                              "Explore More",
                              style: GoogleFonts.nunito(
                                  fontSize: 12.0, fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 500.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: -250.0,
                      child: Container(
                        height: 450.0,
                        width: 700.0,
                        decoration: BoxDecoration(
                          color: Colors.amber[400],
                          borderRadius: BorderRadius.circular(400.0),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 800),
                      top: 20.0,
                      left: pixelst >= 500 ? 100.0 : 0.0,
                      child: Container(
                        height: 400.0,
                        width: 700.0,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image.asset(
                          "assets/images/download-_1_.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const ProfileTile(
                      ptTop: -10.0,
                      ptLeft: 80.0,
                      ptTitle: "Send a final design to the team",
                      ptSubTitle: "Sara,Client",
                      factor: 1.0,
                    ),
                    const ProfileTile(
                      ptTop: 400.0,
                      ptLeft: 620.0,
                      ptTitle: "Publish your project whenever you want",
                      ptSubTitle: "Micheal",
                      factor: 1.0,
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 500),
                      right: pixelst >= 800 ? 100.0 : 0.0,
                      top: 150.0,
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 500),
                        opacity: pixelst > 900 ? 1.0 : 0.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Easy Project Management",
                              style: GoogleFonts.nunito(
                                fontSize: 25.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            SizedBox(
                              width: 260.0,
                              child: Text(
                                "Manage your project, Organise your own workspace, keep statistics and collaberate withe us",
                                style: GoogleFonts.nunito(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(100.0)),
                                  backgroundColor: Colors.grey[900],
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 50.0,
                                    vertical: 20.0,
                                  )),
                              onPressed: () {},
                              child: Text(
                                "Try for Free",
                                style: GoogleFonts.nunito(
                                    fontSize: 32.0,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 600.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Stack(
                  children: [
                    Align(
                      child: Column(
                        children: [
                          Text(
                            "Be in the community",
                            style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w800,
                              fontSize: 25.0,
                            ),
                          ),
                          Text(
                            "Meet New people and I have Testimonials about your teammates",
                            style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w600,
                              fontSize: 14.0,
                            ),
                          )
                        ],
                      ),
                    ),
                    AnimatedAlign(
                      duration: const Duration(milliseconds: 500),
                      alignment: pixelst >= 1200
                          ? const Alignment(0.0, 0.0)
                          : const Alignment(-0.2, 0.0),
                      child: AnimatedOpacity(
                        opacity: pixelst >= 1500 ? 1.0 : 0.0,
                        duration: const Duration(milliseconds: 500),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  left: -70.0,
                                  top: -60.0,
                                  child: Icon(
                                    Icons.format_quote,
                                    color: Colors.grey[200],
                                    size: 150.0,
                                  ),
                                ),
                                Text(
                                  "Excellent",
                                  style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 30.0,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            SizedBox(
                              width: 360.0,
                              child: Text(
                                "To the freelancer. I found a team for a project during which I met a cool work to do and project managment have become much faster and stronger.",
                                style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.0,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Comment detail",
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w800,
                                fontSize: 14.0,
                              ),
                            ),
                            Container(
                              height: 1.5,
                              width: 100,
                              color: Colors.black87,
                            )
                          ],
                        ),
                      ),
                    ),
                    TestmonialTile(
                      tImage: "assets/images/thor.png",
                      ttop: pixelst >= 1300 ? 100.0 : 130.0,
                      tleft: 780.0,
                      tleftAlign: false,
                    ),
                    TestmonialTile(
                      tImage: "assets/images/thor.png",
                      ttop: pixelst >= 1300 ? 400.0 : 430.0,
                      tleft: 840.0,
                      tleftAlign: false,
                    ),
                    TestmonialTile(
                      tImage: "assets/images/thor.png",
                      ttop: pixelst >= 1300 ? 450.0 : 480.0,
                      tleft: 440.0,
                      tleftAlign: true,
                    ),
                    Positioned(
                      right: 350.0,
                      top: 200.0,
                      child: Container(
                        height: 20.0,
                        width: 20.0,
                        decoration: BoxDecoration(
                            color: Colors.red[600],
                            borderRadius: BorderRadius.circular(60.0),
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 20.0,
                                  offset: Offset(0.0, 10.0),
                                  color: Colors.black26)
                            ]),
                      ),
                    ),
                    Positioned(
                      right: 250.0,
                      top: 450.0,
                      child: Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 15, 102, 202),
                            borderRadius: BorderRadius.circular(60.0),
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 20.0,
                                  offset: Offset(0.0, 10.0),
                                  color: Colors.black26)
                            ]),
                      ),
                    ),
                    Positioned(
                      right: 200.0,
                      top: 300.0,
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(80.0),
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 20.0,
                                  offset: Offset(0.0, 10.0),
                                  color: Colors.black26)
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 600.0,
                color: const Color.fromARGB(255, 13, 1, 106),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Align(
                      alignment: const Alignment(0.0, 1.0),
                      child: SizedBox(
                        height: 600.0,
                        width: 400.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 80.0,
                            ),
                            Text(
                              "Get Started Today",
                              style: GoogleFonts.josefinSans(
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.0,
                                fontSize: 35.0,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              "Avengers - It's time",
                              style: GoogleFonts.nunito(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 14.0,
                              ),
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: const EdgeInsets.all(6.0),
                                    ),
                                    onPressed: () {},
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 30.0,
                                        vertical: 12.0,
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(60.0),
                                          border: Border.all(
                                            color: Colors.white,
                                          )),
                                      child: Text(
                                        "Get My Price",
                                        style: GoogleFonts.josefinSans(
                                          fontSize: 12.0,
                                          color: const Color.fromARGB(
                                              255, 14, 67, 111),
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20.0,
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40.0),
                                    ),
                                    // backgroundColor: Colors.white,
                                    padding: const EdgeInsets.all(6.0),
                                  ),
                                  onPressed: () {},
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 30.0,
                                      vertical: 12.0,
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(60.0),
                                        border: Border.all(
                                          color: Colors.white,
                                        )),
                                    child: Text(
                                      "Try for free",
                                      style: GoogleFonts.josefinSans(
                                        fontSize: 12.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 0.0,
                      child: Footer(),
                    ),
                    Align(
                      alignment: const Alignment(1.18, 0.0),
                      child: Container(
                        height: 200.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                          color: Colors.amber[400],
                          borderRadius: BorderRadius.circular(100.0),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10.0,
                                offset: Offset(0.0, 5.0))
                          ],
                        ),
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
