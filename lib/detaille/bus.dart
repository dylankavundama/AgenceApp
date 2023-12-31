import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:async';

import '../reservation.dart';
// import 'package:intl/intl.dart';

class Grandbus1 extends StatefulWidget {
    Grandbus1({super.key});

  @override
  State<Grandbus1> createState() => _Grandbus1State();
}

class _Grandbus1State extends State<Grandbus1> {
  TimeOfDay selectedTime = TimeOfDay.now();
  late DateTime selectedDate;
  late Timer timer;
  String countdown = '';

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  void startCountdown() {
    timer = Timer.periodic(  Duration(seconds: 1), (Timer t) {
      calculateCountdown();
    });
  }

  void calculateCountdown() {
    DateTime now = DateTime.now();
    Duration difference = selectedDate.difference(now);

    if (difference.inSeconds > 0) {
      setState(() {
        countdown = formatDuration(difference);
      });
    } else {
      timer.cancel();
      setState(() {
        countdown = 'Le compte à rebours est terminé !';
      });
    }
  }

  String formatDuration(Duration duration) {
    return '${duration.inHours}:${(duration.inMinutes % 60).toString().padLeft(2, '0')}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        countdown = '';
      });

      startCountdown();
    }
  }

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
                  'https://en.higer.com/uploadfiles/2021/01/20210112151442503.png?NjkzOERGLnBuZw=='),
            ),
            Padding(
              padding:   EdgeInsets.all(30.0),
              child: Column(
                children: [
                    Row(
                    children: [
                      Text('Numero de bus :'),
                      Text(
                        'Grand Bus 1',
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
                        Padding(padding: EdgeInsets.only(left: 2)),
                      ElevatedButton(
                        onPressed: () => _selectDate(context),
                        child:   Text('Date'),
                      ),
                      Text(
                        countdown,
                        style:   TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                  Row(
                    children: [
                        Text('Heure de depart : '),
                        Padding(padding: EdgeInsets.only(left: 10)),
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

class Grandbus2 extends StatefulWidget {
    Grandbus2({super.key});

  @override
  State<Grandbus2> createState() => _Grandbus2State();
}

class _Grandbus2State extends State<Grandbus2> {
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
                  'https://img.freepik.com/photos-premium/bus-noir-urbain-moyen-fond-blanc-rendu-3d_101266-12716.jpg?size=626&ext=jpg'),
            ),
            Padding(
              padding:   EdgeInsets.all(30.0),
              child: Column(
                children: [
                    Row(
                    children: [
                      Text('Numero de bus :'),
                      Text(
                        'Grand Bus 2',
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
                        'Goma - Bunia',
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
                        'Le 2/1/2023',
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
                        '40',
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
                        '10',
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

class Grandbus3 extends StatefulWidget {
    Grandbus3({super.key});

  @override
  State<Grandbus3> createState() => _Grandbus3State();
}

class _Grandbus3State extends State<Grandbus3> {
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
                  'https://img.freepik.com/photos-premium/bus-vert-urbain-moyen-fond-blanc-rendu-3d_101266-6482.jpg?size=626&ext=jpg'),
            ),
            Padding(
              padding:   EdgeInsets.all(30.0),
              child: Column(
                children: [
                   Row(
                    children: [
                      Text('Numero de bus :'),
                      Text(
                        'Grand Bus 3',
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

class Grandbus4 extends StatefulWidget {
    Grandbus4({super.key});

  @override
  State<Grandbus4> createState() => _Grandbus4State();
}

class _Grandbus4State extends State<Grandbus4> {
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
                  'https://image.made-in-china.com/202f0j00zbTucgHdYLrN/Cheap-Buses-for-Sale-Old-Bus-for-Sale-37-Seats-Coach-Bus-Zk6858-Transportation-Passenger-Bus-with-Good-Condition-Diesel-Bus-for-Sale.jpg'),
            ),
            Padding(
              padding:   EdgeInsets.all(30.0),
              child: Column(
                children: [
                    Row(
                    children: [
                      Text('Numero de bus :'),
                      Text(
                        'Grand Bus 4',
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
                      height: 20,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child:   Center(child: Text('Reserver')),
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

class Grandbus5 extends StatefulWidget {
    Grandbus5({super.key});

  @override
  State<Grandbus5> createState() => _Grandbus5State();
}

class _Grandbus5State extends State<Grandbus5> {
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
                  'https://img.freepik.com/photos-premium/bus-bleu-urbain-moyen-fond-blanc-isole-rendu-3d_101266-9616.jpg?size=626&ext=jpg'),
            ),
            Padding(
              padding:   EdgeInsets.all(30.0),
              child: Column(
                children: [
                    Row(
                    children: [
                      Text('Numero de bus :'),
                      Text(
                        'Grand Bus 5',
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
