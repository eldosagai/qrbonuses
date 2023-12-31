import 'package:flutter/material.dart';
import 'package:flutter_qr/QR-screen.dart';

class RestaurantsScreen extends StatelessWidget {
  const RestaurantsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios), 
        onPressed: () { 
          Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Улица Медерова, 116/4',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 166, 255, 0),
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.all(10),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.star_border, color: Colors.black, size: 24),
                SizedBox(width: 10),
                Text(
                  '1000',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                SizedBox(width: 10),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 0.0,
                  )
                ],
              ),
              child: TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: 'Компании рядом',
                  hintStyle: const TextStyle(color: Colors.white),
                  border: const OutlineInputBorder(),
                  fillColor: const Color.fromARGB(255, 59, 59, 59),
                  filled: true,
                  prefixIcon: const Icon(Icons.search, color: Colors.white, size: 35),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.qr_code_scanner_outlined, color: Colors.white,),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const QRCodeScreen(),
                        ),
                      );
                    },
                  ),
                ),
                style: const TextStyle(fontSize: 16.0, color: Colors.white),
                cursorColor: Colors.white,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              width: 386,
              height: 100,
              margin: const EdgeInsets.only(top: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: const Color.fromARGB(255, 135, 135, 135),
                border: Border.all(
                  width: 2,
                  color: Colors.white,
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(13),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'KAYNAR',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),     
                      ]
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              width: 386,
              height: 100,
              margin: const EdgeInsets.only(top: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: const Color.fromARGB(255, 135, 135, 135),
                border: Border.all(
                  width: 2,
                  color: Colors.white,
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(13),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ZERNO',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),     
                      ]
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              width: 386,
              height: 100,
              margin: const EdgeInsets.only(top: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: const Color.fromARGB(255, 135, 135, 135),
                border: Border.all(
                  width: 2,
                  color: Colors.white,
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(13),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Барашек',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),     
                      ]
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              width: 386,
              height: 100,
              margin: const EdgeInsets.only(top: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: const Color.fromARGB(255, 135, 135, 135),
                border: Border.all(
                  width: 2,
                  color: Colors.white,
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(13),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'FRUNZE',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),     
                      ]
                    ),
                  ],
                ),
              ),
            ),
          ],
      )
    ),
    );
  }
}