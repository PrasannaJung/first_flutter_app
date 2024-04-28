import 'package:first_app/common/my_snackbar.dart';
import 'package:flutter/material.dart';

class ListTileCommon extends StatelessWidget {
  final int index;
  const ListTileCommon({required this.index,super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.accessible_forward),
      title: Text('Name ${index}'),
      subtitle: const Text("Bhaktapur, Nepal"),
      trailing: const Icon(Icons.delete),
      onTap: (){
        showMySnackBar(message: "Clicked Name ${index}", context: context);
      },
    );
  }
}
