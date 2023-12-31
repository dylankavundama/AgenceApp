import 'package:flutter/material.dart';

import '../reservation.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Voiture extends StatefulWidget {
    Voiture({super.key});

  @override
  State<Voiture> createState() => _VoitureState();
}



class _VoitureState extends State<Voiture> {
  TimeOfDay selectedTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
        child: Column(
          children: [
              Padding(padding: EdgeInsets.only(top: 30)),
            Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow:   [
                  BoxShadow(
                    color: Colors.white,
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
                border: Border.all(width: 3, color: Colors.white),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Image.network(
                  'https://img.freepik.com/photos-gratuite/vue-voiture-3d_23-2150796896.jpg'),
            ),
            Padding(
              padding:   EdgeInsets.all(30.0),
              child: Column(
                children: [
                    Row(
                    children: [
                      Text('Numero de bus :'),
                      Text(
                        'Voiture 1',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Row(
                    children: [
                      Text('Destination : '),
                      Text(
                        'Goma - Kisangani',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Row(
                    children: [
                      Text('Date de depart : '),
                      Text(
                        'Le 28/12/2023',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                   Row(
                    children: [
                      Text('Heure de depart : '),
                      Text("${selectedTime.hour}: ${selectedTime.minute}",
                          style:
                                TextStyle(fontSize: 20, color: Colors.red)),
                      ElevatedButton(
                        onPressed: () async {
                          final TimeOfDay? timeOfDay = await showTimePicker(
                              context: context,
                              initialTime: selectedTime,
                              initialEntryMode: TimePickerEntryMode.dial);
                          if (timeOfDay != null) {
                            setState(() {
                              selectedTime = timeOfDay;
                            });
                          }
                        },
                        child:   Text('Heure'),
                      ),
                    ],
                  ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Row(
                    children: [
                      Text('Place diponible: '),
                      Text(
                        '30',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Row(
                    children: [
                      Text('place restant: '),
                      Text(
                        '20',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Row(
                    children: [
                      Text('Temps restant: '),
                      Padding(padding: EdgeInsets.only(left: 20)),
                      Text(
                        '8:20:40',
                        style: TextStyle(fontSize: 30, color: Colors.red),
                      ),
                    ],
                  ),
                    Padding(padding: EdgeInsets.only(top: 70)),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>   Reservation(),
                      ));
                    },
                    child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black),
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:   Center(
                        child: Text(
                          'Reserver',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class voiture2 extends StatefulWidget {
    voiture2({super.key});

  @override
  State<voiture2> createState() => _voiture2State();
}

class _voiture2State extends State<voiture2> {
  TimeOfDay selectedTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
        child: Column(
          children: [
              Padding(padding: EdgeInsets.only(top: 30)),
            Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow:   [
                  BoxShadow(
                    color: Colors.white,
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
                border: Border.all(width: 3, color: Colors.white),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0LZvTHtxP2iVktuUOqNfCTuCU4om4PDZHW6ZbOLTiCPSmUNZXRFZO5KbxRQCQ_RR_a70&usqp=CAU'),
            ),
            Padding(
              padding:   EdgeInsets.all(30.0),
              child: Column(
                children: [
                    Row(
                    children: [
                      Text('Numero de bus :'),
                      Text(
                        'Voiture 2',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Row(
                    children: [
                      Text('Destination : '),
                      Text(
                        'Goma - Kisangani',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Row(
                    children: [
                      Text('Date de depart : '),
                      Text(
                        'Le 28/12/2023',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                   Row(
                    children: [
                      Text('Heure de depart : '),
                      Text("${selectedTime.hour}: ${selectedTime.minute}",
                          style:
                                TextStyle(fontSize: 20, color: Colors.red)),
                      ElevatedButton(
                        onPressed: () async {
                          final TimeOfDay? timeOfDay = await showTimePicker(
                              context: context,
                              initialTime: selectedTime,
                              initialEntryMode: TimePickerEntryMode.dial);
                          if (timeOfDay != null) {
                            setState(() {
                              selectedTime = timeOfDay;
                            });
                          }
                        },
                        child:   Text('Heure'),
                      ),
                    ],
                  ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Row(
                    children: [
                      Text('Place diponible: '),
                      Text(
                        '30',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Row(
                    children: [
                      Text('place restant: '),
                      Text(
                        '20',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Row(
                    children: [
                      Text('Temps restant: '),
                      Padding(padding: EdgeInsets.only(left: 20)),
                      Text(
                        '8:20:40',
                        style: TextStyle(fontSize: 30, color: Colors.red),
                      ),
                    ],
                  ),
                    Padding(padding: EdgeInsets.only(top: 70)),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>   Reservation(),
                      ));
                    },
                    child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black),
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:   Center(
                        child: Text(
                          'Reserver',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class voiture3 extends StatefulWidget {
    voiture3({super.key});

  @override
  State<voiture3> createState() => _voiture3State();
}

class _voiture3State extends State<voiture3> {
  TimeOfDay selectedTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
        child: Column(
          children: [
              Padding(padding: EdgeInsets.only(top: 30)),
            Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow:   [
                  BoxShadow(
                    color: Colors.white,
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
                border: Border.all(width: 3, color: Colors.white),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Image.network(
                  'https://img.freepik.com/vecteurs-premium/image-trois-dimensions-voiture-isolee-fond-blanc_53876-12269.jpg'),
            ),
            Padding(
              padding:   EdgeInsets.all(30.0),
              child: Column(
                children: [
                    Row(
                    children: [
                      Text('Numero de bus :'),
                      Text(
                        'Voiture 3',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Row(
                    children: [
                      Text('Destination : '),
                      Text(
                        'Goma - Kisangani',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Row(
                    children: [
                      Text('Date de depart : '),
                      Text(
                        'Le 28/12/2023',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                   Row(
                    children: [
                      Text('Heure de depart : '),
                      Text("${selectedTime.hour}: ${selectedTime.minute}",
                          style:
                                TextStyle(fontSize: 20, color: Colors.red)),
                      ElevatedButton(
                        onPressed: () async {
                          final TimeOfDay? timeOfDay = await showTimePicker(
                              context: context,
                              initialTime: selectedTime,
                              initialEntryMode: TimePickerEntryMode.dial);
                          if (timeOfDay != null) {
                            setState(() {
                              selectedTime = timeOfDay;
                            });
                          }
                        },
                        child:   Text('Heure'),
                      ),
                    ],
                  ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Row(
                    children: [
                      Text('Place diponible: '),
                      Text(
                        '30',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Row(
                    children: [
                      Text('place restant: '),
                      Text(
                        '20',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Row(
                    children: [
                      Text('Temps restant: '),
                      Padding(padding: EdgeInsets.only(left: 20)),
                      Text(
                        '8:20:40',
                        style: TextStyle(fontSize: 30, color: Colors.red),
                      ),
                    ],
                  ),
                    Padding(padding: EdgeInsets.only(top: 70)),
                 GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>   Reservation(),
                      ));
                    },
                    child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black),
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:   Center(
                        child: Text(
                          'Reserver',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class Voiture4 extends StatefulWidget {
    Voiture4({super.key});

  @override
  State<Voiture4> createState() => _Voiture4State();
}

class _Voiture4State extends State<Voiture4> {
  TimeOfDay selectedTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
        child: Column(
          children: [
              Padding(padding: EdgeInsets.only(top: 30)),
            Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow:   [
                  BoxShadow(
                    color: Colors.white,
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
                border: Border.all(width: 3, color: Colors.white),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Image.network(
                  'https://img.freepik.com/photos-premium/voiture-familiale-taille-moyenne-familiale-break-fond-blanc-rendu-3d_101266-26792.jpg?w=2000'),
            ),
            Padding(
              padding:   EdgeInsets.all(30.0),
              child: Column(
                children: [
                    Row(
                    children: [
                      Text('Numero de bus :'),
                      Text(
                        'Voiture 4',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Row(
                    children: [
                      Text('Destination : '),
                      Text(
                        'Goma - Kisangani',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Row(
                    children: [
                      Text('Date de depart : '),
                      Text(
                        'Le 28/12/2023',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                   Row(
                    children: [
                      Text('Heure de depart : '),
                      Text("${selectedTime.hour}: ${selectedTime.minute}",
                          style:
                                TextStyle(fontSize: 20, color: Colors.red)),
                      ElevatedButton(
                        onPressed: () async {
                          final TimeOfDay? timeOfDay = await showTimePicker(
                              context: context,
                              initialTime: selectedTime,
                              initialEntryMode: TimePickerEntryMode.dial);
                          if (timeOfDay != null) {
                            setState(() {
                              selectedTime = timeOfDay;
                            });
                          }
                        },
                        child:   Text('Heure'),
                      ),
                    ],
                  ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Row(
                    children: [
                      Text('Place diponible: '),
                      Text(
                        '30',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Row(
                    children: [
                      Text('place restant: '),
                      Text(
                        '20',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Row(
                    children: [
                      Text('Temps restant: '),
                      Padding(padding: EdgeInsets.only(left: 20)),
                      Text(
                        '8:20:40',
                        style: TextStyle(fontSize: 30, color: Colors.red),
                      ),
                    ],
                  ),
                    Padding(padding: EdgeInsets.only(top: 70)),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>   Reservation(),
                      ));
                    },
                    child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black),
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:   Center(
                        child: Text(
                          'Reserver',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class Voiture5 extends StatefulWidget {
    Voiture5({super.key});

  @override
  State<Voiture5> createState() => _Voiture5State();
}

class _Voiture5State extends State<Voiture5> {
  TimeOfDay selectedTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
        child: Column(
          children: [
              Padding(padding: EdgeInsets.only(top: 30)),
            Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow:   [
                  BoxShadow(
                    color: Colors.white,
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
                border: Border.all(width: 3, color: Colors.white),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Image.network(
                  'https://img.freepik.com/photos-premium/voiture-ville-bleue-surface-vierge-pour-votre-design-creatif-rendu-3d_101266-10302.jpg?size=626&ext=jpg'),
            ),
            Padding(
              padding:   EdgeInsets.all(30.0),
              child: Column(
                children: [
                    Row(
                    children: [
                      Text('Numero de bus :'),
                      Text(
                        'Voiture 5',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Row(
                    children: [
                      Text('Destination : '),
                      Text(
                        'Goma - Kisangani',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Row(
                    children: [
                      Text('Date de depart : '),
                      Text(
                        'Le 28/12/2023',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                  Row(
                    children: [
                      Text('Heure de depart : '),
                      Text("${selectedTime.hour}: ${selectedTime.minute}",
                          style:
                                TextStyle(fontSize: 20, color: Colors.red)),
                      ElevatedButton(
                        onPressed: () async {
                          final TimeOfDay? timeOfDay = await showTimePicker(
                              context: context,
                              initialTime: selectedTime,
                              initialEntryMode: TimePickerEntryMode.dial);
                          if (timeOfDay != null) {
                            setState(() {
                              selectedTime = timeOfDay;
                            });
                          }
                        },
                        child:   Text('Heure'),
                      ),
                    ],
                  ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Row(
                    children: [
                      Text('Place diponible: '),
                      Text(
                        '30',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Row(
                    children: [
                      Text('place restant: '),
                      Text(
                        '20',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Row(
                    children: [
                      Text('Temps restant: '),
                      Padding(padding: EdgeInsets.only(left: 20)),
                      Text(
                        '8:20:40',
                        style: TextStyle(fontSize: 30, color: Colors.red),
                      ),
                    ],
                  ),
                    Padding(padding: EdgeInsets.only(top: 70)),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>   Reservation(),
                      ));
                    },
                    child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black),
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:   Center(
                        child: Text(
                          'Reserver',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}