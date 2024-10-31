import 'package:flutter/material.dart';
import 'package:dream_emirates/custom_widgets/buttons/wide_button.dart';

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
                            'Virtual Buy',
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

            // Card for Type, Weight and QTY
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Column(
                children: [
                  // Card container
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: ShapeDecoration(
                        color: Colors.white.withOpacity(0.8999999761581421),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1, color: Color(0xFFE8EDF1)),
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
                            // Blue Buy Button
                            Container(
                              height: 24,
                              width: 38,
                              decoration: BoxDecoration(
                                color: const Color(0x190088FF),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  width: 0.5,
                                  color: const Color(0xFF0088FF),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  "Buy",
                                  style: TextStyle(
                                    color: Color(0xFF0088FF),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    height: 0.11,
                                  ),
                                ),
                              ),
                            ),
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
                ],
              ),
            ),
            // Here the card should be closed

            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.only(left: 23, right: 24),
              // Rate
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(),
                    child: Column(
                      //mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Rate',
                          style: TextStyle(
                            color: Color(0xFF252A31),
                            fontSize: 14,
                            //fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0.10,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(12),
                          decoration: ShapeDecoration(
                            color: const Color(0xFFE9EDF9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '252.03',
                                style: TextStyle(
                                  color: Color(0xFF28BD5A),
                                  fontSize: 15,
                                  //fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 14),
                  // Executed rate
                  Container(
                    decoration: const BoxDecoration(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Executed rate',
                          style: TextStyle(
                            color: Color(0xFF252A31),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 0.10,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(12),
                          decoration: ShapeDecoration(
                            color: const Color(0xFFE9EDF9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '252.03',
                                style: TextStyle(
                                  color: Color(0xFF111111),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Confirm button
                  const AppButtons(
                    backgroundColor: Color(0xFF111111),
                    borderColor: Color(0xFF111111),
                    borderWidth: 1,
                    borderRadius: 12,
                    // Text
                    text: "Confirm",
                    textColor: Colors.white,
                    fontSize: 15,
                    fontWeight: 400,
                    // padding
                    paddingHorizontal: 16,
                    paddingVertical: 12,
                    icon: Icons.keyboard_arrow_right,
                    iconColor: Colors.white,
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
