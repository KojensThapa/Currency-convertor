import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConvertor extends StatelessWidget {
  const CurrencyConvertor({super.key});

  @override
  Widget build(BuildContext context) {
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
            const Text(
              "0",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
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
                onPressed: () {
                  if (kDebugMode) {
                    print("Clicked Me");
                  }
                },
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
