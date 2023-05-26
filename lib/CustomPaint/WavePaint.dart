import 'package:flutter/material.dart';
import 'dart:math';

class WavePain extends StatefulWidget {
  @override
  _WavePainState createState() => _WavePainState();
}

class _WavePainState extends State<WavePain> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: Wave(),
      size: Size(double.infinity, double.infinity),
    );
  }
}

class Wave extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

//   double width = size.width;
//   double height = size.height;

//   Paint paint = Paint();
//
//
//   Path curved1 = Path();
//
//   curved1.moveTo(0,height/2);
//   curved1.quadraticBezierTo(width * 0.20, height/2 + 90, width/2+90, height/2+15);
//   curved1.quadraticBezierTo(width*0.9, height/2, width, height/2 + 50);
//   curved1.lineTo(width, 0);
//   curved1.lineTo(0, 0);
//   paint.color = Colors.lightBlueAccent;
//   canvas.drawPath(curved1, paint);
//
//   Path curved = Path();
//
//   curved.moveTo(0,height/2);
//
//   curved.quadraticBezierTo(width * 0.20, height/2 - 90, width/2, height/2);
//   curved.quadraticBezierTo(width/2+90, height/2 + 70, width, height/2 - 80);
//   curved.lineTo(width, 0);
//   curved.lineTo(0, 0);
//   paint.color = Colors.blue;
//   canvas.drawPath(curved, paint);



//   Path halfCircle2 = Path();
//
//   halfCircle2.quadraticBezierTo(width * 0.25 ,height * 0.2, width * 0.5, height * 0.2);
//   halfCircle2.quadraticBezierTo(width * 0.7 ,height * 0.2, width, 0.0);
//
//   paint.color = Colors.green;
//
//
//   canvas.drawPath(halfCircle2, paint);
//
//   Path halfCircle1 = Path();
//
//   halfCircle1.quadraticBezierTo(width * 0.25 ,height * 0.15, width * 0.5, height * 0.15);
//   halfCircle1.quadraticBezierTo(width * 0.7 ,height * 0.15, width, 0.0);
//
//   paint.color = Colors.amber;
//
//
//   canvas.drawPath(halfCircle1, paint);
//
//   Path halfCircle = Path();
//
//   halfCircle.quadraticBezierTo(width * 0.25 ,height * 0.1, width * 0.5, height * 0.1);
//   halfCircle.quadraticBezierTo(width * 0.70 ,height * 0.1, width, 0.0);
//
//   paint.color = Colors.blue;
//
//
//   canvas.drawPath(halfCircle, paint);


    Rect rect = Rect.fromLTWH(0.0, 0.0, size.width, size.height);
    Path path = Path()..arcTo(rect, pi, -pi, true);
    canvas.drawPath(
        path,
        Paint()
          ..color = Colors.orange
          ..strokeWidth = 3.0
          ..style = PaintingStyle.stroke);
    path.arcTo(rect, -pi, pi, true);
    canvas.drawPath(path, Paint()
    ..color = Colors.amber
        ..strokeWidth = 3.0
        ..style = PaintingStyle.stroke
    );

//    canvas.drawArc(
//        rect,
//        0.0,
//        pi / 2,
//        false,
//        Paint()
//          ..color = Colors.teal
//          ..strokeWidth = 3.0
//          ..style = PaintingStyle.stroke);


  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return oldDelegate != this;
  }

}