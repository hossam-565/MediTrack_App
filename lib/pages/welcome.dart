import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, -1),
          end: Alignment(0, 1),
          colors: <Color>[Color(0xFFD3D7DA), Color(0xFFBCD8D5), Color(0xFF51DFBD), Color(0xFF63D1D8), Color(0xFF3792E5), Color(0xFF0B75F1)],
          stops: <double>[0, 0.205, 0.345, 0.685, 0.88, 1],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            right: -160,
            top: -618,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/capture_decran_20240511_a_13171.png',
                  ),
                ),
              ),
              child: const SizedBox(
                width: 655,
                height: 1344,
              ),
            ),
          ),
          Positioned(
            left: -143,
            top: 0,
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(
                sigmaX: 49.5,
                sigmaY: 49.5,
              ),
              child: SizedBox(
                width: 710,
                height: 726,
                child: SvgPicture.asset(
                  'assets/vectors/ellipse_2_x2.svg',
                ),
              ),
            ),
          ),
          Positioned(
            right: -236,
            top: -606,
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(
                sigmaX: 49.5,
                sigmaY: 49.5,
              ),
              child: SizedBox(
                width: 808,
                height: 623,
                child: SvgPicture.asset(
                  'assets/vectors/ellipse_1_x2.svg',
                ),
              ),
            ),
          ),
    Container(
            padding: const EdgeInsets.fromLTRB(1, 488, 0, 396),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: -133,
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/capture_decran_20240508_a_14341.png',
                        ),
                      ),
                    ),
                    child: const SizedBox(
                      width: 148,
                      height: 150,
                    ),
                  ),
                ),
                Text(
                  'MediTrack',
                  style: GoogleFonts.getFont(
                    'Koulen',
                    fontWeight: FontWeight.w400,
                    fontSize: 32,
                    height: 1.5,
                    color: const Color(0xFF252E2F),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}