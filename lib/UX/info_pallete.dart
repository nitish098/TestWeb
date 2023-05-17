import 'package:flutter/material.dart';

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
          padding: const EdgeInsets.all(6.0),
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
        const SizedBox(
          height: 10.0,
        ),
        Text(
          iptTitle,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16.0,
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
        SizedBox(
          width: 200.0,
          child: Text(
            ipText,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.0,
              color: Colors.black54,
            ),
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
        const Text(
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
