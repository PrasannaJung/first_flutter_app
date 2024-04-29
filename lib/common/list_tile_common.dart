import 'package:first_app/common/my_snackbar.dart';
import 'package:first_app/screen/output_screen.dart';
import 'package:flutter/material.dart';

class ListTileCommon extends StatelessWidget {
  final int index;
  final String imagePath;
  final String firstName;
  final String address;
  const ListTileCommon({required this.index, super.key, required this.imagePath,required this.firstName, required this.address});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage("$imagePath"),
      ),
      title: Text('$firstName'),
      subtitle: Text('$address, Nepal'),
      trailing: const Icon(Icons.delete),
      onTap: () {
        // showMySnackBar(message: "Clicked Name ${index}", context: context);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OutputScreen(outputData: "$firstName"),
          ),
        );
      },
    );
  }
}
