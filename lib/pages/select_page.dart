import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectPage extends StatelessWidget {
  const SelectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, -1),
          end: Alignment(0, 1),
          colors: <Color>[Color(0xFF000000)],
          stops: <double>[0],
        ),
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(0, 460, 0, 0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/capture_decran_20240512_a_13241.png',
                  ),
                ),
              ),
              child: const SizedBox(
                width: 528,
                height: 630,
              ),
            ),
            Positioned(
              right: -10,
              top: -3,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/capture_decran_20240512_a_12121.png',
                    ),
                  ),
                ),
                child: const SizedBox(
                  width: 424,
                  height: 479,
                ),
              ),
            ),
            Positioned(
              left: -224,
              top: -210,
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(
                  sigmaX: 49.5,
                  sigmaY: 49.5,
                ),
                child: SizedBox(
                  width: 808,
                  height: 623,
                  child: SvgPicture.asset(
                    'assets/vectors/ellipse_3_x2.svg',
                  ),
                ),
              ),
            ),
            Positioned(
              right: -263,
              bottom: -270,
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(
                  sigmaX: 49.5,
                  sigmaY: 49.5,
                ),
                child: SizedBox(
                  width: 878,
                  height: 742,
                  child: SvgPicture.asset(
                    'assets/vectors/ellipse_4_x2.svg',
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 431,
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 50,
                    sigmaY: 50,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0x4DFFFFFF)),
                      borderRadius: BorderRadius.circular(27),
                      color: const Color(0x03FFFFFF),
                    ),
                    child: Container(
                      width: 154,
                      height: 49,
                      padding: const EdgeInsets.fromLTRB(0, 7.6, 3.7, 10.6),
                      child: Text(
                        'You are ?',
                        style: GoogleFonts.getFont(
                          'Inter',
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          letterSpacing: 0.2,
                          color: const Color(0xFF000000),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 393,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF85A88E),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Container(
                  height: 40,
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                  child: Text(
                    'DOCTOR',
                    style: GoogleFonts.getFont(
                      'Inter',
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                      height: 1.5,
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 372,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0x4A1F47D6),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Container(
                  height: 40,
                  padding: const EdgeInsets.fromLTRB(16, 8, 16.3, 8),
                  child: Text(
                    'PATIENT',
                    style: GoogleFonts.getFont(
                      'Inter',
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                      height: 1.5,
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}