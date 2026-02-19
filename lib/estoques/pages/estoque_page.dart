import 'package:flutter/material.dart';

class EstoquePage extends StatelessWidget {
  const EstoquePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 250,
      color: Colors.green,
      child: const Center(child: Text('Estoque')),
    );
  }
}
