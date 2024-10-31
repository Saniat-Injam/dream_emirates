import 'package:flutter/material.dart';
import 'package:dream_emirates/phase2/part2/e_pending_buy_info.dart';
import 'package:dream_emirates/phase2/part2/f_pending_buy_confirm.dart';

void main() {
  runApp(const TradingApp());
}

class TradingApp extends StatelessWidget {
  const TradingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ConfirmScreen(),
      routes: {
        '/info': (context) => const TradeInfoScreen(),
        '/confirm': (context) => const ConfirmScreen(),
      },
    );
  }
}
