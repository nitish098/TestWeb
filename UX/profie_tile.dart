import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileTile extends StatelessWidget {
  final double ptTop;
  final double ptLeft;
  final String ptTitle;
  final String ptSubTitle;
  final double factor;

  const ProfileTile({
    super.key,
    required this.ptTop,
    required this.ptLeft,
    required this.ptTitle,
    required this.ptSubTitle,
    required this.factor,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 500),
      top: ptTop,
      left: ptLeft,
      child: Container(
        padding: EdgeInsets.all(6.0 * factor),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, 5.0 * factor),
                blurRadius: 5.0 * factor,
              )
            ]),
        child: Row(children: [
          CircleAvatar(
            radius: 12.0 * factor,
            backgroundColor: Colors.grey[600],
            child: Icon(
              Icons.mail_outline_rounded,
              size: 12.0 * factor,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 5.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ptTitle,
                style: GoogleFonts.nunito(
                  fontSize: 9.0 * factor,
                  color: Colors.black,
                ),
              ),
              Text(
                ptSubTitle,
                style: GoogleFonts.nunito(
                  fontSize: 8.0 * factor,
                  color: Colors.black87,
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
