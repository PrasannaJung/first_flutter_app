import 'package:flutter/material.dart';

class DummyScreen extends StatelessWidget {
  const DummyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Row(
        children: [
          Column(
            children: [
              Icon(Icons.phone_android),
              SafeArea(child: Container(
                child: Text("CALL"),
              ),)
            ],
          ),
          Column(
            children: [
              Icon(Icons.navigation),
              SafeArea(child: Container(
                child: Text("ROUTE"),
              ),)
            ],
          ),
          Column(
            children: [
              Icon(Icons.share),
              SafeArea(child: Container(
                child: Text("SHARE"),
              ),)
            ],
          )
        ],
      ),
    );
  }
}
