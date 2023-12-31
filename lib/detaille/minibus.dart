import 'package:flutter/material.dart';

import '../reservation.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Minibus extends StatefulWidget {
    Minibus({super.key});

  @override
  State<Minibus> createState() => _MinibusState();
}

class _MinibusState extends State<Minibus> {
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
                  'https://thumbs.dreamstime.com/b/minibus-compact-65658243.jpg'),
            ),
            Padding(
              padding:   EdgeInsets.all(30.0),
              child: Column(
                children: [
                    Row(
                    children: [
                      Text('Numero de bus :'),
                      Text(
                        'Mini bus 1',
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

class Minibus2 extends StatefulWidget {
    Minibus2({super.key});

  @override
  State<Minibus2> createState() => _Minibus2State();
}

class _Minibus2State extends State<Minibus2> {
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
                  'https://ae01.alicdn.com/kf/H354239a126074e908410baab61119fe47/V-hicule-tout-terrain-VW-T6-MULTIVAN-1-32-mod-le-de-Simulation-MPV-voiture-en.jpg'),
            ),
            Padding(
              padding:   EdgeInsets.all(30.0),
              child: Column(
                children: [
                    Row(
                    children: [
                      Text('Numero de bus :'),
                      Text(
                        'Mini bus 2',
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

class Minibus3 extends StatefulWidget {
    Minibus3({super.key});

  @override
  State<Minibus3> createState() => _Minibus3State();
}

class _Minibus3State extends State<Minibus3> {
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
                        'Mini bus 3',
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

class Minibus4 extends StatefulWidget {
    Minibus4({super.key});

  @override
  State<Minibus4> createState() => _Minibus4State();
}

class _Minibus4State extends State<Minibus4> {
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
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQluj-MeOHgXB9DUEndtHTFKuv69yCP0urhd7SlpUgv_754JRMjn8un-OdO9G6SWA7U_5o&usqp=CAU'),
            ),
            Padding(
              padding:   EdgeInsets.all(30.0),
              child: Column(
                children: [
                    Row(
                    children: [
                      Text('Numero de bus :'),
                      Text(
                        'Mini bus 4',
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
                      Text(
                        '8h',
                        style: TextStyle(
                          fontSize: 18,
                        ),
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

class Minibus5 extends StatefulWidget {
    Minibus5({super.key});

  @override
  State<Minibus5> createState() => _Minibus5State();
}

class _Minibus5State extends State<Minibus5> {
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
                  'https://www.dhresource.com/0x0/f2/albu/g8/M00/78/67/rBVaVF4ZCY2AUiz9AAFbUfj0g_o382.jpg'),
            ),
            Padding(
              padding:   EdgeInsets.all(30.0),
              child: Column(
                children: [
                    Row(
                    children: [
                      Text('Numero de bus :'),
                      Text(
                        'Mini bus 5',
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
