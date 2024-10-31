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
      home: VirtualSellScreen(),
    );
  }
}

class VirtualSellScreen extends StatefulWidget {
  const VirtualSellScreen({super.key});
  @override
  VirtualSellScreenState createState() => VirtualSellScreenState();
}

class VirtualSellScreenState extends State<VirtualSellScreen> {
  int quantity = 12;
  bool isInfoSelected = true;
  bool isConfirmSelected = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F6FF),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {},
          ),
          title: const Text(
            'Virtual Sell',
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Info checkbox with size 24x24
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: Checkbox(
                      value: isInfoSelected,
                      activeColor: Colors.black, // Set checkbox color to black
                      onChanged: (bool? value) {
                        setState(() {
                          isInfoSelected = value ?? true;
                        });
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                  const Text("Info"),
                  const SizedBox(width: 8),
                  // Divider
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Colors.grey[300],
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                    ),
                  ),
                  // Confirm checkbox with size 24x24
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: Checkbox(
                      value: isConfirmSelected,
                      activeColor: Colors.black, // Set checkbox color to black
                      onChanged: (bool? value) {
                        setState(() {
                          isConfirmSelected = value ?? true;
                        });
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                  const Text("Confirm"),
                ],
              ),
              const SizedBox(height: 24),
              // Card for Type, Weight and QTY
              Container(
                padding: const EdgeInsets.all(8),
                decoration: ShapeDecoration(
                    color: Colors.white.withOpacity(0.8999999761581421),
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0xFFE8EDF1)),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x05000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      ),
                    ]),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Opacity(
                                opacity: 0.50,
                                child: Text(
                                  'Type',
                                  style: TextStyle(
                                    color: Color(0xFF111111),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Kilobar',
                                style: TextStyle(
                                  color: Color(0xFF111111),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Opacity(
                                opacity: 0.50,
                                child: Text(
                                  'Weight',
                                  style: TextStyle(
                                    color: Color(0xFF111111),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                '162.54gm',
                                style: TextStyle(
                                  color: Color(0xFF111111),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Opacity(
                                opacity: 0.50,
                                child: Text(
                                  'QTY',
                                  style: TextStyle(
                                    color: Color(0xFF111111),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                '$quantity',
                                style: const TextStyle(
                                  color: Color(0xFF111111),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // Straight line
                    const Divider(),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 24,
                          width: 38,
                          decoration: BoxDecoration(
                            color: const Color(0x19EBA413),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              width: 0.5,
                              color: const Color(0xFFBA5D00),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "Sell",
                              style: TextStyle(
                                color: Color(0xFFBA5D00),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                height: 0.11,
                              ),
                            ),
                          ),
                        ),

                        // ElevatedButton(
                        //   onPressed: () {},
                        //   style: ElevatedButton.styleFrom(
                        //     //backgroundColor: const Color(0x190088FF),
                        //     side: const BorderSide(color: Colors.blue),
                        //     shape: RoundedRectangleBorder(
                        //       borderRadius: BorderRadius.circular(20),
                        //     ),
                        //     padding: const EdgeInsets.symmetric(
                        //         horizontal: 20, vertical: 10),
                        //   ),
                        //   child: const Text(
                        //     'Buy',
                        //     style: TextStyle(color: Colors.blue),
                        //   ),
                        // ),
                        Text(
                          'Jewelry 22K',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
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
                child: const Text(
                  '252.03',
                  style: TextStyle(
                    color: Color(0xFF28BD5A),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Executed rate display
              const Text("Executed rate"),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFFE9EDF9),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  '252.03',
                  style: TextStyle(
                    color: Color(0xFF111111),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Confirm button
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
                        'Confirm',
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
        ),
      ),
    );
  }
}
