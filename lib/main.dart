import 'package:flutter/material.dart';
import 'package:tab_pageview/tab_pageview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TabPageView',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TabPage(title: 'TabPageView'),
    );
  }
}

class TabPage extends StatefulWidget {
  const TabPage({super.key, required this.title});
  final String title;

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  static const tabs = ['全部', 'Android', 'Flutter', 'RN', 'Kotlin', 'IOS'];

  get _tabPages => tabs.map((e) => TabPageView(tabName: e)).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: PageView(
        children: _tabPages,
      ),
    );
  }
}
