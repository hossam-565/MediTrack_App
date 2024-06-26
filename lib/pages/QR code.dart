import 'package:flutter/material.dart';

void main() {
  runApp(const FigmaToCodeApp());
}

// Generated by: https://www.figma.com/community/plugin/842128343887142055/
class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          QrCodePatient(),
        ]),
      ),
    );
  }
}

class QrCodePatient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 313,
            height: 295,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Colors.white.withOpacity(0.6000000238418579),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(29),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 46,
                  top: 30,
                  child: Container(
                    width: 221.45,
                    height: 233.91,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 18,
                          top: 18,
                          child: Container(
                            width: 185,
                            height: 196,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/img_13.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
