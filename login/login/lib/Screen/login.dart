import 'dart:async';
import 'dart:io';
import 'package:lezzart/Screen/authServices.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool inLoginProcess = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 248, 248),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.55,
              ),
              Text(
                'COTAM ASBL',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Espace Agent  ',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              inLoginProcess
                  ? Center(child: CircularProgressIndicator())
                  : ElevatedButton(
                      child: const Text(
                        "Connectez-vous avec Google",
                        style: TextStyle(
                          color: Color.fromARGB(232, 17, 61, 136),
                        ),
                      ),
                      onPressed: () => signIn(context),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Future signIn(BuildContext context) async {
    if (kIsWeb) {
      setState(() {
        inLoginProcess = true;
        AuthService().signInWithGoogle();
      });
    } else {
      try {
        final result = await InternetAddress.lookup('google.com');
        if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
          setState(() async {
            inLoginProcess = true;
            AuthService().signInWithGoogle();
          });
        }
      } on SocketException catch (_) {
        showNotification(context, 'Aucune connexion internet');
      }
    }
  }
}

void showNotification(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message)),
  );
}
