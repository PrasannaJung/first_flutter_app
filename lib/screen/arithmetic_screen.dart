import 'package:flutter/material.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {

  int? first;
  int? second;
  int sumResult = 0;
  int differenceResult = 0;

  @override
  Widget build(BuildContext context) {
    String? operation = "Add";
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: const Text("Prasanna Jung Thapa"),
        backgroundColor: Colors.green,
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                first = int.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                labelText: "Enter the first no."
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              onChanged: (value) {
                second = int.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Second No',
              ),
            ),
            const SizedBox(height: 8),
            Row(children: [ Radio(value: "Add", groupValue: operation, onChanged: (value){setState(() {
              operation = value!;
            });}),Text("Add")],),
            Row(children: [ Radio(value: "Add", groupValue: operation, onChanged: (value){setState(() {
              operation = value!;
            });}),Text("Subtract")],),
            Row(children: [ Radio(value: "Add", groupValue: operation, onChanged: (value){setState(() {
              operation = value!;
            });}),Text("Multiply")],),
            Row(children: [ Radio(value: "Add", groupValue: operation, onChanged: (value){setState(() {
              operation = value!;
            });}),Text("Divide")],),
            // Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    sumResult = first! + second!;
                  });
                },
                child: const Text(
                  'Add',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),

            // Display informatuion
            Text(
              'Sum is : $sumResult',
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    differenceResult = first! - second!;
                  });
                },
                child: const Text(
                  'Add',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),

            // Display informatuion
            Text(
              'Difference is : $differenceResult',
              style: const TextStyle(
                fontSize: 30,
              ),
            ),

          ],
        ),
      ),
    );
  }
}