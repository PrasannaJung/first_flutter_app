import 'package:first_app/screen/arithmetic_screen.dart';
import 'package:first_app/screen/container_screen.dart';
import 'package:first_app/screen/dashboard_screen.dart';
import 'package:first_app/screen/flexible_expanded_screen.dart';
import 'package:first_app/screen/hello_world_screen.dart';
import 'package:first_app/screen/list_tile_screen.dart';
import 'package:first_app/screen/rows_and_columns.dart';
import 'package:first_app/screen/simple_interest_screen.dart';
import 'package:first_app/screen/students_details_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StudentsDetailsScreen(),
    );
  }
}
