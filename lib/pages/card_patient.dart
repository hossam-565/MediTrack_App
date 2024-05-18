import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CardPatient extends StatelessWidget {
  const CardPatient({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 13.5138893127,
          sigmaY: 13.5138893127,
        ),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0x4DFFFFFF)),
            borderRadius: BorderRadius.circular(27),
            color: const Color(0x03FFFFFF),
          ),
          child: Container(
            padding: const EdgeInsets.fromLTRB(7.3, 26.1, 8.3, 77.6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(1, 0, 0, 14.1),
                  child: SizedBox(
                    width: 70.3,
                    height: 72.4,
                    child: SvgPicture.asset(
                      'assets/vectors/done_1_x2.svg',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 14.1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                        child: Text(
                          'Yeay! Welcome Back',
                          style: GoogleFonts.getFont(
                            'Inter',
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            height: 1.3,
                            color: const Color(0xFF0CFAEC),
                          ),
                        ),
                      ),
                      Text(
                        'Once again you login successfully into meditrack app',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Inter',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          height: 1.5,
                          letterSpacing: 0.5,
                          color: const Color(0xFFFFFFFF),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(1, 0, 0, 0),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(32),
                          child: ImageFiltered(
                            imageFilter: ImageFilter.blur(
                              sigmaX: 25,
                              sigmaY: 25,
                            ),
                            child: SizedBox(
                              width: 183,
                              height: 56,
                              child: SvgPicture.asset(
                                'assets/vectors/rectangle_100_x2.svg',
                              ),
                            ),
                          ),
                        ),
                      ),
                SizedBox(
                        width: 183,
                        height: 56,
                        child: Positioned(
                          bottom: 16,
                          child: SizedBox(
                            height: 24,
                            child: Text(
                              'Go to home',
                              style: GoogleFonts.getFont(
                                'Inter',
                                fontWeight: FontWeight.w600,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}