import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 250,
      color: Colors.red,
      child: const Center(child: Text('Dashboard')),
    );
  }
}
