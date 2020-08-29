import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconContainer extends StatelessWidget {
  const IconContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 10.0),
        ],
      ),
      padding: EdgeInsets.all(20),
      child: Center(
        child: SvgPicture.asset(
          'assets/icon.svg',
          width: 80,
          height: 80,
        ),
      ),
    );
  }
}
