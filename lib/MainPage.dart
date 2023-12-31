import 'package:agence/detaille/minibus.dart';
import 'package:agence/detaille/voit.dart';
import 'package:agence/reservation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './detaille/bus.dart';

class MyMianPage extends StatefulWidget {
  const MyMianPage({super.key});

  @override
  State<MyMianPage> createState() => _MyMianPageState();
}

class _MyMianPageState extends State<MyMianPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
            ),
            backgroundColor: Colors.black87,
            pinned: true,
            floating: true,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Agence De Voyage',
                style: TextStyle(color: Colors.white),
              ),
              background: Image.network(
                'https://www.shutterstock.com/image-photo/bus-traveling-on-asphalt-road-600nw-1345741577.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext, int index) {
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Minibus(),
                                ));
                              },
                              child: Container(
                                height: 220,
                                width: 170,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black38,
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 15,
                                      spreadRadius: 1.0,
                                    ),
                                    BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 15,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                  border:
                                      Border.all(width: 3, color: Colors.white),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Column(
                                  children: [
                                    Padding(padding: EdgeInsets.only(top: 10)),
                                    Image.network(
                                      'https://thumbs.dreamstime.com/b/minibus-compact-65658243.jpg',
                                      height: 120,
                                      width: 350,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: FaIcon(
                                                FontAwesomeIcons.heart,
                                                color: Colors.red,
                                              )),
                                          Text('Mini Bus 1'),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 2)),
                                    Container(
                                      height: 20,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.black),
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Voir plus',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 20)),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Minibus2(),
                                ));
                              },
                              child: Container(
                                height: 220,
                                width: 170,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black38,
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 15,
                                      spreadRadius: 1.0,
                                    ),
                                    BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 15,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                  border:
                                      Border.all(width: 3, color: Colors.white),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Column(
                                  children: [
                                    Padding(padding: EdgeInsets.only(top: 10)),
                                    Image.network(
                                      'https://ae01.alicdn.com/kf/H354239a126074e908410baab61119fe47/V-hicule-tout-terrain-VW-T6-MULTIVAN-1-32-mod-le-de-Simulation-MPV-voiture-en.jpg',
                                      height: 120,
                                      width: 350,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          IconButton(
                                            onPressed: () {},
                                            icon: FaIcon(
                                              FontAwesomeIcons.heart,
                                              color: Colors.red,
                                            ),
                                          ),
                                          Text('Mini Bus 2'),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 2)),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) => Reservation(),
                                        ));
                                      },
                                      child: Container(
                                        height: 20,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          color: Colors.amber,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Center(child: Text('Voir plus')),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 20)),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Minibus3(),
                                ));
                              },
                              child: Container(
                                height: 220,
                                width: 170,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black38,
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 15,
                                      spreadRadius: 1.0,
                                    ),
                                    BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 15,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                  border:
                                      Border.all(width: 3, color: Colors.white),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Column(
                                  children: [
                                    Padding(padding: EdgeInsets.only(top: 10)),
                                    Image.network(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQluj-MeOHgXB9DUEndtHTFKuv69yCP0urhd7SlpUgv_754JRMjn8un-OdO9G6SWA7U_5o&usqp=CAU',
                                      height: 120,
                                      width: 350,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: FaIcon(
                                                FontAwesomeIcons.heart,
                                                color: Colors.red,
                                              )),
                                          Text('Mini Bus 3'),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 2)),
                                    Container(
                                      height: 20,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.black),
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Voir plus',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 20)),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Minibus4(),
                                ));
                              },
                              child: Container(
                                height: 220,
                                width: 170,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black38,
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 15,
                                      spreadRadius: 1.0,
                                    ),
                                    BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 15,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                  border:
                                      Border.all(width: 3, color: Colors.white),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Column(
                                  children: [
                                    Padding(padding: EdgeInsets.only(top: 10)),
                                    Image.network(
                                      'https://www.dhresource.com/0x0/f2/albu/g8/M00/78/67/rBVaVF4ZCY2AUiz9AAFbUfj0g_o382.jpg',
                                      height: 120,
                                      width: 350,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: FaIcon(
                                                FontAwesomeIcons.heart,
                                                color: Colors.red,
                                              )),
                                          Text('Mini Bus 4'),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 2)),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) => Reservation(),
                                        ));
                                      },
                                      child: Container(
                                        height: 20,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          color: Colors.amber,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Center(child: Text('Voir plus')),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 20)),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Minibus5(),
                                ));
                              },
                              child: Container(
                                height: 220,
                                width: 170,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black38,
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 15,
                                      spreadRadius: 1.0,
                                    ),
                                    BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 15,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                  border:
                                      Border.all(width: 3, color: Colors.white),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Column(
                                  children: [
                                    Padding(padding: EdgeInsets.only(top: 10)),
                                    Image.network(
                                      'https://img.freepik.com/photos-premium/petit-bus-jaune-pour-deplacements-urbains-suburbains-voiture-carrosserie-vide-pour-design-publicite-illustration-3d_101266-13102.jpg?size=626&ext=jpg',
                                      height: 120,
                                      width: 350,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: FaIcon(
                                                FontAwesomeIcons.heart,
                                                color: Colors.red,
                                              )),
                                          Text('Mini Bus 5'),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 2)),
                                    Container(
                                      height: 20,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.black),
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Voir plus',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Voiture(),
                                ));
                              },
                              child: Container(
                                height: 220,
                                width: 170,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black38,
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 15,
                                      spreadRadius: 1.0,
                                    ),
                                    BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 15,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                  border:
                                      Border.all(width: 3, color: Colors.white),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Column(
                                  children: [
                                    Padding(padding: EdgeInsets.only(top: 10)),
                                    Image.network(
                                      'https://img.freepik.com/photos-gratuite/vue-voiture-3d_23-2150796896.jpg',
                                      height: 120,
                                      width: 350,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: FaIcon(
                                                FontAwesomeIcons.heart,
                                                color: Colors.red,
                                              )),
                                          Text('Voiture 1'),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 2)),
                                    Container(
                                      height: 20,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.black),
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Voir plus',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 20)),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => voiture2(),
                                ));
                              },
                              child: Container(
                                height: 220,
                                width: 170,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black38,
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 15,
                                      spreadRadius: 1.0,
                                    ),
                                    BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 15,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                  border:
                                      Border.all(width: 3, color: Colors.white),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Column(
                                  children: [
                                    Padding(padding: EdgeInsets.only(top: 10)),
                                    Image.network(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0LZvTHtxP2iVktuUOqNfCTuCU4om4PDZHW6ZbOLTiCPSmUNZXRFZO5KbxRQCQ_RR_a70&usqp=CAU',
                                      height: 120,
                                      width: 350,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: FaIcon(
                                                FontAwesomeIcons.heart,
                                                color: Colors.red,
                                              )),
                                          Text('Voiture 2'),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 2)),
                                    Container(
                                      height: 20,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.black),
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Voir plus',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 20)),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => voiture3(),
                                ));
                              },
                              child: Container(
                                height: 220,
                                width: 170,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black38,
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 15,
                                      spreadRadius: 1.0,
                                    ),
                                    BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 15,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                  border:
                                      Border.all(width: 3, color: Colors.white),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Column(
                                  children: [
                                    Padding(padding: EdgeInsets.only(top: 10)),
                                    Image.network(
                                      'https://img.freepik.com/vecteurs-premium/image-trois-dimensions-voiture-isolee-fond-blanc_53876-12269.jpg',
                                      height: 120,
                                      width: 350,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: FaIcon(
                                                FontAwesomeIcons.heart,
                                                color: Colors.red,
                                              )),
                                          Text('Voiture 3'),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 2)),
                                    Container(
                                      height: 20,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.black),
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Voir plus',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 20)),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Voiture4(),
                                ));
                              },
                              child: Container(
                                height: 220,
                                width: 170,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black38,
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 15,
                                      spreadRadius: 1.0,
                                    ),
                                    BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 15,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                  border:
                                      Border.all(width: 3, color: Colors.white),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Column(
                                  children: [
                                    Padding(padding: EdgeInsets.only(top: 10)),
                                    Image.network(
                                      'https://img.freepik.com/photos-premium/voiture-familiale-taille-moyenne-familiale-break-fond-blanc-rendu-3d_101266-26792.jpg?w=2000',
                                      height: 120,
                                      width: 350,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: FaIcon(
                                                FontAwesomeIcons.heart,
                                                color: Colors.red,
                                              )),
                                          Text('Voiture 4'),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 2)),
                                    Container(
                                      height: 20,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.black),
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Voir plus',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 20)),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Voiture5(),
                                ));
                              },
                              child: Container(
                                height: 220,
                                width: 170,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black38,
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 15,
                                      spreadRadius: 1.0,
                                    ),
                                    BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 15,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                  border:
                                      Border.all(width: 3, color: Colors.white),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Column(
                                  children: [
                                    Padding(padding: EdgeInsets.only(top: 10)),
                                    Image.network(
                                      'https://img.freepik.com/photos-premium/voiture-ville-bleue-surface-vierge-pour-votre-design-creatif-rendu-3d_101266-10302.jpg?size=626&ext=jpg',
                                      height: 120,
                                      width: 350,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: FaIcon(
                                                FontAwesomeIcons.heart,
                                                color: Colors.red,
                                              )),
                                          Text('Voiture 5'),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 2)),
                                    Container(
                                      height: 20,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.black),
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Voir plus',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Grandbus1(),
                                ));
                              },
                              child: Container(
                                height: 220,
                                width: 170,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black38,
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 15,
                                      spreadRadius: 1.0,
                                    ),
                                    BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 15,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                  border:
                                      Border.all(width: 3, color: Colors.white),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Column(
                                  children: [
                                    Padding(padding: EdgeInsets.only(top: 10)),
                                    Image.network(
                                      'https://en.higer.com/uploadfiles/2021/01/20210112151442503.png?NjkzOERGLnBuZw==',
                                      height: 120,
                                      width: 350,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: FaIcon(
                                                FontAwesomeIcons.heart,
                                                color: Colors.red,
                                              )),
                                          Text('Grand Bus 1'),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 2)),
                                    Container(
                                      height: 20,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.black),
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Voir plus',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 20)),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Grandbus2(),
                                ));
                              },
                              child: Container(
                                height: 220,
                                width: 170,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black38,
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 15,
                                      spreadRadius: 1.0,
                                    ),
                                    BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 15,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                  border:
                                      Border.all(width: 3, color: Colors.white),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Column(
                                  children: [
                                    Padding(padding: EdgeInsets.only(top: 10)),
                                    Image.network(
                                      'https://img.freepik.com/photos-premium/bus-noir-urbain-moyen-fond-blanc-rendu-3d_101266-12716.jpg?size=626&ext=jpg',
                                      height: 120,
                                      width: 350,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: FaIcon(
                                                FontAwesomeIcons.heart,
                                                color: Colors.red,
                                              )),
                                          Text('Grand Bus 2'),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 2)),
                                    Container(
                                      height: 20,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.black),
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Voir plus',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 20)),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Grandbus3(),
                                ));
                              },
                              child: Container(
                                height: 220,
                                width: 170,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black38,
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 15,
                                      spreadRadius: 1.0,
                                    ),
                                    BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 15,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                  border:
                                      Border.all(width: 3, color: Colors.white),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Column(
                                  children: [
                                    Padding(padding: EdgeInsets.only(top: 10)),
                                    Image.network(
                                      'https://img.freepik.com/photos-premium/bus-vert-urbain-moyen-fond-blanc-rendu-3d_101266-6482.jpg?size=626&ext=jpg',
                                      height: 120,
                                      width: 350,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: FaIcon(
                                                FontAwesomeIcons.heart,
                                                color: Colors.red,
                                              )),
                                          Text('Grand bus 3'),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 2)),
                                    Container(
                                      height: 20,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.black),
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Voir plus',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 20)),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Grandbus4(),
                                ));
                              },
                              child: Container(
                                height: 220,
                                width: 170,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black38,
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 15,
                                      spreadRadius: 1.0,
                                    ),
                                    BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 15,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                  border:
                                      Border.all(width: 3, color: Colors.white),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Column(
                                  children: [
                                    Padding(padding: EdgeInsets.only(top: 10)),
                                    Image.network(
                                      'https://image.made-in-china.com/202f0j00zbTucgHdYLrN/Cheap-Buses-for-Sale-Old-Bus-for-Sale-37-Seats-Coach-Bus-Zk6858-Transportation-Passenger-Bus-with-Good-Condition-Diesel-Bus-for-Sale.jpg',
                                      height: 120,
                                      width: 350,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: FaIcon(
                                                FontAwesomeIcons.heart,
                                                color: Colors.red,
                                              )),
                                          Text('Grand Bus 4'),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 2)),
                                    Container(
                                      height: 20,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.black),
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Voir plus',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 20)),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Grandbus5(),
                                ));
                              },
                              child: Container(
                                height: 220,
                                width: 170,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black38,
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 15,
                                      spreadRadius: 1.0,
                                    ),
                                    BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 15,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                  border:
                                      Border.all(width: 3, color: Colors.white),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Column(
                                  children: [
                                    Padding(padding: EdgeInsets.only(top: 10)),
                                    Image.network(
                                      'https://img.freepik.com/photos-premium/bus-bleu-urbain-moyen-fond-blanc-isole-rendu-3d_101266-9616.jpg?size=626&ext=jpg',
                                      height: 120,
                                      width: 350,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: FaIcon(
                                                FontAwesomeIcons.heart,
                                                color: Colors.red,
                                              )),
                                          Text('Grand Bus 5'),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 2)),
                                    Container(
                                      height: 20,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.black),
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Voir plus',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
