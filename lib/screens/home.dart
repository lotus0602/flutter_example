import 'package:flutter/material.dart';
import 'package:flutter_example/screens/tutorial/increment_counter.dart';
import 'package:flutter_example/screens/tutorial/tutorial.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.grey),
            ),
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
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.grey),
            ),
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
      ),
    );
  }
}
