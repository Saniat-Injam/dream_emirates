import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabBarExample(),
    );
  }
}

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Account1'),
          bottom: const TabBar(
            indicatorColor: Colors.white, // Color of the active tab indicator
            tabs: [
              Tab(text: "Open"),
              Tab(text: "Pending"),
              Tab(text: "Closed"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text("Home Screen")),
            Center(child: Text("Search Screen")),
            Center(child: Text("Settings Screen")),
          ],
        ),
      ),
    );
  }
}
