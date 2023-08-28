import 'package:flutter/material.dart';
import 'package:clipboard/clipboard.dart';
import 'package:qrcode/view/home.dart';

class ResultScreen extends StatelessWidget {
  static const String routeName = 'result';
  final String? qrCode;

  ResultScreen({required this.qrCode});



  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pushNamed(context, HomeScreen.routeName);
        }, icon: Icon(Icons.arrow_back)),
        title: Center(child: Text('Result')),
      ),
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              qrCode ?? 'No QR code',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(height: 30),
            Container(
              color: Colors.green,
              child: MaterialButton(
                onPressed: () async {
                  await FlutterClipboard.copy(qrCode!);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Copied to clipboard')),
                  );
                },
                child: Text('Copy URL'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}