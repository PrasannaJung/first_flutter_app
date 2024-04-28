import 'package:first_app/common/list_tile_common.dart';
import 'package:flutter/material.dart';

class ListTileScreen extends StatelessWidget {
  const ListTileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("List Tile"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for(int i = 0 ; i <= 20; i++)
              if( i % 2 == 0)...{
                ListTileCommon(index:i)
              }
          ],
        ),
      ),
    );
  }
}
