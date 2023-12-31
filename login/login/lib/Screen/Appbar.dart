import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lezzart/Screen/authServices.dart';

class HomeAppBar extends StatefulWidget {
  final User? user;
  const HomeAppBar({this.user});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  signOut(BuildContext context) {
    Navigator.of(context).pop();
    AuthService().signOut();
  }

  Widget build(BuildContext context) {
    return SliverAppBar(
       backgroundColor: Color.fromARGB(232, 17, 61, 136),
        title: const Center(
          child: Text(
            'COTAM ASBL',
        
          ),
        ),
        elevation: 0.8,
        floating: true,
        forceElevated: true,
        actions: [
          IconButton(
            icon: const Icon(
            
              Icons.arrow_circle_right,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () => signOut(context),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.only(right: 5.0),
          child: Hero(
            tag: widget.user!.photoURL!,
            child: CircleAvatar(
  
              backgroundImage: NetworkImage(widget.user!.photoURL!),
              backgroundColor: Colors.grey,
            ),
          ),
        ));
  }
}
