import 'dart:async';
import 'dart:io';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../nav.dart';
import 'authServices.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool inLoginProcess = false;

  double _sigmaX = 5; // from 0-10
  double _sigmaY = 5; // from 0-10
  double _opacity = 0.2;
  double _width = 350;
  double _height = 300;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 248, 248),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        "assets/images/a.jpg",
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        fit: BoxFit.cover,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: MediaQuery.of(context).size.height * 0.2),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.26),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.02),
                          ClipRect(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                  sigmaX: _sigmaX, sigmaY: _sigmaY),
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 1.0),
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(0, 0, 0, 1)
                                        .withOpacity(_opacity),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(30))),
                                width: MediaQuery.of(context).size.width * 0.9,
                                height:
                                    MediaQuery.of(context).size.height * 0.4,
                                child: Form(
                                  child: Center(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Welcome to ",
                                          style: GoogleFonts.abel(
                                              fontSize: 35,
                                              color: Colors.black),
                                        ),
                                        //

                                        Image.asset(
                                          'assets/lg.png',
                                        ),

                                        SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.03),
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.white),
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            color: Colors.grey[200],
                                          ),
                                          child: inLoginProcess
                                              ? const Center(
                                                  child:
                                                      CircularProgressIndicator())
                                              // : ElevatedButton(
                                              //     child: const Text(
                                              //       "Connectez-vous avec Google",
                                              //       style: TextStyle(
                                              //         color: Color.fromARGB(
                                              //             232, 17, 61, 136),
                                              //       ),
                                              //     ),
                                              //     onPressed: () =>
                                              //         signIn(context),
                                              //   ),
                                              : Container(
                                                  height: 28,
                                                  width: 250,
                                                  child: GestureDetector(
                                                    child: Row(
                                                      children: [
                                                        Image.asset(
                                                          'assets/images/google.png',
                                                          height: 30,
                                                        ),
                                                        const SizedBox(
                                                            width: 10),
                                                        Text(
                                                          "Continue with Google",
                                                          style:
                                                              GoogleFonts.lato(
                                                                  fontSize: 19,
                                                                  color: Colors
                                                                      .black),
                                                        )
                                                      ],
                                                    ),
                                                    onTap: () =>
                                                        signIn(context),
                                                  ),
                                                ),
                                        ),
                                        SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.03),
                                        const SizedBox(height: 19),
                                        Text('Condition',
                                            style: GoogleFonts.abel(
                                                fontSize: 17,
                                                color: Colors.white),
                                            textAlign: TextAlign.start),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              // inLoginProcess
              //     ? const Center(child: CircularProgressIndicator())
              //     : ElevatedButton(
              //         child: const Text(
              //           "Connectez-vous avec Google",
              //           style: TextStyle(
              //             color: Color.fromARGB(232, 17, 61, 136),
              //           ),
              //         ),
              //         onPressed: () => signIn(context),
              //       ),
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
            AuthService().signInWithGoogle().then(
              (value) async {
                Future<SharedPreferences> _prefs =
                    SharedPreferences.getInstance();
                SharedPreferences prefs = await _prefs;
                prefs.setString('email', value.user!.email.toString());

                if (value.user != null) {
                  Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
                    CupertinoPageRoute(
                      builder: (context) =>  navBar (),
                    ),
                    (Route<dynamic> route) => false,
                  );
                }
              },
            );
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
