import 'package:dream_emirates/custom_widgets/app_buttons.dart';
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
          flexibleSpace: Row(
            children: [
              // Leading image box
              const SizedBox(
                width: 54,
                child: Text(
                  "9:41",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF252A31),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    height: 0,
                    letterSpacing: -0.30,
                  ),
                ),
                // child: Image.asset(
                //   'images/time.png',
                //   width: 40.0,
                //   height: 40.0,
                // ),
              ),
              const Spacer(), // Spacer to push the next images to the end
              // Three image boxes at the end
              SizedBox(
                width: 17,
                height: 10.67,
                child: Image.asset(
                  'images/cellular_connection.png',
                  height: 40.0,
                ),
              ),
              SizedBox(
                width: 15.33,
                height: 11,
                child: Image.asset(
                  'images/wifi.png', // Replace with your image path
                  width: 40.0,
                  height: 40.0,
                ),
              ),
              SizedBox(
                width: 24.33,
                height: 11.33,
                child: Image.asset(
                  'images/battery.png', // Replace with your image path
                  width: 40.0,
                  height: 40.0,
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                color: const Color(0xFFFFFFFF),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: Image.asset(
                        'images/arrow-left.png',
                        width: 24.0, // Set width of the image
                        height: 24.0, // Set height of the image
                      ),
                      onPressed: () {},
                    ),
                    const SizedBox(width: 24),
                    const SizedBox(
                      width: 262,
                      child: Text(
                        'Virtual Buy',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF252A31),
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          height: 0.08,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

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
              // SizedBox(
              //   width: double.infinity,
              //   child: ElevatedButton(
              //     style: ElevatedButton.styleFrom(
              //       backgroundColor: Colors.black,
              //       padding: const EdgeInsets.symmetric(
              //           horizontal: 16, vertical: 12),
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(12),
              //       ),
              //     ),
              //     onPressed: () {},
              //     child: const Text(
              //       'Next',
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontSize: 15,
              //         fontWeight: FontWeight.w400,
              //         height: 0,
              //       ),
              //     ),
              //   ),
              // ),

              const AppButtons(
                backgroundColor: Color(0xFF111111),
                borderColor: Color(0xFF111111),
                borderWidth: 1,
                borderRadius: 12,
                // Text
                text: "Next",
                textColor: Colors.white,
                fontSize: 15,
                fontWeight: 400,
                // padding
                paddingHorizontal: 16,
                paddingVertical: 12,
              )
            ],
          ),
        ),
      ),
    );
  }
}
