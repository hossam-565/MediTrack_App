import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetPasswordVerifyCode extends StatelessWidget {
  const ResetPasswordVerifyCode({super.key});

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
        padding: const EdgeInsets.fromLTRB(39.9, 64.1, 39, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 62.1),
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  width: 7.1,
                  height: 15.8,
                  child: SizedBox(
                    width: 7.1,
                    height: 15.8,
                    child: SvgPicture.asset(
                      'assets/vectors/vector_7_x2.svg',
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 17.8, 61),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 6.2, 32),
                    child: Text(
                      'Enter Verification Code',
                      style: GoogleFonts.getFont(
                        'Inter',
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        height: 1.4,
                        color: const Color(0xFF101623),
                      ),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: GoogleFonts.getFont(
                        'Roboto Condensed',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        height: 1.5,
                        color: const Color(0xFFA1A8B0),
                      ),
                      children: [
                        TextSpan(
                          text: 'Enter code that we have sent to your number',
                          style: GoogleFonts.getFont(
                            'Inter',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            height: 1.3,
                            color: const Color(0xFFFFFFFF),
                          ),
                        ),
                        TextSpan(
                          text: ' ',
                          style: GoogleFonts.getFont(
                            'Inter',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            height: 1.3,
                          ),
                        ),
                        TextSpan(
                          text: '08528188*** ',
                          style: GoogleFonts.getFont(
                            'Inter',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            height: 1.3,
                            color: const Color(0xFF101623),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0.9, 79),
              child: SizedBox(
                width: 328,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF199A8E)),
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xFFFFFFFF),
                      ),
                      child: Container(
                        width: 64,
                        padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                        child: Text(
                          '5',
                          style: GoogleFonts.getFont(
                            'Inter',
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            height: 1.4,
                            color: const Color(0xFF101623),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF199A8E)),
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFFFFFFF),
                      ),
                      child: Container(
                        width: 64,
                        padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                        child: Text(
                          '6',
                          style: GoogleFonts.getFont(
                            'Inter',
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            height: 1.4,
                            color: const Color(0xFF101623),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF199A8E)),
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xFFFFFFFF),
                      ),
                      child: Container(
                        width: 64,
                        padding: const EdgeInsets.fromLTRB(1, 16, 0, 16),
                        child: Text(
                          '4',
                          style: GoogleFonts.getFont(
                            'Inter',
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            height: 1.4,
                            color: const Color(0xFF101623),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 64,
                      height: 64,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFF9FAFB),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const SizedBox(
                          width: 64,
                          height: 64,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 23),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF199A8E),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Container(
                    width: 327,
                    padding: const EdgeInsets.fromLTRB(0, 16, 1, 16),
                    child: Text(
                      'Verify',
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
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(22.1, 0, 0, 368),
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
                      text: 'Didn’t receive the code? ',
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
                      text: 'Resend',
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
              margin: const EdgeInsets.fromLTRB(0, 0, 2.9, 0),
              width: 134,
              height: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF232B43),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const SizedBox(
                  width: 134,
                  height: 5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}