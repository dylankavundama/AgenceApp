// import 'package:agence/login.dart';
// import 'package:flutter/material.dart';

// class myhomepage extends StatefulWidget {
//   const myhomepage({super.key});

//   @override
//   State<myhomepage> createState() => _myhomepageState();
// }

// class _myhomepageState extends State<myhomepage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Stack(
//             children: [
//               Image.network(
//                 'https://media.routard.com/image/58/1/voyage-interieur-bus.1526581.w740.jpeg',
//                 fit: BoxFit.cover,
//               ),
//               Column(
//                 children: [
//                   const Padding(padding: EdgeInsets.only(top: 10)),
//                   const Padding(
//                     padding: EdgeInsets.only(left: 50),
//                     child: Text(
//                       'Voyager en toute securité',
//                       style: TextStyle(color: Colors.white, fontSize: 25),
//                     ),
//                   ),
//                   const Padding(padding: EdgeInsets.only(top: 260)),
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.of(context).push(MaterialPageRoute(
//                         builder: (context) => const MyMianPage(),
//                       ));
//                     },
//                     child: Container(
//                       height: 40,
//                       width: 150,
//                       decoration: BoxDecoration(
//                         color: Colors.amber,
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                       child: const Center(
//                           child: Text(
//                         'On commence',
//                         style: TextStyle(fontSize: 20),
//                       )),
//                     ),
//                   )
//                 ],
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
