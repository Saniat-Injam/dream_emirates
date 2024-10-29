// Screen 2: Confirm Screen
import 'package:flutter/material.dart';

class ConfirmScreen extends StatelessWidget {
  const ConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pending'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with Info/Confirm step indicators
            Row(
              children: [
                Checkbox(value: true, onChanged: (value) {}),
                const Text('Info'),
                const Spacer(),
                Checkbox(value: true, onChanged: (value) {}),
                const Text('Confirm'),
              ],
            ),
            const SizedBox(height: 16),

            // Trade summary details
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.grey.shade200,
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Type: Kilobar', style: TextStyle(fontSize: 16)),
                  SizedBox(height: 8),
                  Text('Weight: 162.54gm', style: TextStyle(fontSize: 16)),
                  SizedBox(height: 8),
                  Text('QTY: 12', style: TextStyle(fontSize: 16)),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text('Pending', style: TextStyle(color: Colors.blue)),
                      SizedBox(width: 8),
                      Text('Buy', style: TextStyle(color: Colors.blue)),
                      Spacer(),
                      Text('Jewelry 22K', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Rate and Set rate display
            const Text('Rate', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            const Text(
              '252.03',
              style: TextStyle(fontSize: 24, color: Colors.green),
            ),
            const SizedBox(height: 16),
            const Text('Set rate', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            const TextField(
              enabled: false,
              decoration: InputDecoration(
                hintText: '1213',
                border: OutlineInputBorder(),
              ),
            ),
            const Spacer(),

            // Confirm button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Confirm'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
