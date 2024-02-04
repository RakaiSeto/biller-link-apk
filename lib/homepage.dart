import 'package:biller_link/sharedvar.dart';
import 'package:flutter/material.dart';

import 'qrscan.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        actions: [
          IconButton(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
            // padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
            icon: sharedStorage.read("sessionSignature") != "" ? Icon(
              Icons.account_circle
            ) : Icon(
              Icons.login
            ),
            tooltip: 'Open shopping cart',
            onPressed: () {
              // handle the press
            },
          ),
        ],
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'Welcome to Biller Link',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Aleo',
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const ScanQR(),
              ));
            },
            child: const Text('qrView'),
          ),
        ]),
      ),
    );
  }
}
