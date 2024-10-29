// Screen 1: Trade Info Screen
import 'package:flutter/material.dart';

class TradeInfoScreen extends StatefulWidget {
  const TradeInfoScreen({super.key});

  @override
  TradeInfoScreenState createState() => TradeInfoScreenState();
}

class TradeInfoScreenState extends State<TradeInfoScreen> {
  bool isBuying = true;
  String? selectedMetal;
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pending'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
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
                Checkbox(value: false, onChanged: (value) {}),
                const Text('Confirm'),
              ],
            ),
            const SizedBox(height: 16),

            // Trade type toggle (Buy/Sell)
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => setState(() => isBuying = true),
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          isBuying ? Colors.blue : Colors.grey.shade300,
                      foregroundColor: isBuying ? Colors.white : Colors.black,
                    ),
                    child: const Text('Buy'),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => setState(() => isBuying = false),
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          !isBuying ? Colors.blue : Colors.grey.shade300,
                      foregroundColor: !isBuying ? Colors.white : Colors.black,
                    ),
                    child: const Text('Sell'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Rate display
            const Text(
              'Rate',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            const Text(
              '252.03',
              style: TextStyle(fontSize: 24, color: Colors.green),
            ),
            const SizedBox(height: 16),

            // Metal type dropdown
            const Text('Metal type'),
            DropdownButton<String>(
              value: selectedMetal,
              hint: const Text('Select'),
              items: ['Gold', 'Silver', 'Platinum']
                  .map((metal) => DropdownMenuItem(
                        value: metal,
                        child: Text(metal),
                      ))
                  .toList(),
              onChanged: (value) => setState(() => selectedMetal = value),
            ),
            const SizedBox(height: 16),

            // Quantity selector
            const Text('Quantity'),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    if (quantity > 1) {
                      setState(() => quantity--);
                    }
                  },
                ),
                Text('$quantity'),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () => setState(() => quantity++),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Set rate input (read-only for now)
            const Text('Set rate'),
            const SizedBox(height: 8),
            const TextField(
              enabled: false,
              decoration: InputDecoration(
                hintText: '1213',
                border: OutlineInputBorder(),
              ),
            ),
            const Spacer(),

            // Next button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/confirm');
                },
                child: const Text('Next'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
