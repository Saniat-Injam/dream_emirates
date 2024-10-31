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
      home: VirtualBuyScreen(),
    );
  }
}

class VirtualBuyScreen extends StatefulWidget {
  const VirtualBuyScreen({super.key});

  @override
  VirtualBuyScreenState createState() => VirtualBuyScreenState();
}

// Remove the leading underscore to make the class public
class VirtualBuyScreenState extends State<VirtualBuyScreen> {
  int quantity = 12;
  double rate = 252.03;
  double executedRate = 252.03;
  String? selectedMetal;
  bool isInfoSelected = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F6FF),
        body: Column(
          children: [
            Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back_outlined,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                  const SizedBox(width: 24),
                  const SizedBox(
                    height: 24,
                    width: 262,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            'Virtual Sell',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              height: 0.08,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 0.5,
                    color: Colors.grey[300],
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.white,
              height: 43,
              padding: const EdgeInsets.only(
                  top: 10, left: 16, right: 10, bottom: 9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Info checkbox
                  Checkbox(
                    value: isInfoSelected,
                    activeColor: Colors.black, // Set checkbox color to black
                    onChanged: (bool? value) {
                      setState(() {
                        isInfoSelected = value ?? true;
                      });
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  const Text("Info"),
                  const SizedBox(width: 8),
                  // Divider
                  Expanded(
                    child: Container(
                      height: 0.5,
                      color: Colors.grey[400],
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                    ),
                  ),
                  // Confirm checkbox
                  Checkbox(
                    value: !isInfoSelected,
                    activeColor: Colors.black, // Set checkbox color to black
                    onChanged: (bool? value) {
                      setState(() {
                        isInfoSelected = !(value ?? false);
                      });
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  const Text("Confirm"),
                ],
              ),
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.only(left: 23, top: 16, right: 24),
              // Dropdown for Metal Type
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Metal type"),
                  const SizedBox(height: 8),
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      fillColor: const Color(0xFFE9EDF9),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            const BorderSide(width: 1, color: Colors.black),
                      ),
                    ),
                    hint: const Text("Select"),
                    value: selectedMetal,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedMetal = newValue;
                      });
                    },
                    items: <String>['Gold', 'Silver', 'Platinum']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 20),

                  // Quantity selector
                  const Text("Quantity"),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    height: 48,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE8ECF9),
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.remove, color: Colors.black),
                          onPressed: () {
                            setState(() {
                              if (quantity > 1) quantity--;
                            });
                          },
                        ),
                        Text(
                          '$quantity',
                          style: const TextStyle(
                            color: Color(0xFF111111),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.add, color: Colors.black),
                          onPressed: () {
                            setState(() {
                              quantity++;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Rate display
                  const Text("Rate"),
                  const SizedBox(height: 8),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE9EDF9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      '\$${rate.toStringAsFixed(2)}',
                      style: const TextStyle(
                        color: Color(0xFF28BD5A),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Next button
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Next',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 12),
                          Icon(Icons.keyboard_arrow_right, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
