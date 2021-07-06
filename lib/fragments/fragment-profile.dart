import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rille/components/rounded-button.dart';
import 'package:rille/pages/welcome-page.dart';
import 'package:rille/utils/constants.dart';

class ProfileFragment extends StatelessWidget {
  void onLogedOut(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (builder) {
          return WelcomePage();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      margin: EdgeInsets.all(10),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.person_outline_rounded,
                size: 80.0,
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              RoundedButton(
                'Log Out',
                onLogedOut,
                redColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
