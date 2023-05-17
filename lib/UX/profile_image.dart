import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  final double pTop;
  final double pLeft;
  final double pDiameter;
  final String pImage;

  const ProfileImage({
    super.key,
    required this.pTop,
    required this.pLeft,
    required this.pDiameter,
    required this.pImage,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: pTop,
      left: pLeft,
      child: SizedBox(
        height: pDiameter,
        width: pDiameter,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100.0),
          child: Image.asset(
            pImage,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
