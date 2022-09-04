import 'package:flutter/material.dart';
import 'package:flutter_qrcodeapp/homepage.dart';
import 'package:flutter_qrcodeapp/qdcode_scanner.dart';
import 'package:flutter_qrcodeapp/qrcode_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': ((context) => const Homepage()),
        'qrcodeGenrator/': ((context) => const QrCodeGenerate()),
        'qrcodeScanner/': ((context) => const QRCodeScanner()),
      },
      initialRoute: '/',
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: Homepage(),
    );
  }
}
