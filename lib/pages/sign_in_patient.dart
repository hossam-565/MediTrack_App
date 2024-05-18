import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPatient extends StatelessWidget {
  const SignInPatient({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, -1),
          end: Alignment(0, 1),
          colors: <Color>[Color(0x8074B8BC), Color(0xFF000000)],
          stops: <double>[0, 0.69],
        ),
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(30.8, 54.7, 30.8, 175),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 56.5),
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  width: 227,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 75.1),
                        width: 13.3,
                        height: 20.2,
                        child: Positioned(
                          bottom: 0,
                          child: SizedBox(
                            width: 13.3,
                            height: 20.2,
                            child: SvgPicture.asset(
                              'assets/vectors/vector_6_x2.svg',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 52.3, 0, 0),
                        child: Text(
                          'Login',
                          style: GoogleFonts.getFont(
                            'Inter',
                            fontWeight: FontWeight.w700,
                            fontSize: 32,
                            height: 1.4,
                            color: const Color(0xFF101623),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 1, 10.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 31),
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 25,
                          sigmaY: 25,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0x1AE5E7EB)),
                            borderRadius: BorderRadius.circular(24),
                            color: const Color(0xFFF9FAFB),
                          ),
                          child: SizedBox(
                            width: 327,
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(24, 16, 0, 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                                    width: 24,
                                    height: 24,
                                    child: SizedBox(
                                      width: 24,
                                      height: 24,
                                      child: SvgPicture.asset(
                                        'assets/vectors/sms_4_x2.svg',
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Enter your email',
                                    style: GoogleFonts.getFont(
                                      'Inter',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      height: 1.5,
                                      color: const Color(0xFFA1A8B0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFFE5E7EB)),
                          borderRadius: BorderRadius.circular(24),
                          color: const Color(0xFFF9FAFB),
                        ),
                        child: SizedBox(
                          width: 327,
                          height: 56,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 64,
                                bottom: 16,
                                child: SizedBox(
                                  height: 24,
                                  child: Text(
                                    'Enter your password',
                                    style: GoogleFonts.getFont(
                                      'Inter',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      height: 1.5,
                                      color: const Color(0xFFA1A8B0),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 24,
                                bottom: 16,
                                child: SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: SizedBox(
                                    width: 24,
                                    height: 24,
                                    child: SvgPicture.asset(
                                      'assets/vectors/eye_slash_1_x2.svg',
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 24,
                                bottom: 16,
                                child: SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: SizedBox(
                                    width: 24,
                                    height: 24,
                                    child: SvgPicture.asset(
                                      'assets/vectors/lock_2_x2.svg',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Text(
                          'Forgot Password?',
                          style: GoogleFonts.getFont(
                            'Inter',
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            height: 1.4,
                            color: const Color(0xFF199A8E),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 1, 53.5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  gradient: const LinearGradient(
                    begin: Alignment(-1, 0),
                    end: Alignment(1, 0),
                    colors: <Color>[Color(0xFF63E5D9), Color(0xFF153936)],
                    stops: <double>[0, 0.925],
                  ),
                ),
                child: Container(
                  width: 327,
                  padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                  child: Text(
                    'Login',
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
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 1, 56.5),
              child: RichText(
                text: TextSpan(
                  style: GoogleFonts.getFont(
                    'Roboto Condensed',
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    height: 1.3,
                    color: const Color(0xFF717784),
                  ),
                  children: [
                    TextSpan(
                      text: 'Don’t have an account?',
                      style: GoogleFonts.getFont(
                        'Inter',
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        height: 1.3,
                        letterSpacing: 0.5,
                        color: const Color(0xFF717784),
                      ),
                    ),
                    TextSpan(
                      text: ' ',
                      style: GoogleFonts.getFont(
                        'Inter',
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        height: 1.3,
                      ),
                    ),
                    TextSpan(
                      text: 'Sign Up',
                      style: GoogleFonts.getFont(
                        'Inter',
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        height: 1.3,
                        color: const Color(0xFF199A8E),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 1, 0),
              child: SizedBox(
                width: 327,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 31),
                      child: SizedBox(
                        width: 327,
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 14,
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Color(0xFFE5E7EB),
                                ),
                                child: const SizedBox(
                                  width: 327,
                                  height: 1,
                                ),
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                color: Color(0xFFFFFFFF),
                              ),
                              child: Container(
                                padding: const EdgeInsets.fromLTRB(15.3, 4, 15.3, 3),
                                child: Text(
                                  'OR',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    height: 1.5,
                                    color: const Color(0xFFA1A8B0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 327,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 9),
                            decoration: BoxDecoration(
                              border: Border.all(color: const Color(0xFFE5E7EB)),
                              borderRadius: BorderRadius.circular(32),
                              color: const Color(0xFFFFFFFF),
                            ),
                            child: SizedBox(
                              width: 327,
                              child: Container(
                                padding: const EdgeInsets.fromLTRB(18, 16, 0, 16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                                      child: SizedBox(
                                        width: 19.6,
                                        height: 20,
                                        child: SvgPicture.asset(
                                          'assets/vectors/google_1_x2.svg',
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Sign in with Google',
                                      style: GoogleFonts.getFont(
                                        'Inter',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        height: 1.5,
                                        color: const Color(0xFF101623),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: const Color(0xFFE5E7EB)),
                              borderRadius: BorderRadius.circular(32),
                              color: const Color(0xFFFFFFFF),
                            ),
                            child: SizedBox(
                              width: 327,
                              child: Container(
                                padding: const EdgeInsets.fromLTRB(18, 16, 0, 16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                                      width: 16.9,
                                      height: 20,
                                      child: SizedBox(
                                        width: 16.9,
                                        height: 20,
                                        child: SvgPicture.asset(
                                          'assets/vectors/vector_2_x2.svg',
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Sign in with Apple',
                                      style: GoogleFonts.getFont(
                                        'Inter',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        height: 1.5,
                                        color: const Color(0xFF101623),
                                      ),
                                    ),
                                  ],
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
          ],
        ),
      ),
    );
  }
}