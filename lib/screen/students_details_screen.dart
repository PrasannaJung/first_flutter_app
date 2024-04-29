import 'package:first_app/model/student_model.dart';
import 'package:flutter/material.dart';

class StudentsDetailsScreen extends StatefulWidget {
  const StudentsDetailsScreen({super.key});

  @override
  State<StudentsDetailsScreen> createState() => _StudentsDetailsScreenState();
}

class _StudentsDetailsScreenState extends State<StudentsDetailsScreen> {

  List<StudentModel> studentsList = [];
  String? firstName;
  String? lastName;
  String? address;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "First Name"
            ),
          ),
          TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Last Name"
            ),
          ),
          TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Address Name"
            ),
          ),
        ],
      ),
    );
  }
}
