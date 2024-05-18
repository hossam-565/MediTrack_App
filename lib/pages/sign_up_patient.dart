import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPatient extends StatelessWidget {
  const SignUpPatient({super.key});

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
        padding: const EdgeInsets.fromLTRB(36.4, 63.2, 36.4, 328),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 60),
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  width: 230.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 72.2),
                        width: 13.1,
                        height: 22.6,
                        child: SizedBox(
                          width: 13.1,
                          height: 22.6,
                          child: SvgPicture.asset(
                            'assets/vectors/vector_3_x2.svg',
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 51.8, 0, 0),
                        child: Text(
                          'Sign Up',
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
              margin: const EdgeInsets.fromLTRB(1, 0, 0, 33),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFE5E7EB)),
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
                                  'assets/vectors/user_x2.svg',
                                ),
                              ),
                            ),
                            Text(
                              'Enter your name',
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
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFE5E7EB)),
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
                                  'assets/vectors/sms_x2.svg',
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
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFE5E7EB)),
                      borderRadius: BorderRadius.circular(24),
                      color: const Color(0xFFF9FAFB),
                    ),
                    child: SizedBox(
                      width: 327,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
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
                                      'assets/vectors/lock_1_x2.svg',
                                    ),
                                  ),
                                ),
                                Text(
                                  'Enter your password',
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
                            SizedBox(
                              width: 24,
                              height: 24,
                              child: SizedBox(
                                width: 24,
                                height: 24,
                                child: SvgPicture.asset(
                                  'assets/vectors/eye_slash_3_x2.svg',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 9.8, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 16, 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xFFD3D6DA)),
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xFFFFFFFF),
                          ),
                          child: const SizedBox(
                            width: 24,
                            height: 24,
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            style: GoogleFonts.getFont(
                              'Roboto Condensed',
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              height: 1.4,
                              color: const Color(0xFF3B4453),
                            ),
                            children: [
                              TextSpan(
                                text: 'I agree to the ',
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  height: 1.3,
                                  color: const Color(0xFFFFFFFF),
                                ),
                              ),
                              TextSpan(
                                text: 'meditrack',
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  height: 1.3,
                                  color: const Color(0xFFFFFFFF),
                                ),
                              ),
                              TextSpan(
                                text: 'Terms of Service',
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  height: 1.3,
                                  color: const Color(0xFF199A8E),
                                ),
                              ),
                              TextSpan(
                                text: ' and ',
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  height: 1.3,
                                  color: const Color(0xFFFCFDFF),
                                ),
                              ),
                              TextSpan(
                                text: 'Privacy Policy',
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  height: 1.3,
                                  color: const Color(0xFF199A8E),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(1, 0, 0, 27),
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
                    'Sign Up',
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
              margin: const EdgeInsets.fromLTRB(1, 0, 0, 0),
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
          ],
        ),
      ),
    );
  }
}