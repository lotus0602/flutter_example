import 'package:flutter/material.dart';

class GestureDemo extends StatelessWidget {
  const GestureDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gesture Demo'),
      ),
      body: const Center(
        child: ButtonWithSnackBar(),
      ),
    );
  }
}

class ButtonWithSnackBar extends StatelessWidget {
  const ButtonWithSnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        const snackBar = SnackBar(content: Text('tapped!!'));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Text('Show Snack Bar'),
      ),
    );
  }
}
