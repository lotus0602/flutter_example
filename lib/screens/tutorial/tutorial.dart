import 'package:flutter/material.dart';
import 'package:flutter_example/screens/tutorial/widget/button_section.dart';
import 'package:flutter_example/screens/tutorial/widget/image_section.dart';
import 'package:flutter_example/screens/tutorial/widget/text_section.dart';
import 'package:flutter_example/screens/tutorial/widget/title_section.dart';

class LayoutDemo extends StatefulWidget {
  const LayoutDemo({super.key});

  @override
  State<LayoutDemo> createState() => _LayoutDemoState();
}

class _LayoutDemoState extends State<LayoutDemo> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ImageSection(image: 'images/lake.jpg'),
            TitleSection(name: "name", location: "location"),
            ButtonSection(),
            TextSection(
              description:
                  'Lake Oeschinen lies at the foot of the Blüemlisalp in the '
                  'Bernese Alps. Situated 1,578 meters above sea level, it '
                  'is one of the larger Alpine Lakes. A gondola ride from '
                  'Kandersteg, followed by a half-hour walk through pastures '
                  'and pine forest, leads you to the lake, which warms to 20 '
                  'degrees Celsius in the summer. Activities enjoyed here '
                  'include rowing, and riding the summer toboggan run.',
            )
          ],
        ),
      ),
    );
  }
}
