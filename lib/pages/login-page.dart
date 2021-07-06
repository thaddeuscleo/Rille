import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rille/utils/constants.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              child: Image.asset(
                'assets/shapes/login_bottom.png',
                width: size.width,
              ),
              right: 0,
              bottom: 0,
            ),
            Positioned(
              child: Image.asset(
                'assets/shapes/login_top.png',
                width: size.width,
              ),
              left: 0,
              top: 0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: size.width * 0.5,
                ),
                Container(
                  width: size.width * 0.8,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: BoxDecoration(
                    color: primaryLightColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.mail,
                        color: primaryColor,
                      ),
                      hintText: 'Email',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  width: size.width * 0.8,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: BoxDecoration(
                    color: primaryLightColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.person,
                        color: primaryColor,
                      ),
                      hintText: 'Username',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  width: size.width * 0.8,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: BoxDecoration(
                    color: primaryLightColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.lock,
                        color: primaryColor,
                      ),
                      hintText: 'Password',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                ElevatedButton(
                  onPressed: () => {},
                  child: Text('LOGIN'),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.symmetric(horizontal: 140, vertical: 18),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
