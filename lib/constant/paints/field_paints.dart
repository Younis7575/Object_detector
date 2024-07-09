import 'dart:ui' as ui;

import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree
// CustomPaint(
// size: Size(WIDTH, (WIDTH*0.2304147465437788).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
// painter: RPSCustomPainter(),
// )

//Copy this CustomPainter code to the Bottom of the File
class PaintTextFormField extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.009216590;
    paint_0_stroke.color = Colors.white.withOpacity(1.0);
    canvas.drawLine(
        Offset(size.width * 0.1290581, size.height * 0.02000040),
        Offset(size.width * 0.9954147, size.height * 0.04087800),
        paint_0_stroke);

    Paint paint_1_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.009216590;
    paint_1_stroke.color = Color(0xff00FEFB).withOpacity(1.0);
    canvas.drawLine(
        Offset(size.width * 0.1290581, size.height * 0.02000040),
        Offset(size.width * 0.9954147, size.height * 0.04087800),
        paint_1_stroke);

    Paint paint_2_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.009216590;
    paint_2_stroke.color = Color(0xff0DFFFF).withOpacity(1.0);
    canvas.drawLine(
        Offset(size.width * 0.9907834, size.height * 0.02000000),
        Offset(size.width * 0.9907834, size.height * 0.6600000),
        paint_2_stroke);

    Paint paint_3_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.009216590;
    paint_3_stroke.color = Color(0xff0CF9FF).withOpacity(1.0);
    canvas.drawLine(
        Offset(size.width * 0.9898618, size.height * 0.6520000),
        Offset(size.width * 0.9345622, size.height * 0.9720000),
        paint_3_stroke);

    Paint paint_4_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.009216590;
    paint_4_stroke.color = Color(0xff02F3EC).withOpacity(1.0);
    canvas.drawLine(
        Offset(size.width * 0.009216590, size.height * 0.9600000),
        Offset(size.width * 0.009216590, size.height * 0.3200000),
        paint_4_stroke);

    Paint paint_5_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.009216590;
    paint_5_stroke.color = Color(0xff0BF1EF).withOpacity(1.0);
    canvas.drawLine(
        Offset(size.width * 0.006867281, size.height * 0.3427940),
        Offset(size.width * 0.1312912, size.height * 0.02279420),
        paint_5_stroke);

    Paint paint_6_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.009216590;
    paint_6_stroke.color = Color(0xff00FEFA).withOpacity(1.0);
    canvas.drawLine(
        Offset(size.width * 0.004608295, size.height * 0.9600000),
        Offset(size.width * 0.9400922, size.height * 0.9600000),
        paint_6_stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
