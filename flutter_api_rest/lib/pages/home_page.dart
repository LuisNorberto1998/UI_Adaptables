import 'package:flutter/material.dart';
import 'package:flutter_api_rest/widgets/circle.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            Positioned(
              left: -50,
              top: -100,
              child: Circle(size: 240, colors: [
                Colors.orange,
                Colors.deepOrangeAccent,
                
              ],),)
          ],
        ),
      ),
    );
  }
}
