import 'package:flutter/material.dart';
import 'package:flutter_api_rest/utils/responsive.dart';
import 'package:flutter_api_rest/widgets/circle.dart';
import 'package:flutter_api_rest/widgets/icon_container.dart';
import 'package:flutter_api_rest/widgets/login_form.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    final double pinkSize = responsive.wp(80);
    final double orangeSize = responsive.wp(57);
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                top: -pinkSize * 0.4,
                right: -pinkSize * 0.2,
                child: Circle(
                  size: pinkSize,
                  colors: [
                    Colors.pinkAccent,
                    Colors.pink,
                  ],
                ),
              ),
              Positioned(
                top: -orangeSize * 0.55,
                left: -orangeSize * 0.15,
                child: Circle(
                  size: orangeSize,
                  colors: [
                    Colors.orange,
                    Colors.deepOrangeAccent,
                  ],
                ),
              ),
              Positioned(
                top: pinkSize * 0.3,
                child: Column(
                  children: <Widget>[
                    IconContainer(
                      size: responsive.wp(17),
                    ),
                    SizedBox(height: responsive.dp(3)),
                    Text(
                      'Hello Again\n Welcome Back!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: responsive.dp(1.6),
                      ),
                    )
                  ],
                ),
              ),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
