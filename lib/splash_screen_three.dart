import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreenThree extends StatelessWidget {
  const SplashScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: screenWidth,
            height: screenHeight,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black87,
                  const Color(0xFF231815),
                  const Color(0xFF402018),
                ],
                stops: [0.0, 0.75, 1.0],
              ),
            ),
          ),
          Container(
            width: screenWidth,
            height: screenHeight,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 60),

                      Transform(
                        transform: Matrix4.diagonal3Values(
                            1, 1.1, 1),
                        alignment: Alignment.center,
                        child: Text(
                          'Where',
                          style: GoogleFonts.titilliumWeb(
                            color: Colors.grey[200],
                            fontSize: 60,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.06,
                            height: 1.6,
                          ),
                        ),
                      ),
                      Transform(
                        transform: Matrix4.diagonal3Values(
                            1, 1.1, 1), // Scale vertically by 1.3x
                        alignment: Alignment.center,
                        child:Text(
                          'CURIOSITY',
                          style: GoogleFonts.titilliumWeb(
                            color: Colors.grey[400],
                            fontSize: 60,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.3,
                            height: 0.6,
                          ),
                        ),
                      ),
                      Transform(
                        transform: Matrix4.diagonal3Values(
                            1, 1.1, 1), // Scale vertically by 1.3x
                        alignment: Alignment.center,
                        child:Text(
                          'FINDS ITS',
                          style: GoogleFonts.titilliumWeb(
                            color: Colors.grey[500],
                            fontSize: 60,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.1,
                            height: 1.6,
                          ),
                        ),
                      ),
                      Transform(
                        transform: Matrix4.diagonal3Values(
                            1, 1.1, 1),
                        alignment: Alignment.center,
                        child:Text(
                          'CROWD',
                          style: GoogleFonts.titilliumWeb(
                            color: Colors.grey[600],
                            fontSize: 60,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1.0,
                            height: 0.6,
                          ),
                        ),
                      ),

                      Container(
                        height: 60,
                        alignment: Alignment.topLeft,
                        margin: const EdgeInsets.only(top: 5),
                        child: ShaderMask(
                          shaderCallback: (bounds) {
                            return LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.grey[500]!.withOpacity(0.5),
                                Colors.grey[800]!.withOpacity(0.3),
                                //  Colors.transparent,
                              ],
                            ).createShader(bounds);
                          },
                          blendMode: BlendMode.srcIn,
                          child: Transform(
                            alignment: Alignment.topLeft,
                            transform: Matrix4.identity()
                              ..scale(1.0, -1.0)
                              ..translate(0.0, -61.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'CROWD',
                                      style: GoogleFonts.titilliumWeb(
                                        color: Colors.grey[300],
                                        fontSize: 60,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 1.2,
                                        height: 0.9,
                                      ),
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      Container(
                        height: 160,
                        alignment: Alignment.topLeft,
                        margin: const EdgeInsets.only(top: 4),
                        child: ShaderMask(
                          shaderCallback: (bounds) {
                            return LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.grey[600]!.withOpacity(0.3),
                                Colors.grey[800]!.withOpacity(0.1),
                                Colors.transparent,
                              ],
                            ).createShader(bounds);
                          },
                          blendMode: BlendMode.srcIn,
                          child: Transform(
                            alignment: Alignment.topLeft,
                            transform: Matrix4.identity()
                              ..scale(1.0, -1.0)
                              ..translate(0.0, -61.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'CR',
                                      style: GoogleFonts.titilliumWeb(
                                        color: Colors.grey[50],
                                        fontSize: 60,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 1.2,
                                        height: 1.2,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      const Spacer(),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 40.0),
                        child: Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 55,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.grey[50]!,
                                    Colors.grey[200]!,
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    spreadRadius: 0,
                                    blurRadius: 6,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                            ),


                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Container(
                                width: double.infinity,
                                height: 55,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      const Color(0xFF221711).withOpacity(0.3),
                                      const Color(0xA0402018).withOpacity(0.2),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            Container(
                              width: double.infinity,
                              height: 54,
                              alignment: Alignment.center,
                              child: Text(
                                'EXPLORE NOW',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    right: 15,
                    left: 10,
                    bottom: 90,
                    child: Image.asset(
                      'assets/images/idea_box.png',
                      height: 400,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
