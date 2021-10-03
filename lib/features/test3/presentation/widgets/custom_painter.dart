// Created by Muhamad Fauzi Ridwan on 03/10/21.

part of '_widgets.dart';

class CurvePainterCircle extends CustomPainter {
  CurvePainterCircle({
    required this.colors,
    required this.angle,
  });

  final double angle;
  final List<Color> colors;

  @override
  void paint(Canvas canvas, Size size) {
    final shadowPaint = Paint()
      ..color = Colors.white.withOpacity(0.4)
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 6;
    final shadowPaintCenter = Offset(size.width / 2, size.height / 2);
    final shadowPaintRadius =
        math.min(size.width / 2, size.height / 2) - (6 / 2);
    canvas.drawArc(
        Rect.fromCircle(center: shadowPaintCenter, radius: shadowPaintRadius),
        degreeToRadians(278),
        degreeToRadians(360 - (365 - angle)),
        false,
        shadowPaint);

    shadowPaint
      ..color = Colors.white.withOpacity(0.3)
      ..strokeWidth = 6;
    canvas.drawArc(
        Rect.fromCircle(center: shadowPaintCenter, radius: shadowPaintRadius),
        degreeToRadians(278),
        degreeToRadians(360 - (365 - angle)),
        false,
        shadowPaint);

    shadowPaint
      ..color = Colors.white.withOpacity(0.2)
      ..strokeWidth = 6;
    canvas.drawArc(
        Rect.fromCircle(center: shadowPaintCenter, radius: shadowPaintRadius),
        degreeToRadians(278),
        degreeToRadians(360 - (365 - angle)),
        false,
        shadowPaint);

    shadowPaint
      ..color = Colors.white.withOpacity(0.1)
      ..strokeWidth = 6;
    canvas.drawArc(
        Rect.fromCircle(center: shadowPaintCenter, radius: shadowPaintRadius),
        degreeToRadians(278),
        degreeToRadians(360 - (365 - angle)),
        false,
        shadowPaint);

    final paint = Paint()
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..color = OrdoColors.greenTukode
      ..strokeWidth = 6;
    final center = Offset(size.width / 2, size.height / 2);
    final radius = math.min(size.width / 2, size.height / 2) - (14 / 2);

    canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        degreeToRadians(120),
        degreeToRadians(360 - (365 - angle)),
        false,
        paint);

    Paint()
      ..color = Colors.white
      ..strokeWidth = 6;
    canvas.save();

    final centerToCircle = size.width / 2;
    canvas
      ..save()
      ..translate(centerToCircle, centerToCircle)
      ..rotate(degreeToRadians(angle + 2))
      ..save()
      ..translate(0, -centerToCircle + 14 / 2)
      ..restore()
      ..restore()
      ..restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

  double degreeToRadians(double degree) {
    final radian = (math.pi / 180) * degree;
    return radian;
  }
}
