import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {},
          ),
          title: const Text("Pending"),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          foregroundColor: Colors.black,
        ),
        body: const PendingScreen(),
      ),
    );
  }
}

class PendingScreen extends StatelessWidget {
  const PendingScreen({super.key});
  final double rate = 252.03;
  final double setRate = 1213;
  final String type = "Kilobar";
  final String weight = "162.54gm";
  final int quantity = 12;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                value: true,
                onChanged: (bool? value) {},
                shape: const CircleBorder(),
              ),
              const Text("Info"),
              const SizedBox(width: 20),
              Checkbox(
                value: true,
                onChanged: (bool? value) {},
                shape: const CircleBorder(),
              ),
              const Text("Confirm"),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Type",
                            style: TextStyle(color: Colors.grey)),
                        Text(
                          type,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Weight",
                            style: TextStyle(color: Colors.grey)),
                        Text(
                          weight,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("QTY", style: TextStyle(color: Colors.grey)),
                        Text(
                          quantity.toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Chip(
                      label: const Text("Pending"),
                      backgroundColor: Colors.grey[300],
                      labelStyle: const TextStyle(color: Colors.black),
                    ),
                    Chip(
                      label: const Text("Buy"),
                      backgroundColor: Colors.blue[100],
                      labelStyle: const TextStyle(color: Colors.blue),
                    ),
                    const Text(
                      "Jewelry 22K",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text("Rate", style: TextStyle(color: Colors.grey)),
          Text(
            rate.toString(),
            style: const TextStyle(color: Colors.green, fontSize: 24),
          ),
          const SizedBox(height: 20),
          const Text("Set rate"),
          TextField(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            ),
            controller: TextEditingController(text: setRate.toString()),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
              ),
              onPressed: () {},
              child: const Text("Confirm"),
            ),
          ),
        ],
      ),
    );
  }
}
