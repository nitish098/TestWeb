import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class InfoPallete extends StatelessWidget {
  final String iptTitle;
  final String ipText;
  final IconData ipIcon;

  const InfoPallete({
    super.key,
    required this.iptTitle,
    required this.ipText,
    required this.ipIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Icon(
            ipIcon,
            size: 22.0,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          iptTitle,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16.0,
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Container(
          width: 200.0,
          child: Text(
            ipText,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.0,
              color: Colors.black54,
            ),
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          "Learn more ....",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14.0,
          ),
        ),
        Container(
          height: 1.5,
          width: 90.0,
          color: Colors.black87,
        )
      ],
    );
  }
}
