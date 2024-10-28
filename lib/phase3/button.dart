import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Outlined Button Example")),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Green Outlined Button
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          backgroundColor: const Color(0x1928BD5A),
                          side: const BorderSide(
                              color: Color(0xFF28BD5A),
                              width: 0.50), // Outline color and width
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(20), // Rounded corners
                          ),
                        ),
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          child: Text(
                            "Open",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF0CAB41),
                              fontSize: 12,
                              letterSpacing: 0.5,
                              fontWeight: FontWeight.w400,
                              height: 0.11,
                            ), // Text color
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      // Blue Button
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          backgroundColor: const Color(0x190088FF),
                          side: const BorderSide(
                            color: Color(0xFF0088FF),
                            width: 0.50,
                          ), // Outline color and width
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(20), // Rounded corners
                          ),
                        ),
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          child: Text(
                            "Open",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF0088FF),
                              fontSize: 12,
                              letterSpacing: 0.5,
                              fontWeight: FontWeight.w400,
                              height: 0.11,
                            ), // Text color
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Icon(Icons.keyboard_arrow_up),
                ]),
          ),
        ),
      ),
    );
  }
}
