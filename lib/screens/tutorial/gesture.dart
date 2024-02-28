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
            DismissList()
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

class DismissList extends StatefulWidget {
  const DismissList({super.key});

  @override
  State<DismissList> createState() => _DismissListState();
}

class _DismissListState extends State<DismissList> {
  List<String> items = List.generate(50, (index) => 'item $index');

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Dismissible(
            key: Key(item),
            onDismissed: (direction) {
              setState(() {
                items.removeAt(index);
              });

              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text('$item dismissed')));
            },
            background: Container(color: Colors.red),
            child: ListTile(
              title: Text(items[index]),
            ),
          );
        },
      ),
    );
  }
}
