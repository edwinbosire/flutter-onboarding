import 'dart:math';

import 'package:flutter/material.dart';
import 'package:onboarding/constants.dart';

class OnboardingPageIndicator extends StatelessWidget {
  final int currentPage;
  final Widget child;
  final double angle;
  const OnboardingPageIndicator({this.currentPage, this.child, this.angle});

  Color _getPageIndicatorColor(int pageIndex) => currentPage > pageIndex ? kWhite : kWhite.withOpacity(0.25);
  double get indicatorGap => pi / 12;
  double get indicatorLength => pi / 3;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomPaint(
        painter: _OnboardingPageIndicatorPainter(
          color: _getPageIndicatorColor(0),
          startAngle: (4 * indicatorLength) - (indicatorLength + indicatorGap) + angle,
          indicatorLength: indicatorLength,
        ),
        child: CustomPaint(
          painter: _OnboardingPageIndicatorPainter(
            color: _getPageIndicatorColor(1),
            startAngle: 4 * indicatorLength + angle,
            indicatorLength: indicatorLength,
          ),
          child: CustomPaint(
            painter: _OnboardingPageIndicatorPainter(
              color: _getPageIndicatorColor(2),
              startAngle: (4 * indicatorLength) + (indicatorLength + indicatorGap) + angle,
              indicatorLength: indicatorLength,
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}

class _OnboardingPageIndicatorPainter extends CustomPainter {
  final Color color;
  final double startAngle;
  final double indicatorLength;

  _OnboardingPageIndicatorPainter({
    @required this.color,
    @required this.startAngle,
    @required this.indicatorLength,
  });

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0;

    canvas.drawArc(
        Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 2),
          radius: (size.shortestSide + 12.0) / 2,
        ),
        startAngle,
        indicatorLength,
        false,
        paint);
  }

  @override
  bool shouldRepaint(_OnboardingPageIndicatorPainter oldDelegate) {
    return this.color != oldDelegate.color || this.startAngle != oldDelegate.startAngle;
  }
}
