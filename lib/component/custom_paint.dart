import 'package:flutter/cupertino.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.02051857, size.height * 0.6546417);
    path_0.cubicTo(
        size.width * -0.04396071,
        size.height * 0.4415123,
        size.width * 0.1427911,
        size.height * 0.2295471,
        size.width * 0.4729429,
        size.height * 0.1411380);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(size.width, size.height);
    path_0.lineTo(size.width * 0.1250000, size.height);
    path_0.lineTo(size.width * 0.02051857, size.height * 0.6546417);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = const Color(0xff5669FF).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
