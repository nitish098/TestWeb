import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

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
          child: Image.asset(
            pImage,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(100.0),
        ),
      ),
    );
  }
}
