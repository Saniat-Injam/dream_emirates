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

class PendingScreen extends StatefulWidget {
  const PendingScreen({super.key});
  @override
  PendingScreenState createState() => PendingScreenState();
}

class PendingScreenState extends State<PendingScreen> {
  String tradeType = "Buy";
  int quantity = 1;
  double rate = 252.03;
  double setRate = 1213;

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
                value: false,
                onChanged: (bool? value) {},
                shape: const CircleBorder(),
              ),
              const Text("Confirm"),
            ],
          ),
          const SizedBox(height: 20),
          const Text("Trade type"),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    //primary
                    backgroundColor:
                        tradeType == "Buy" ? Colors.black : Colors.grey[300],
                    //onprimary
                    disabledBackgroundColor:
                        tradeType == "Buy" ? Colors.white : Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      tradeType = "Buy";
                    });
                  },
                  child: const Text("Buy"),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    //primary
                    backgroundColor:
                        tradeType == "Sell" ? Colors.black : Colors.grey[300],
                    //onprimary
                    disabledBackgroundColor:
                        tradeType == "Sell" ? Colors.white : Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      tradeType = "Sell";
                    });
                  },
                  child: const Text("Sell"),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Text("Rate", style: TextStyle(color: Colors.grey)),
          Text(
            rate.toString(),
            style: const TextStyle(color: Colors.green, fontSize: 24),
          ),
          const SizedBox(height: 20),
          const Text("Metal type"),
          DropdownButtonFormField<String>(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            ),
            items: ["Gold", "Silver", "Platinum"]
                .map((metal) => DropdownMenuItem<String>(
                      value: metal,
                      child: Text(metal),
                    ))
                .toList(),
            onChanged: (value) {},
            hint: const Text("Select"),
          ),
          const SizedBox(height: 20),
          const Text("Quantity"),
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: quantity > 1
                    ? () {
                        setState(() {
                          quantity--;
                        });
                      }
                    : null,
              ),
              Text(quantity.toString()),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  setState(() {
                    quantity++;
                  });
                },
              ),
            ],
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
              child: const Text("Next"),
            ),
          ),
        ],
      ),
    );
  }
}
