import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rille/utils/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final String _hintText;
  RoundedPasswordField(this._hintText);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.06,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: primaryLightColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: _hintText,
          border: InputBorder.none,
          icon: Icon(Icons.lock),
        ),
      ),
    );
  }
}
