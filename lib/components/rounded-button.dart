import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String _buttonText;
  final Function _event;
  late final Color _color;
  RoundedButton(this._buttonText, this._event, this._color);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      height: size.height * 0.05,
      child: ElevatedButton(
        child: Text(_buttonText),
        onPressed: () => _event(context),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(_color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
      ),
    );
  }
}
