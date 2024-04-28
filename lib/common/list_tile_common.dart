import 'package:first_app/common/my_snackbar.dart';
import 'package:first_app/screen/output_screen.dart';
import 'package:flutter/material.dart';

class ListTileCommon extends StatelessWidget {
  final int index;
  const ListTileCommon({required this.index,super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.accessible_forward),
      title: Text('Name $index'),
      subtitle: const Text("Bhaktapur, Nepal"),
      trailing: const Icon(Icons.delete),
      onTap: (){
        // showMySnackBar(message: "Clicked Name ${index}", context: context);
        Navigator.push(context, MaterialPageRoute(builder: (context) =>  OutputScreen(outputData: "Name $index")));
      },
    );
  }
}
