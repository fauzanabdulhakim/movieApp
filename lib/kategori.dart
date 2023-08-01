import 'package:flutter/material.dart';

class Kategori extends StatelessWidget {
  final String item;

  Kategori({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kategori'),
        backgroundColor: Colors.grey[800],
      ),
      body: Center(
        child: Text(item),
      ),
    );
  }
}
