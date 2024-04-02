import 'package:flutter/material.dart';
import 'package:quiz_app_3/src/core/util/theme.dart';

class CustomHalfCircleClip extends CustomClipper<Path> {
  final double radius;

  const CustomHalfCircleClip({required this.radius});

  @override
  Path getClip(Size size) {
    Path path = Path();
    path
      ..moveTo(size.width / 2, 0)
      ..arcToPoint(Offset(size.width, size.height),
          radius: Radius.circular(radius))
      ..lineTo(0, size.height)
      ..arcToPoint(
        Offset(size.width / 2, 0),
        radius: Radius.circular(radius),
      )
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class HalfCircleStack extends StatelessWidget {
  const HalfCircleStack({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: AppColors.purple,
        ),
        child: Stack(
          children: [
            Positioned(
              top: 75,
              child: RotatedBox(
                quarterTurns: 45,
                child: ClipPath(
                  clipper: const CustomHalfCircleClip(radius: 45),
                  child: Container(
                      width: 90, height: 45, color: AppColors.lowPurple),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 70,
              child: RotatedBox(
                quarterTurns: 90,
                child: ClipPath(
                  clipper: const CustomHalfCircleClip(radius: 50),
                  child: Container(
                      width: 100, height: 50, color: AppColors.lowPurple),
                ),
              ),
            ),
            const Positioned(
              top: 30,
              right: 100,
              child: SizedBox(
                height: 40,
                width: 40,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.lowPurple),
                ),
              ),
            ),
            Positioned(
              top: 100,
              right: 0,
              child: RotatedBox(
                quarterTurns: 135,
                child: ClipPath(
                  clipper: const CustomHalfCircleClip(radius: 50),
                  child: Container(
                    width: 100,
                    height: 50,
                    color: AppColors.lowPurple,
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
