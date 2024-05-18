import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({super.key});

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
        padding: const EdgeInsets.fromLTRB(35.5, 65.4, 35.5, 392),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 54.4),
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  width: 9.5,
                  height: 21.1,
                  child: SizedBox(
                    width: 9.5,
                    height: 21.1,
                    child: SvgPicture.asset(
                      'assets/vectors/vector_11_x2.svg',
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 38.8, 80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 5.4, 8),
                    child: Text(
                      'Create New Password',
                      style: GoogleFonts.getFont(
                        'Inter',
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        height: 1.4,
                        color: const Color(0xFF101623),
                      ),
                    ),
                  ),
                  Text(
                    'Create your new password to login',
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
            Container(
              margin: const EdgeInsets.fromLTRB(5, 0, 0, 71),
              child: SizedBox(
                width: 327,
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
                          padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 132,
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
                                          'assets/vectors/lock_4_x2.svg',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                                      child: SizedBox(
                                        width: 92,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: const Color(0xFF101623),
                                                  borderRadius: BorderRadius.circular(4),
                                                ),
                                                child: const SizedBox(
                                                  width: 8,
                                                  height: 8,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: const Color(0xFF101623),
                                                  borderRadius: BorderRadius.circular(4),
                                                ),
                                                child: const SizedBox(
                                                  width: 8,
                                                  height: 8,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: const Color(0xFF101623),
                                                  borderRadius: BorderRadius.circular(4),
                                                ),
                                                child: const SizedBox(
                                                  width: 8,
                                                  height: 8,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: const Color(0xFF101623),
                                                  borderRadius: BorderRadius.circular(4),
                                                ),
                                                child: const SizedBox(
                                                  width: 8,
                                                  height: 8,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: const Color(0xFF101623),
                                                  borderRadius: BorderRadius.circular(4),
                                                ),
                                                child: const SizedBox(
                                                  width: 8,
                                                  height: 8,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: const Color(0xFF101623),
                                                  borderRadius: BorderRadius.circular(4),
                                                ),
                                                child: const SizedBox(
                                                  width: 8,
                                                  height: 8,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: const Color(0xFF101623),
                                                  borderRadius: BorderRadius.circular(4),
                                                ),
                                                child: const SizedBox(
                                                  width: 8,
                                                  height: 8,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: const Color(0xFF101623),
                                                borderRadius: BorderRadius.circular(4),
                                              ),
                                              child: const SizedBox(
                                                width: 8,
                                                height: 8,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 24,
                                height: 24,
                                child: SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: SvgPicture.asset(
                                    'assets/vectors/eye_slash_x2.svg',
                                  ),
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
                                        'assets/vectors/lock_3_x2.svg',
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Confirm password',
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
                                    'assets/vectors/eye_slash_2_x2.svg',
                                  ),
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
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF199A8E),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Container(
                  width: 327,
                  padding: const EdgeInsets.fromLTRB(0, 16, 1, 16),
                  child: Text(
                    'Create Password',
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
    );
  }
}