import 'package:flutter/material.dart';

class SnackBackShape2 extends CustomPainter {
  final Color color;

  SnackBackShape2({required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color;
    canvas.drawCircle(Offset(size.width * 0.5304259, size.height * 0.05404343),
        size.width * 0.06885533, paint0Fill);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = color;
    canvas.drawCircle(Offset(size.width * 0.9711037, size.height * 0.2774227),
        size.width * 0.02754215, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.9662519, size.height * 0.06410058);
    path_2.cubicTo(
        size.width * 0.9888667,
        size.height * 0.1078390,
        size.width * 0.9620296,
        size.height * 0.1576866,
        size.width * 0.9063037,
        size.height * 0.1754384);
    path_2.cubicTo(
        size.width * 0.9001556,
        size.height * 0.1773965,
        size.width * 0.8939111,
        size.height * 0.1788826,
        size.width * 0.8876444,
        size.height * 0.1799174);
    path_2.cubicTo(
        size.width * 0.8527407,
        size.height * 0.1856779,
        size.width * 0.8137704,
        size.height * 0.1935122,
        size.width * 0.7950963,
        size.height * 0.2173576);
    path_2.cubicTo(
        size.width * 0.7732963,
        size.height * 0.2451983,
        size.width * 0.7852148,
        size.height * 0.2813529,
        size.width * 0.8174074,
        size.height * 0.3020762);
    path_2.cubicTo(
        size.width * 0.8815926,
        size.height * 0.3433965,
        size.width * 0.9335333,
        size.height * 0.3978576,
        size.width * 0.9658000,
        size.height * 0.4628994);
    path_2.cubicTo(
        size.width * 1.065970,
        size.height * 0.6648140,
        size.width * 0.9386296,
        size.height * 0.8922326,
        size.width * 0.6813748,
        size.height * 0.9708547);
    path_2.cubicTo(
        size.width * 0.4241215,
        size.height * 1.049477,
        size.width * 0.1343711,
        size.height * 0.9495291,
        size.width * 0.03420081,
        size.height * 0.7476163);
    path_2.cubicTo(
        size.width * -0.06596985,
        size.height * 0.5457017,
        size.width * 0.06137126,
        size.height * 0.3182820,
        size.width * 0.3186252,
        size.height * 0.2396593);
    path_2.cubicTo(
        size.width * 0.4309881,
        size.height * 0.2053186,
        size.width * 0.5495511,
        size.height * 0.2050453,
        size.width * 0.6558081,
        size.height * 0.2324558);
    path_2.cubicTo(
        size.width * 0.6942956,
        size.height * 0.2423837,
        size.width * 0.7381748,
        size.height * 0.2329767,
        size.width * 0.7593852,
        size.height * 0.2058866);
    path_2.lineTo(size.width * 0.7672741, size.height * 0.1958140);
    path_2.cubicTo(
        size.width * 0.7829185,
        size.height * 0.1758378,
        size.width * 0.7756815,
        size.height * 0.1501110,
        size.width * 0.7644519,
        size.height * 0.1283855);
    path_2.cubicTo(
        size.width * 0.7418296,
        size.height * 0.08464651,
        size.width * 0.7686741,
        size.height * 0.03479907,
        size.width * 0.8244000,
        size.height * 0.01704738);
    path_2.cubicTo(
        size.width * 0.8801259,
        size.height * -0.0007042791,
        size.width * 0.9436370,
        size.height * 0.02036221,
        size.width * 0.9662519,
        size.height * 0.06410058);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = color;
    canvas.drawPath(path_2, paint2Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
