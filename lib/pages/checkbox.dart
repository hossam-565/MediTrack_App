import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Checkbox extends StatelessWidget {
  const Checkbox({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFD3D6DA)),
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xFF199A8E),
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(3.5, 4.5, 3.5, 2.5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(3.6),
          child: SizedBox(
            width: 14,
            height: 14,
            child: SvgPicture.asset(
              'assets/vectors/iconactiondone_24_px_x2.svg',
            ),
          ),
        ),
      ),
    );
  }
}