import 'package:flutter/material.dart';
import 'package:qr_code_generator_and_scanner_app/generate_qr_code.dart';
import 'package:qr_code_generator_and_scanner_app/homepage.dart';
import 'package:qr_code_generator_and_scanner_app/scan_qr_code.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/generate': (context) => const GenerateQRCode(),
        '/scan': (context) => const ScanQRCode(),
      },
      title: 'QR Code Scanner and Generator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
