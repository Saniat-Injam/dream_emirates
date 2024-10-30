import 'package:flutter/material.dart';
import 'package:dream_emirates/custom_widgets/app_buttons.dart';

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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F6FF),

        // Appbar virtual buy
        appBar: AppBar(
          backgroundColor: const Color(0xFFFFFFFF),
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {},
          ),
          title: const Text(
            'Virtual Buy',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          centerTitle: true,
        ),

        body: Padding(
          padding: const EdgeInsets.only(left: 16, top: 10, right: 10),
          child: Column(
            children: [
              // Row with Info and Confirm checkboxes
              Container(
                color: Colors.white,
                height: 43,
                padding: const EdgeInsets.only(
                    top: 10, left: 16, right: 10, bottom: 9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment: CrossAxisAlignment.center,
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
                    // Container(
                    //   //width: 155,
                    //   decoration: const ShapeDecoration(
                    //     color: Color(0x19111111),
                    //     shape: RoundedRectangleBorder(
                    //       side: BorderSide(
                    //         width: 1,
                    //         strokeAlign: BorderSide.strokeAlignCenter,
                    //         color: Color(0x19111111),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (bool? value) {},
                          activeColor: Colors.black,
                        ),
                        const Text("Confirm", style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

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

              // Rate Display
              // Container(
              //   padding: const EdgeInsets.all(16),
              //   decoration: BoxDecoration(
              //     color: Colors.grey.shade100,
              //     borderRadius: BorderRadius.circular(5),
              //   ),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           const Text(
              //             'Rate',
              //             style: TextStyle(fontSize: 16, color: Colors.grey),
              //           ),
              //           Text(
              //             '\$${rate.toStringAsFixed(2)}',
              //             style:
              //                 const TextStyle(fontSize: 20, color: Colors.green),
              //           ),
              //         ],
              //       ),
              //       const SizedBox(height: 10),
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           const Text(
              //             'Executed rate',
              //             style: TextStyle(fontSize: 16, color: Colors.grey),
              //           ),
              //           Text(
              //             '\$${executedRate.toStringAsFixed(2)}',
              //             style:
              //                 const TextStyle(fontSize: 20, color: Colors.green),
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),

              // Rate
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
              const SizedBox(height: 20),

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

              //Confirm Button
              // SizedBox(
              //   width: double.infinity,
              //   child: ElevatedButton(
              //     style: ElevatedButton.styleFrom(
              //         backgroundColor: Colors.black,
              //         padding: const EdgeInsets.symmetric(
              //           horizontal: 16,
              //           vertical: 12,
              //         ),
              //         shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(12),
              //         )
              //         //textStyle: const TextStyle(fontSize: 18),
              //         ),
              //     onPressed: () {},
              //     child: const Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         Text(
              //           'Confirm',
              //           style: TextStyle(
              //             color: Color(0xFFFFFFFF),
              //             fontSize: 18,
              //           ),
              //         ),
              //         SizedBox(width: 12),
              //         Icon(
              //           Icons.arrow_forward_ios,
              //           color: Color(0xFFFFFFFF),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
