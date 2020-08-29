import 'package:flutter/cupertino.dart';
import 'dart:math' as math;

class Responsive {
  double _width, _height, _diagonal;

  double get width => _width;
  double get height => _height;
  double get diagonal => _diagonal;

  //funcion statica que retorna una instancia de la clase responsive
  static Responsive of(BuildContext context) => Responsive(context);

  Responsive(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    this._width = size.width;
    this._height = size.height;

    //c2+ a2+b2 => c = srt(a2+b2)
    this._diagonal = math.sqrt(math.pow(_width, 2) + math.pow(_height, 2));
  }

  double wp(double porcent) => _width * porcent / 100;
  double hp(double porcent) => _height * porcent / 100;
  double dp(double porcent) => _diagonal * porcent / 100;
}
