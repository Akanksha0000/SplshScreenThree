
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreenFour extends StatelessWidget {
  const SplashScreenFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double textScaleFactor = size.width / 380;

    return Scaffold(
      backgroundColor: Color(0xFF1A1A1A),
      body: SafeArea(
        bottom: false,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xFF1A1A1A),
          ),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: _buildBackgroundTexts(size),
              ),
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.transparent,
                        Colors.transparent,
                        Colors.transparent,
                        Color(0xFF89bbf0).withOpacity(0.3),
                        Color(0xf7236ad4),
                        Color(0xFD1646C0),
                      ],

                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(90),
                      topRight: Radius.circular(90),
                    ),
                  ),
                ),
              ),

              SafeArea(
                child: LayoutBuilder(builder: (context, constraints) {
                  return Stack(
                    fit: StackFit.expand,
                    children: [
                      // Main content column
                      Column(
                        children: [
                          const Spacer(),

                          SizedBox(
                            height: constraints.maxHeight * 0.4,
                            width: constraints.maxWidth,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                // Image / CustomPaint would go here
                                // Image.network(
                                //   'https://cdn.pixabay.com/photo/2021/09/08/05/38/network-6605645_1280.png',
                                //   width: size.width * 0.8,
                                //   fit: BoxFit.contain,
                                // ),
                              ],
                            ),
                          ),

                          const Spacer(),
                        ],
                      ),

                      Positioned(
                        bottom: constraints.maxHeight * 0.15,
                        left: 0,
                        right: 0,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Column(
                            children: [
                              textBase('WHERE IDEAS',context),
                              SizedBox(height:10,),
                              textBase('LAUNCH',context),
                              SizedBox(height:25),
                              Text(
                                'Fuel innovation by sharing, discovering,',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                'and collaborating worldwide',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Get Started button at bottom with safe padding
                      Positioned(
                        bottom: constraints.maxHeight * 0.01,
                        left: 0,
                        right: 0,
                        child: Column(
                          children: [
                            Icon(
                              Icons.keyboard_double_arrow_up_sharp,
                              color: Colors.white.withOpacity(0.7),
                              size: 31 * textScaleFactor,
                            ),
                            SizedBox(height:2),
                            Text(
                              'Get Started',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600

                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget textBase(String text, BuildContext context){
    return Text(text,
      style: TextStyle(
          color: Colors.white,
          fontSize: 48 * MediaQuery.of(context).size.width / 375,
          fontWeight: FontWeight.w900,
          letterSpacing: 0.1,
          height: 0.8
      ),
      textAlign: TextAlign.center,
    );

  }

  Widget _buildBackgroundTexts(Size size) {
    final double baseSize = size.width;
    final List<double> positions = [
      0.06,
      0.28,0.5,0.72
    ]; // Relative positions

    return Stack(
      // alignment: Alignment.center,
      children: positions.map((position) {
        return Positioned(
          top: size.height * position,
          left: 0,
          right: 0,
          child: Transform(
            transform: Matrix4.identity()..scale(1.6, 0.9),
            alignment: Alignment.center,
            child: Text(
              'IDEA',
              textAlign: TextAlign.center,
              style: GoogleFonts.anton(
                textStyle: TextStyle(
                  fontSize: 120,
                  // fontWeight: FontWeight.w900,
                  letterSpacing: 6,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 2
                    ..color = Colors.white12,
                ),
              ),
            ),
          ),
          // )
        );
      }).toList(),
    );
  }
}
