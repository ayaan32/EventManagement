import 'package:dev/SignUp.dart';
import 'package:dev/login.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) => isLogin
      ? Login(onCLickedSignUp: toggle)
      : SignUp(onCLickedSignIn: toggle);

  void toggle() => setState(() => isLogin = !isLogin);
}
