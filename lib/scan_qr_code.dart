import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanQRCode extends StatefulWidget {
  const ScanQRCode({super.key});

  @override
  State<ScanQRCode> createState() => _ScanQRCodeState();
}

class _ScanQRCodeState extends State<ScanQRCode> {
  String qrData = 'Scanned Data will be displayed here';

Future<void> scanQR()async{
  try{
final qrCode = await FlutterBarcodeScanner.scanBarcode('#ff6666', 'Cancel', true, ScanMode.QR);
if(!mounted) return;
setState(() {
  qrData = qrCode.toString();
}); 
  }on PlatformException{
    qrData = 'Failed to get QR Code';
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scan QR Code'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30,),
            Text(qrData, style: const TextStyle(color: Colors.black87),),
            const SizedBox(height: 30,),
            ElevatedButton(onPressed: scanQR, child: const Text('Scan QR Code')),
          ],
        ),
      ),
    );
  }
}
