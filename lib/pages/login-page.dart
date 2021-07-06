import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rille/pages/home-page.dart';
import 'package:rille/utils/constants.dart';
import 'package:rille/utils/validator.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final Validator validator = Validator();

  var isEmailValid = true;
  var isUsernameValid = true;
  var isPasswordValid = true;

  var emailMessage = '';

  onPress(BuildContext context) {
    setState(() {
      isEmailValid = validator.validateEmail(emailController);
      isUsernameValid = validator.validateEmptyField(usernameController);
      isPasswordValid = validator.validateAlphanumeric(passwordController);
    });

    if (isEmailValid && isUsernameValid && isPasswordValid) {
      currentUser = usernameController.text;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (builder) {
            return HomePage();
          },
        ),
      );
    }
  }

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
                    controller: emailController,
                    decoration: InputDecoration(
                      errorText: isEmailValid ? null : 'Invalid Mail',
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
                    controller: usernameController,
                    decoration: InputDecoration(
                      errorText: isUsernameValid ? null : 'Invalid username',
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
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      errorText: isPasswordValid ? null : 'Invalid Password',
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
                  onPressed: () => onPress(context),
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
