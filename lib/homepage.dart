import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Code Scanner and Generator'),
        backgroundColor: Colors.brown[700],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  //navigate to scan qr code page
                  Navigator.pushNamed(context, '/scan');
                },
                child: const Text("Scan QR Code")),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  //navigate to generate qr code page
                  Navigator.pushNamed(context, '/generate');
                  },
                child: const Text("Generate QR Code")),
          ],
        ),
      ),
    );
  }
}
