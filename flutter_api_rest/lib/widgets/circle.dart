import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  final double size;

  Circle({Key key, @required this.size})
      : assert(size != null && size > 0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.orange,
      ),
    );
  }
}
