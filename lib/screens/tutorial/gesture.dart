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
        child: Column(
          children: [
            ButtonWithSnackBar(),
            RippleButtonWithSnackBar(),
          ],
        ),
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
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('tapped!!')),
        );
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

class RippleButtonWithSnackBar extends StatelessWidget {
  const RippleButtonWithSnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('tapped!!')),
        );
      },
      child: const Padding(
        padding: EdgeInsets.all(12),
        child: Text('ripple button'),
      ),
    );
  }
}