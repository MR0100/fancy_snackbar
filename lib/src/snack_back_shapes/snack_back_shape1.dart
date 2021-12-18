import 'package:flutter/material.dart';

class SnackBackShape1 extends CustomPainter {
  final Color color;

  SnackBackShape1({required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color;
    canvas.drawCircle(Offset(size.width * 0.8609272, size.height * 0.05365854),
        size.width * 0.07284768, paint0Fill);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = color;
    canvas.drawCircle(Offset(size.width * 0.7298344, size.height * 0.2103351),
        size.width * 0.02754927, paint1Fill);

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = color;
    canvas.drawCircle(Offset(size.width * 0.3906755, size.height * 0.03304044),
        size.width * 0.01836616, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.8335828, size.height * 0.3567707);
    path_3.cubicTo(
        size.width * 1.039278,
        size.height * 0.4924732,
        size.width * 1.056682,
        size.height * 0.7253073,
        size.width * 0.8724503,
        size.height * 0.8768244);
    path_3.cubicTo(
        size.width * 0.6882185,
        size.height * 1.028337,
        size.width * 0.3721185,
        size.height * 1.041156,
        size.width * 0.1664199,
        size.height * 0.9054537);
    path_3.cubicTo(
        size.width * -0.03927907,
        size.height * 0.7697512,
        size.width * -0.05668199,
        size.height * 0.5369171,
        size.width * 0.1275490,
        size.height * 0.3854020);
    path_3.cubicTo(
        size.width * 0.2159106,
        size.height * 0.3127327,
        size.width * 0.3346060,
        size.height * 0.2719678,
        size.width * 0.4569073,
        size.height * 0.2641922);
    path_3.cubicTo(
        size.width * 0.4853722,
        size.height * 0.2623829,
        size.width * 0.5088384,
        size.height * 0.2455971,
        size.width * 0.5087841,
        size.height * 0.2245522);
    path_3.lineTo(size.width * 0.5087629, size.height * 0.2163015);
    path_3.cubicTo(
        size.width * 0.5087364,
        size.height * 0.2062137,
        size.width * 0.4999728,
        size.height * 0.1975049,
        size.width * 0.4896424,
        size.height * 0.1908824);
    path_3.cubicTo(
        size.width * 0.4599689,
        size.height * 0.1718595,
        size.width * 0.4568497,
        size.height * 0.1387195,
        size.width * 0.4826748,
        size.height * 0.1168624);
    path_3.cubicTo(
        size.width * 0.5085007,
        size.height * 0.09500537,
        size.width * 0.5534914,
        size.height * 0.09270780,
        size.width * 0.5831649,
        size.height * 0.1117302);
    path_3.cubicTo(
        size.width * 0.6128391,
        size.height * 0.1307532,
        size.width * 0.6159583,
        size.height * 0.1638927,
        size.width * 0.5901325,
        size.height * 0.1857498);
    path_3.cubicTo(
        size.width * 0.5879331,
        size.height * 0.1876112,
        size.width * 0.5855947,
        size.height * 0.1893312,
        size.width * 0.5831391,
        size.height * 0.1909078);
    path_3.cubicTo(
        size.width * 0.5655967,
        size.height * 0.2021683,
        size.width * 0.5468470,
        size.height * 0.2159220,
        size.width * 0.5468914,
        size.height * 0.2330615);
    path_3.cubicTo(
        size.width * 0.5469371,
        size.height * 0.2508473,
        size.width * 0.5653881,
        size.height * 0.2655180,
        size.width * 0.5891517,
        size.height * 0.2686722);
    path_3.cubicTo(
        size.width * 0.6771854,
        size.height * 0.2803576,
        size.width * 0.7620596,
        size.height * 0.3095859,
        size.width * 0.8335828,
        size.height * 0.3567707);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = color;
    canvas.drawPath(path_3, paint3Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
