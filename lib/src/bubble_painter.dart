part of fancy_snackbar;

/// this is the custom shape for the floating bubble in the snackbar.
class BubblePainter extends CustomPainter {
  final Color color;

  BubblePainter({required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5000029, size.height * 0.9031579);
    path_0.cubicTo(
        size.width * 0.7707800,
        size.height * 0.9031579,
        size.width * 0.9902886,
        size.height * 0.7009789,
        size.width * 0.9902886,
        size.height * 0.4515789);
    path_0.cubicTo(size.width * 0.9902886, size.height * 0.2021789,
        size.width * 0.7707800, 0, size.width * 0.5000029, 0);
    path_0.cubicTo(
        size.width * 0.2292257,
        0,
        size.width * 0.009716800,
        size.height * 0.2021789,
        size.width * 0.009716800,
        size.height * 0.4515789);
    path_0.cubicTo(
        size.width * 0.009716800,
        size.height * 0.5920079,
        size.width * 0.07931071,
        size.height * 0.7174658,
        size.width * 0.1884643,
        size.height * 0.8002895);
    path_0.cubicTo(
        size.width * 0.1886386,
        size.height * 0.8004211,
        size.width * 0.1884843,
        size.height * 0.8006776,
        size.width * 0.1882700,
        size.height * 0.8006105);
    path_0.lineTo(size.width * 0.1882700, size.height * 0.8006105);
    path_0.cubicTo(
        size.width * 0.1881400,
        size.height * 0.8005697,
        size.width * 0.1880029,
        size.height * 0.8006592,
        size.width * 0.1880029,
        size.height * 0.8007868);
    path_0.lineTo(size.width * 0.1880029, size.height * 0.9408447);
    path_0.cubicTo(
        size.width * 0.1880029,
        size.height * 0.9800447,
        size.width * 0.2328629,
        size.height * 1.005488,
        size.width * 0.2708671,
        size.height * 0.9878421);
    path_0.lineTo(size.width * 0.4424600, size.height * 0.9081737);
    path_0.cubicTo(
        size.width * 0.4519371,
        size.height * 0.9037724,
        size.width * 0.4625543,
        size.height * 0.9019658,
        size.width * 0.4731529,
        size.height * 0.9024921);
    path_0.cubicTo(
        size.width * 0.4820429,
        size.height * 0.9029342,
        size.width * 0.4909943,
        size.height * 0.9031579,
        size.width * 0.5000029,
        size.height * 0.9031579);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color;
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
