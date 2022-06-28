import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);
  final fruits = const ['Apple', 'Banana', 'Orange', 'Pinaple', 'Strawberry'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Screen Type 1'),
      ),
      body: ListView(children: [
        ...fruits
            .map((fruit) => ListTile(
                  title: Text(fruit),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                ))
            .toList()

        /*Text('ListViewScreen'),
           Text('ListViewScreen'),
           Text('ListViewScreen'),
           Text('ListViewScreen'),
           Text('ListViewScreen'),*/
      ]),
    );
  }
}
