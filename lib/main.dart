import 'package:agence/nav.dart';
import 'package:beamer/beamer.dart';
import 'package:firebase_auth/firebase_auth.dart' as autt;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart' as prov;
import 'package:firebase_core/firebase_core.dart';
import 'login/authServices.dart';
import 'login/login.dart';
import './MainPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();



  runApp(prov.MultiProvider(
    providers: [
      prov.StreamProvider<autt.User?>.value(
        initialData: null,
        value: AuthService().user,
      ),
    ],
    child: HomeLogin(),
  ));
}

class HomeLogin extends StatefulWidget {
  const HomeLogin({
    Key? key,
  }) : super(key: key);

  @override
  _HomeLoginState createState() => _HomeLoginState();
}

class _HomeLoginState extends State<HomeLogin> {
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
  final _user = prov.Provider.of<autt.User?>(context);
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
            child: navBar(),
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
