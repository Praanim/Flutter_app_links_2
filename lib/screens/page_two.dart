import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  final String? randomValue;

  const PageTwo({super.key, required this.randomValue});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Two'),
      ),
      body: Center(
        child: Text(
          'Welcome to Page Two! $randomValue',
          style: const TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
