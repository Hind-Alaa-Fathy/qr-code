import 'package:flutter/material.dart';
import 'package:qrcode/view/scanner%20screen.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(60.0),
          child: Row(
            children: [
              Icon(Icons.qr_code),
              SizedBox(width: 10,),
              Text('Qr Scanner'),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Container(
          color: Colors.green,
          child: MaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => QRScannerPage()),
              );
            },
            child: Text('Scan QR Code'),
          ),
        ),
      ),
    );
  }
}