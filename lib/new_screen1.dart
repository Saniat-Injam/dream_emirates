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

// Removed the leading underscore to make the class public
class VirtualBuyScreenState extends State<VirtualBuyScreen> {
  int quantity = 1;
  double rate = 252.03;
  String? selectedMetal;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F6FF),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_outlined,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          title: const Text(
            'Virtual Buy',
            style: TextStyle(
              color: Color(0xFF252A31),
              fontSize: 17,
              fontWeight: FontWeight.w600,
              height: 0.08,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              // Row with Checkbox and Confirm switch
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (bool? value) {},
                        activeColor: Colors.black,
                      ),
                      const Text("Info", style: TextStyle(fontSize: 16)),
                    ],
                  ),

                  Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (bool? value) {},
                        activeColor: Colors.black,
                      ),
                      const Text(
                        "Confirm",
                        style: TextStyle(
                          color: Color(0xFF1A1A1A),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          height: 0.12,
                          letterSpacing: 0.14,
                        ),
                      ),
                    ],
                  ),

                  // Row(
                  //   children: [
                  //     const Text("Confirm", style: TextStyle(fontSize: 16)),
                  //     Switch(
                  //       value: false,
                  //       onChanged: (bool newValue) {},
                  //     ),
                  //   ],
                  // ),
                ],
              ),
              const SizedBox(height: 20),

              // Dropdown for Metal Type
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Metal type',
                  border: OutlineInputBorder(),
                ),
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
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 48,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE8ECF9),
                        border: Border.all(
                          width: 1,
                          color: const Color(0x19111111),
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            alignment: Alignment.center,
                            icon: const Icon(Icons.remove, color: Colors.black),
                            onPressed: () {
                              setState(() {
                                if (quantity > 1) {
                                  quantity--;
                                }
                              });
                            },
                          ),
                          Text(
                            '$quantity',
                            style: const TextStyle(
                              color: Color(0xFF111111),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              height: 0.10,
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
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Rate display
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFFE9EDF9),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // const Text(
                    //   'Rate',
                    //   style: TextStyle(fontSize: 16, color: Colors.grey),
                    // ),
                    Text(
                      '\$${rate.toStringAsFixed(2)}',
                      style: const TextStyle(
                        color: Color(0xFF28BD5A),
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        height: 0,
                        //color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Next button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
