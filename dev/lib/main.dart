import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:dev/authpage.dart';
import 'package:dev/navbarcontrol.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        navigatorKey: navigatorKey,
        home: Wrapper(),
        debugShowCheckedModeBanner: false,
      );
}

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: StreamBuilder<User?>(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Navbar();
              } else {
                return AuthPage();
              }
            }),
      );
}
