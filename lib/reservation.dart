import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class Reservation extends StatefulWidget {
  const Reservation({super.key});

  @override
  State<Reservation> createState() => _ReservationState();
}

class _ReservationState extends State<Reservation> {
  final Future<FirebaseApp> _fApp = Firebase.initializeApp();
  final number = '+243999582153';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _fApp,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Text("Probleme avec la base de donnee");
          } else if (snapshot.hasData) {
            return const Text("connexion reussi");
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }

  Widget content() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
          ),
          backgroundColor: Colors.black87,
          pinned: true,
          floating: false,
          expandedHeight: 160.0,
          flexibleSpace: FlexibleSpaceBar(
            title: const Text(
              'Agence De Voyage',
              style: TextStyle(color: Colors.white),
            ),
            background: Image.network(
              'https://static.vecteezy.com/ti/vecteur-libre/p3/11514541-illustration-du-logo-de-l-agence-de-voyage-en-bus-express-sur-fond-clair-vectoriel.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext, int index) {
              return SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.all(17),
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          fillColor: Colors.grey,
                          filled: true,
                          hintText: 'Nom & postnom',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(17),
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          fillColor: Colors.grey,
                          filled: true,
                          hintText: 'Prenom',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(17),
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          fillColor: Colors.grey,
                          filled: true,
                          hintText: 'Nombre de place',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 60)),
                    Padding(
                      padding: const EdgeInsets.only(left: 260),
                      child: FloatingActionButton(
                        backgroundColor: Colors.black,
                        onPressed: () async {
                          await FlutterPhoneDirectCaller.callNumber(number);
                        },
                        child: const Icon(Icons.call, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              );
            },
            childCount: 1,
          ),
        ),
      ],
    );
  }
}

class reservationpage extends StatefulWidget {
  const reservationpage({super.key});

  @override
  State<reservationpage> createState() => _reservationpageState();
}

class _reservationpageState extends State<reservationpage> {
  // static Future<user?> reservation(
  //     {required String nom,
  //     required String prenom,
  //     required String nombredeplace,
  //     required BuildContext context}) async {
  //       FirebaseAuth auth = FirebaseAuth.instance;
  //       User? user;
  //       try{
  //         UserCredential userCredential = await auth.signInWithEmailAndPassword(email: nom, password: prenom)
  //       }
  //     }
  // @override
  Widget build(BuildContext context) {
    return Scaffold();
}
}
