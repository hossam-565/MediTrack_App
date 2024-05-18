import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';

class FormulairePatient extends StatelessWidget {
  const FormulairePatient({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: const BoxDecoration(
        color: Color(0xFF000000),
      ),
      child: Stack(
        children: [
          Positioned(
            right: -298,
            top: -46,
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(
                sigmaX: 50,
                sigmaY: 50,
              ),
              child: SizedBox(
                width: 662,
                height: 710,
                child: SvgPicture.asset(
                  'assets/vectors/ellipse_52_x2.svg',
                ),
              ),
            ),
          ),
          Positioned(
            left: -108,
            top: 640,
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(
                sigmaX: 50,
                sigmaY: 50,
              ),
              child: SizedBox(
                width: 485,
                height: 623,
                child: SvgPicture.asset(
                  'assets/vectors/ellipse_53_x2.svg',
                ),
              ),
            ),
          ),
    Container(
          ),
        ],
      ),
    );
  }
}