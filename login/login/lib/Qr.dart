import 'package:flutter/material.dart';
import 'package:lezzart/Screen/authServices.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QRCodeScannerApp(),
    );
  }
}

class QRCodeScannerApp extends StatefulWidget {
  @override
  _QRCodeScannerAppState createState() => _QRCodeScannerAppState();
}

class _QRCodeScannerAppState extends State<QRCodeScannerApp> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  late QRViewController controller;
  String scanResult = "...";

  @override
  @override
  signOut(BuildContext context) {
    Navigator.of(context).pop();
    AuthService().signOut();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        centerTitle: true,
        backgroundColor: Color.fromARGB(232, 17, 61, 136),
        title: const Text(
          'COTAM ASBL',
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: QRView(
              key: qrKey,
              onQRViewCreated: (controller) {
                this.controller = controller;
                controller.scannedDataStream.listen((scanData) {
                  setState(() {
                    scanResult = scanData.code!;
                  });
                });
              },
            ),
          ),
          Text(
            (scanResult.length == 10)
                ? 'Plaque:$scanResult valide'
                : 'plaque $scanResult invalide',
            style: TextStyle(
              fontSize: 24,
              color: (scanResult.length == 10) ? Colors.green : Colors.red,
            ),
          ),

        ],
      ),
    );
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
