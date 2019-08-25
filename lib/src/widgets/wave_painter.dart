import 'package:flutter/material.dart';
import 'package:lunch_time_app/src/widgets/theme.dart';

class WavePainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    var paint = Paint();

    // Initial point is 0,0
    path.lineTo(0, size.height); //Draws a path from the previous point to this point
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    //path.lineTo(0, size.height * 0.1);


    path.quadraticBezierTo(size.width* 0.95, size.height* 0.02, size.width* 0.9, size.height* 0.1);
    path.quadraticBezierTo(size.width* 0.8, size.height* 0.1,   size.width* 0.6, size.height* 0.2);
    path.quadraticBezierTo(size.width* 0.4, size.height* 0.1,   size.width* 0.25, size.height* 0.2);
    path.quadraticBezierTo(size.width* 0.1, size.height* 0.4,   size.width* 0, size.height * 0.3);

    path.close();

    paint.color = AppTheme.peach;
    canvas.drawPath(path, paint);


  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }


}