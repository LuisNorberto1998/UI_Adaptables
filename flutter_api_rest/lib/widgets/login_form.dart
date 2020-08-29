import 'package:flutter/material.dart';
import 'package:flutter_api_rest/widgets/input_text.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      left: 20,
      right: 20,
      child: Column(
        children: <Widget>[
          InputText(
            label: "EMAIL ADDRESS",
            keyboardType: TextInputType.emailAddress,
          ),
          InputText(
            label: "PASSWORD",
            obscureText: true,
          ),
        ],
      ),
    );
  }
}