// import 'package:flutter/material.dart';
// import 'package:dream_emirates/custom_widgets/app_buttons.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: VirtualBuyScreen(),
//     );
//   }
// }

// class VirtualBuyScreen extends StatefulWidget {
//   const VirtualBuyScreen({super.key});

//   @override
//   VirtualBuyScreenState createState() => VirtualBuyScreenState();
// }

// class VirtualBuyScreenState extends State<VirtualBuyScreen> {
//   int quantity = 1;
//   double rate = 252.03;
//   String? selectedMetal;

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: const Color(0xFFF3F6FF),
//         appBar: AppBar(
//           backgroundColor: const Color(0xFFFFFFFF),
//           elevation: 0,
//           flexibleSpace: Padding(
//             padding: const EdgeInsets.all(16),
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                     const SizedBox(
//                       width: 54,
//                       height: 18,
//                       child: Text(
//                         "9:41",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           color: Color(0xFF252A31),
//                           fontSize: 15,
//                           fontWeight: FontWeight.w600,
//                           height: 0,
//                           letterSpacing: -0.30,
//                         ),
//                       ),
//                     ),
//                     const Spacer(),
//                     SizedBox(
//                       width: 17,
//                       height: 10.67,
//                       child: Image.asset(
//                         'images/cellular_connection.png',
//                       ),
//                     ),
//                     const SizedBox(width: 4),
//                     SizedBox(
//                       width: 15.33,
//                       height: 11,
//                       child: Image.asset(
//                         'images/wifi.png',
//                       ),
//                     ),
//                     const SizedBox(width: 4),
//                     SizedBox(
//                       width: 24.33,
//                       height: 11.33,
//                       child: Image.asset(
//                         'images/battery.png',
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 10),
//                 Row(
//                   children: [
//                     Container(
//                       width: double.infinity,
//                       color: const Color(0xFFFFFFFF),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           IconButton(
//                             icon: Image.asset(
//                               'images/arrow-left.png',
//                               width: 24.0,
//                               height: 24.0,
//                             ),
//                             onPressed: () {},
//                           ),
//                           const SizedBox(width: 24),
//                           const SizedBox(
//                             width: 262,
//                             child: Text(
//                               'Virtual Buy',
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                 color: Color(0xFF252A31),
//                                 fontSize: 17,
//                                 fontWeight: FontWeight.w600,
//                                 height: 0.08,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16.0),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   color: const Color(0xFFFFFFFF),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Row(
//                         children: [
//                           Checkbox(
//                             value: true,
//                             onChanged: (bool? value) {},
//                             activeColor: Colors.black,
//                           ),
//                           const Text("Info", style: TextStyle(fontSize: 16)),
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           Checkbox(
//                             value: true,
//                             onChanged: (bool? value) {},
//                             activeColor: Colors.black,
//                           ),
//                           const Text(
//                             "Confirm",
//                             style: TextStyle(
//                               color: Color(0xFF1A1A1A),
//                               fontSize: 14,
//                               fontWeight: FontWeight.w400,
//                               height: 0.12,
//                               letterSpacing: 0.14,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 DropdownButtonFormField<String>(
//                   decoration: const InputDecoration(
//                     labelText: 'Metal type',
//                     border: OutlineInputBorder(),
//                   ),
//                   value: selectedMetal,
//                   onChanged: (String? newValue) {
//                     setState(() {
//                       selectedMetal = newValue;
//                     });
//                   },
//                   items: <String>['Gold', 'Silver', 'Platinum']
//                       .map<DropdownMenuItem<String>>((String value) {
//                     return DropdownMenuItem<String>(
//                       value: value,
//                       child: Text(value),
//                     );
//                   }).toList(),
//                 ),
//                 const SizedBox(height: 20),
//                 Row(
//                   children: [
//                     Expanded(
//                       child: Container(
//                         height: 48,
//                         padding: const EdgeInsets.all(12),
//                         decoration: BoxDecoration(
//                           color: const Color(0xFFE8ECF9),
//                           border: Border.all(
//                             width: 1,
//                             color: const Color(0x19111111),
//                           ),
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             IconButton(
//                               alignment: Alignment.center,
//                               icon:
//                                   const Icon(Icons.remove, color: Colors.black),
//                               onPressed: () {
//                                 setState(() {
//                                   if (quantity > 1) {
//                                     quantity--;
//                                   }
//                                 });
//                               },
//                             ),
//                             Text(
//                               '$quantity',
//                               style: const TextStyle(
//                                 color: Color(0xFF111111),
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.w400,
//                                 height: 0.10,
//                               ),
//                             ),
//                             IconButton(
//                               icon: const Icon(Icons.add, color: Colors.black),
//                               onPressed: () {
//                                 setState(() {
//                                   quantity++;
//                                 });
//                               },
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 20),
//                 Container(
//                   padding: const EdgeInsets.all(12),
//                   decoration: BoxDecoration(
//                     color: const Color(0xFFE9EDF9),
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Text(
//                         '\$${rate.toStringAsFixed(2)}',
//                         style: const TextStyle(
//                           color: Color(0xFF28BD5A),
//                           fontSize: 15,
//                           fontWeight: FontWeight.w700,
//                           height: 0,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 const AppButtons(
//                   backgroundColor: Color(0xFF111111),
//                   borderColor: Color(0xFF111111),
//                   borderWidth: 1,
//                   borderRadius: 12,
//                   text: "Next",
//                   textColor: Colors.white,
//                   fontSize: 15,
//                   fontWeight: 400,
//                   paddingHorizontal: 16,
//                   paddingVertical: 12,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
