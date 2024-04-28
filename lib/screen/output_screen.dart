import 'package:flutter/material.dart';

class OutputScreen extends StatelessWidget {
  final String outputData;
  const OutputScreen({required this.outputData, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Output screen"),
      ),
      body: Center(
        child: Text(
          outputData,
          style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 33.0),
        ),
      ),
    );
  }
}
