import 'package:flutter/material.dart';
import 'package:flutter_example/screens/tutorial/increment_counter.dart';
import 'package:flutter_example/screens/tutorial/tutorial.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          child: const Text('Increment Counter'),
          onPressed: () => {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const IncrementCounter(title: 'Increment Counter Demo'),
                ))
          },
        ),
        TextButton(
          child: const Text('Layout Demo'),
          onPressed: () => {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LayoutDemo(),
                ))
          },
        ),
      ],
    );
  }
}
