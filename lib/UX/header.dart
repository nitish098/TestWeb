import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 13, 1, 106),
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: Row(children: [
        const SizedBox(
          width: 100,
        ),
        const Icon(
          Icons.favorite_rounded,
          color: Colors.white,
        ),
        const SizedBox(
          width: 10.0,
        ),
        Text(
          "Avengers",
          style: GoogleFonts.numans(fontSize: 18.0, color: Colors.white),
        ),
        const SizedBox(
          width: 250,
        ),
        const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HeaderNav(
              text_sample: "Home",
              selected: true,
            ),
            SizedBox(
              width: 40.0,
            ),
            HeaderNav(
              text_sample: "Find a team",
              selected: false,
            ),
            SizedBox(
              width: 40.0,
            ),
            HeaderNav(
              text_sample: "Publish a Project",
              selected: false,
            ),
            SizedBox(
              width: 40.0,
            ),
            HeaderNav(
              text_sample: "About",
              selected: false,
            )
          ],
        ),
        const SizedBox(
          width: 250.0,
        ),
        Row(
          // crossAxisAlignment: ,
          children: [
            Text(
              "Sign up",
              style: GoogleFonts.nunito(
                fontSize: 13.0,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Container(
              height: 20.0,
              width: 1.0,
              color: Colors.white,
            ),
            const SizedBox(
              width: 10.0,
            ),
            Text(
              "Log in",
              style: GoogleFonts.nunito(
                fontSize: 13.0,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
          ],
        )
      ]),
    );
  }
}

class HeaderNav extends StatefulWidget {
  final String text_sample;
  final bool selected;
  const HeaderNav(
      {super.key, required this.text_sample, required this.selected});

  @override
  State<HeaderNav> createState() => _HeaderNavState();
}

class _HeaderNavState extends State<HeaderNav> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.text_sample,
          style: GoogleFonts.nunito(
            fontSize: 13.0,
            color: Colors.white,
          ),
        ),
        widget.selected
            ? const SizedBox(
                height: 5.0,
              )
            : const SizedBox(),
        widget.selected
            ? const CircleAvatar(
                radius: 2.0,
                backgroundColor: Colors.white,
              )
            : const SizedBox(),
      ],
    );
  }
}
