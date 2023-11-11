import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRCodeScreen extends StatelessWidget {
  const QRCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context); 
          },
        ),
        title: const Text('Сканируйте QR-code'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            QrImageView(
              data: 'https://kaynar.kg/',
              backgroundColor: Colors.white,
              version: QrVersions.auto,
              size: 300.0,
            ),
          ],
        ),
      ),      
    );
  }
}

