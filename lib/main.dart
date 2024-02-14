import 'package:flutter/material.dart';
import 'package:flutter_example/screens/tutorial/widget/button_section.dart';
import 'package:flutter_example/screens/tutorial/widget/image_section.dart';
import 'package:flutter_example/screens/tutorial/widget/text_section.dart';
import 'package:flutter_example/screens/tutorial/widget/title_section.dart';
import 'package:flutter_example/screens/empty.dart';
import 'package:flutter_example/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  int _selectedIndex = 0;
  final List<Widget> _bottomNavWidgets = [
    const Home(),
    const Empty(),
    const Empty(),
  ];

  void onBottomNavTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text('Flutter Demo Home Page'),
          ),
          body: _bottomNavWidgets.elementAt(_selectedIndex),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.directions_transit),
                label: 'Item 2',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.directions_bike),
                label: 'Item 3',
              )
            ],
            onTap: onBottomNavTab,
            currentIndex: _selectedIndex,
          ),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const ImageSection(image: 'images/lake.jpg'),
            const TitleSection(name: "name", location: "location"),
            const ButtonSection(),
            const TextSection(
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
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
