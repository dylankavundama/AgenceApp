import 'package:beamer/beamer.dart';
import 'package:lezzart/Screen/authServices.dart';
import 'package:lezzart/Screen/home.dart';
import 'package:lezzart/Screen/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lezzart/Screen/authServices.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(
    providers: [
      StreamProvider<User?>.value(
        initialData: null,
        value: AuthService().user,
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key,}) : super(key: key);
 
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final _routerDelegate = routerDelegate(context);
    return BeamerProvider(
      routerDelegate: _routerDelegate,
      child: MaterialApp.router(
        title: 'Lezzsrt App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // primarySwatch: Colors.amber,
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          appBarTheme: AppBarTheme(backgroundColor: Colors.white),
          buttonTheme: const ButtonThemeData(
            buttonColor: Colors.amber,
            textTheme: ButtonTextTheme.primary,
          ),
        ),
        routerDelegate: _routerDelegate,
        routeInformationParser: BeamerParser(),
        builder: (context, child) {
          return StreamBuilder(
            initialData: 'loading',
            stream: AuthService().user,
            builder: (context, snapshot) {
              if (snapshot.data.toString() != 'loading') return child!;
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.red,
                ),
              );
            },
          );
        },
      ),
    );
  }
}

routerDelegate(BuildContext context) {
  final _user = Provider.of<User?>(context);
  return BeamerDelegate(
    initialPath: '/home',
    notFoundRedirectNamed: '/home',
    locationBuilder: SimpleLocationBuilder(
      routes: {
        '/home': (context, state) {
          return BeamPage(
            key: ValueKey('home'),
            title: 'Accueil/Lezzart Apps',
            type: BeamPageType.scaleTransition,
            child: Home(),
          );
        },
        '/login': (context, state) {
          return BeamPage(
            key: ValueKey('login'),
            title: 'Connectez-vous/',
            type: BeamPageType.scaleTransition,
            child: Login(),
          );
        },
      },
    ),
    guards: [
      BeamGuard(
        pathBlueprints: ['/home', '/profile', '/detail', '/detail/*'],
        check: (context, location) => _user != null,
        beamToNamed: '/login',
      ),
      BeamGuard(
        pathBlueprints: ['/'],
        check: (context, location) => _user != null,
        beamToNamed: '/home',
      ),
      BeamGuard(
        pathBlueprints: ['/login', '/'],
        check: (context, location) => _user == null,
        beamToNamed: '/home',
      ),
    ],
  );
}
