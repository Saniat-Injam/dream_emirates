import 'package:dream_emirates/phase2/part2/pending_buy_1.dart';
import 'package:dream_emirates/phase2/part2/pending_buy_2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const TradingApp());
}

class TradingApp extends StatelessWidget {
  const TradingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TradeInfoScreen(),
      routes: {
        '/confirm': (context) => const ConfirmScreen(),
      },
    );
  }
}
