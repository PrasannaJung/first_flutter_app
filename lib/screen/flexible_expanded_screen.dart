import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              fit: FlexFit.loose,
              child: Container(
                height: 400,
                alignment: Alignment.center,
                width: double.infinity,
                color: Colors.blueAccent,
                child:  ElevatedButton(onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Button 1 pressed"),duration: Duration(seconds: 3))
                  );
                }, child: const Text("One")),
              ),
            ),
            Expanded(
              child: Container(
                height: 100,
                alignment: Alignment.center,
                width: double.infinity,
                color: Colors.lime,
                child:  ElevatedButton(onPressed: (){}, child: const Text("Two")),
              ),
            )
          ],
        ),
      ),
    );
  }
}
