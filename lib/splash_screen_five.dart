import 'package:flutter/material.dart';
import 'dart:math';

class SplashScreenFive extends StatelessWidget {
  const SplashScreenFive({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.6),
      body: Stack(
        children: [
          // Left curly brace icon
          PositionedWidget(
            top: height * 0.10,
            left: width * 0.05,
            child:  CustomText(
              text: '{',
              color: Colors.green[400]!,
              fontSize: 60,

            ),
          ),

          // Star icon
          PositionedWidget(
            top: height * 0.10,
            right: width * 0.08,
            child:  Icon(
              Icons.star,
              color: Colors.amber[300],
              size: 38,
            ),
          ),

          // Blue curved line
          PositionedWidget(
            top: height * 0.40,
            left: 0,
            child: CustomPaint(
              size: Size(width, height * 0.2),
              painter: CurvedLinePainter(Colors.blue.shade600),
            ),
          ),

          // Images section - Main layout
          PositionedWidget(
            top: height * 0.10,
            left: 0,
            right: 0,
            child: SizedBox(
              height: height * 0.60,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Main center image (largest)
                  PositionedWidget(
                    top: height * 0.17,
                    child: CircleImageContainer(
                      imageUrl: 'assets/images/img2.png',
                      size: width * 0.70,
                      borderWidth: 8,
                    ),
                  ),

                  // Top right image (medium) - crescent moon shape
                  PositionedWidget(
                    right: width * 0.15,
                    top: height * 0.035,
                    child: CircleImageContainer2(
                      imageUrl: 'assets/images/img1.png',
                      size: width * 0.4,
                      borderWidth: 6,
                      isComplete: false,
                      startAngle: 470,
                      sweepAngle: 0,
                    ),
                  ),

                  // Bottom left image (small) - crescent moon shape
                  PositionedWidget(
                    left: width * 0.16,
                    top: height * 0.09,
                    child: CircleImageContainer(
                      imageUrl: 'assets/images/img3.png',
                      size: width * 0.25,
                      borderWidth: 5,
                      isComplete: false,
                      startAngle: 423,
                      sweepAngle: 0,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Dots
          PositionedWidget(
            top: height * 0.65,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                    (index) => CircleDot(
                  color: Colors.purple.shade300,
                  size: 8,
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                ),
              ),
            ),
          ),

          // Text
          PositionedWidget(
            top: height * 0.68,
            left: 0,
            right: 0,
            child: const CustomText(
              text: 'Where skills meet\nopportunity',
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
              height: 1.2,
              textAlign: TextAlign.center,
            ),
          ),

          // Buttons
          PositionedWidget(
            bottom: height * 0.02,
            left: width * 0.1,
            right: width * 0.1,
            child: Column(
              children: [
                // Find a specialist button
                CustomButton(
                  text: 'Find a specialist',
                  textColor: Colors.amber[300]!,
                  backgroundColor: Colors.transparent,
                  borderColor: Colors.amber[300],
                ),
                const SizedBox(height: 10),
                // Find job button
                CustomButton(
                  text: 'Find job',
                  textColor: Colors.black,
                  backgroundColor: Colors.amber[300]!,
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Custom reusable widgets

class PositionedWidget extends StatelessWidget {
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final Widget child;

  const PositionedWidget({
    super.key,
    this.top,
    this.bottom,
    this.left,
    this.right,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: child,
    );
  }
}

class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final double? height;
  final TextAlign? textAlign;

  const CustomText({
    super.key,
    required this.text,
    required this.color,
    required this.fontSize,
    this.fontWeight = FontWeight.normal,
    this.height,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        height: height,
      ),
    );
  }
}

class CircleDot extends StatelessWidget {
  final Color color;
  final double size;
  final EdgeInsetsGeometry? margin;

  const CircleDot({
    super.key,
    required this.color,
    required this.size,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final Color? borderColor;
  final double height;
  final double borderRadius;

  const CustomButton({
    super.key,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
    this.borderColor,
    this.height = 50,
    this.borderRadius = 13,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: borderColor != null ? Border.all(color: borderColor!, width: 2) : null,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class CircleImageContainer extends StatelessWidget {
  final String imageUrl;
  final double size;
  final double borderWidth;
  final bool isComplete;
  final double startAngle;
  final double sweepAngle;

  const CircleImageContainer({
    super.key,
    required this.imageUrl,
    required this.size,
    this.borderWidth = 5,
    this.isComplete = true,
    this.startAngle = 0,
    this.sweepAngle = 360,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Circular border
          Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              // border: Border.all(color: Colors.black, width: borderWidth),
            ),
          ),
          // Clipped image
          ClipPath(
            clipper: isComplete
                ? null
                : CrescentClipper(startAngle: startAngle, sweepAngle: sweepAngle),
            child: ClipOval(
              child: Image.asset(
                imageUrl,
                width: size,
                height: size,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                const Center(child: Icon(Icons.error)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CrescentClipper extends CustomClipper<Path> {
  final double startAngle;
  final double sweepAngle;

  CrescentClipper({required this.startAngle, required this.sweepAngle});

  @override
  Path getClip(Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width /1;
    final path = Path();

    // Outer circle
    path.addOval(Rect.fromCircle(center: center, radius: radius));

    // Inner offset circle to cut out crescent
    final offsetAngleRad = radians(startAngle);
    final dx = cos(offsetAngleRad) * radius * 1.3;
    final dy = sin(offsetAngleRad) * radius * 1.2;

    final secondCenter = Offset(center.dx + dx+3, center.dy + dy+3);
    path.addOval(Rect.fromCircle(center: secondCenter, radius: radius * 1.0));

    path.fillType = PathFillType.evenOdd;
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;

  double radians(double degrees) => degrees * pi / 180;
}
class CircleImageContainer2 extends StatelessWidget {
  final String imageUrl;
  final double size;
  final double borderWidth;
  final bool isComplete;
  final double startAngle;
  final double sweepAngle;

  const CircleImageContainer2({
    super.key,
    required this.imageUrl,
    required this.size,
    this.borderWidth = 5,
    this.isComplete = true,
    this.startAngle = 0,
    this.sweepAngle = 360,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Circular border
          Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              // border: Border.all(color: Colors.black, width: borderWidth),
            ),
          ),
          // Clipped image
          ClipPath(
            clipper: isComplete
                ? null
                : CrescentClipper2(startAngle: startAngle, sweepAngle: sweepAngle),
            child: ClipOval(
              child: Image.asset(
                imageUrl,
                width: size,
                height: size,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                const Center(child: Icon(Icons.error)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CrescentClipper2 extends CustomClipper<Path> {
  final double startAngle;
  final double sweepAngle;

  CrescentClipper2({required this.startAngle, required this.sweepAngle});

  @override
  Path getClip(Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width /1.3;
    final path = Path();

    // Outer circle
    path.addOval(Rect.fromCircle(center: center, radius: radius));

    // Inner offset circle to cut out crescent
    final offsetAngleRad = radians(startAngle);
    final dx = cos(offsetAngleRad) * radius * 1.3;
    final dy = sin(offsetAngleRad) * radius * 1.2;

    final secondCenter = Offset(center.dx + dx+3, center.dy + dy+3);
    path.addOval(Rect.fromCircle(center: secondCenter, radius: radius * 1.0));

    path.fillType = PathFillType.evenOdd;
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;

  double radians(double degrees) => degrees * pi / 180;
}

class CurvedLinePainter extends CustomPainter {
  final Color color;

  CurvedLinePainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

    final path = Path();
    path.moveTo(0, size.height * 0.6);
    path.quadraticBezierTo(
        size.width * 0.5, -size.height * 0.2, size.width, size.height * 0.3);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}