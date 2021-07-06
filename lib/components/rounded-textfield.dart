import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rille/utils/constants.dart';

class RoundedTextField extends StatelessWidget {
  final String _hintText;
  final IconData _icon;
  final TextEditingController _controller;

  RoundedTextField({
    required String hintText,
    required IconData icon,
    required TextEditingController controller,
  })  : _hintText = hintText,
        _icon = icon,
        _controller = controller;

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
        controller: _controller,
        decoration: InputDecoration(
          hintText: _hintText,
          border: InputBorder.none,
          icon: Icon(this._icon),
        ),
      ),
    );
  }
}
