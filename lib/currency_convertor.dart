
import 'package:flutter/material.dart';

class CurrencyConvertorMaterialApp extends StatefulWidget {
  const CurrencyConvertorMaterialApp({super.key});

  @override
  State<CurrencyConvertorMaterialApp> createState() =>
     _CurrencyConvertorMaterialAppState();
  
}

class _CurrencyConvertorMaterialAppState extends State<CurrencyConvertorMaterialApp> {

  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert(){
    setState(() {
      result = double.parse(textEditingController.text) * 1.6;
    });
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    print("Rebuild");
    

    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.black,
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(10.0),
    );

    return Scaffold(
      backgroundColor:  Colors.blueGrey,
      appBar: AppBar(
        title: const Text("Currency Convertor"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.5,),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              'NPR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: "Enter Amount in NPR ok.",
                  hintStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(Icons.currency_rupee),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            //button
            //textbutton
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                onPressed: convert,
                style: TextButton.styleFrom(
                  backgroundColor: (Colors.black),
                  foregroundColor: (Colors.white),
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                child: const Text("Convert", style: TextStyle(fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


