import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetPasswordEmail extends StatelessWidget {
  const ResetPasswordEmail({super.key});

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
        padding: const EdgeInsets.fromLTRB(39.9, 64.1, 39.9, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 53.1),
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  width: 7.1,
                  height: 15.8,
                  child: SizedBox(
                    width: 7.1,
                    height: 15.8,
                    child: SvgPicture.asset(
                      'assets/vectors/vector_4_x2.svg',
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(3.1, 0, 3.1, 44),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Forgot Your Password?',
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
                    Text(
                      'Enter your email or your phone number, we will send you confirmation code',
                      style: GoogleFonts.getFont(
                        'Inter',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        height: 1.5,
                        color: const Color(0xFFFFFFFF),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 7, 32),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFE5E7EB)),
                borderRadius: BorderRadius.circular(29),
                color: const Color(0xFFF9FAFB),
              ),
              child: SizedBox(
                width: 327,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(4, 4, 0, 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF558689),
                          borderRadius: BorderRadius.circular(29),
                        ),
                        child: Container(
                          width: 151,
                          padding: const EdgeInsets.fromLTRB(2.7, 12, 0, 11),
                          child: Text(
                            'Email',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              height: 1.4,
                              color: const Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 12, 0, 11),
                        child: Text(
                          'Phone',
                          style: GoogleFonts.getFont(
                            'Inter',
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            height: 1.4,
                            color: const Color(0xFFA1A8B0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(1, 0, 0, 62),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFE5E7EB)),
                borderRadius: BorderRadius.circular(24),
                color: const Color(0xFFF9FAFB),
              ),
              child: SizedBox(
                width: 327,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(24, 16, 26.7, 16),
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
                                'assets/vectors/sms_3_x2.svg',
                              ),
                            ),
                          ),
                          Text(
                            'test@gmail.com',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              height: 1.5,
                              color: const Color(0xFF101623),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                        width: 10.7,
                        height: 8,
                        child: SizedBox(
                          width: 10.7,
                          height: 8,
                          child: SvgPicture.asset(
                            'assets/vectors/vector_8_x2.svg',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(1, 0, 0, 397),
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
                  padding: const EdgeInsets.fromLTRB(0, 16, 1, 16),
                  child: Text(
                    'Reset Password',
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
              margin: const EdgeInsets.fromLTRB(0, 0, 2, 0),
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