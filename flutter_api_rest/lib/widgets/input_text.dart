import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String label;
  final TextInputType keyboardType;
  final bool obscureText, borderEnable;
  const InputText(
      {Key key,
      this.label = '',
      this.keyboardType = TextInputType.text,
      this.obscureText = false,
      this.borderEnable = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: this.keyboardType,
      obscureText: this.obscureText,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 5),
        enabledBorder: this.borderEnable
            ? UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black12),
              )
            : InputBorder.none,
        labelText: this.label,
        labelStyle:
            TextStyle(color: Colors.black45, fontWeight: FontWeight.w500),
      ),
    );
  }
}
