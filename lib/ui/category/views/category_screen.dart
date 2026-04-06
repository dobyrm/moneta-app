import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter name',
            ),
          ),
        ),
        Expanded(
          child: ListView(
            children: const <Widget>[
              ListTile(title: Text('Life')),
              ListTile(title: Text('Leisure')),
              ListTile(title: Text('Charity')),
              ListTile(title: Text('Reserve')),
              ListTile(title: Text('Purchases')),
              ListTile(title: Text('Gifts')),
            ],
          ),
        ),
      ],
    );
  }
}
