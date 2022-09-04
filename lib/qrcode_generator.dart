import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';

class QrCodeGenerate extends StatefulWidget {
  const QrCodeGenerate({Key? key}) : super(key: key);

  @override
  State<QrCodeGenerate> createState() => _QrCodeGenerateState();
}

class _QrCodeGenerateState extends State<QrCodeGenerate> {
  TextEditingController dataControl = TextEditingController();
  String? data;

  @override
  Widget build(BuildContext context) {
    var outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Generate QrCode'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          data == null
              ? Container(
                  child: Text(
                    "Enter Your link to generate QR CODE",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                )
              : BarcodeWidget(
                  barcode: Barcode.qrCode(),
                  data: data!,
                  height: 200,
                  width: 200,
                ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              controller: dataControl,
              decoration: InputDecoration(
                hintText: "Enter Your Link",
                border: outlineInputBorder,
                focusedBorder: outlineInputBorder,
                errorBorder: outlineInputBorder,
                filled: true,
                fillColor: Colors.grey[50],
              ),
            ),
          ),
          const SizedBox(height: 20),
          IconButton(
            onPressed: () {
              data = dataControl.text;
              setState(() {});
            },
            icon: const Icon(
              Icons.check,
              size: 20,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
