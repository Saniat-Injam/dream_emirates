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
      home: TradesPage(),
    );
  }
}

class TradesPage extends StatefulWidget {
  const TradesPage({super.key});
  @override
  TradesPageState createState() => TradesPageState(); // Removed the underscore
}

class TradesPageState extends State<TradesPage> {
  // Removed the underscore
  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFE8EDF1),
        appBar: AppBar(
          backgroundColor: const Color(0xFFFFFFFF),
          elevation: 1,
          leading: const Icon(Icons.arrow_back_ios, color: Colors.black),
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Account 1',
                    style: TextStyle(
                      color: Color(0xFF111111),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_down),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.arrow_downward, color: Colors.blue),
                  SizedBox(width: 16),
                  Icon(Icons.arrow_upward, color: Colors.orange),
                  SizedBox(width: 16),
                  Icon(Icons.timer, color: Colors.black),
                ],
              )
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              color: const Color(0xFFFFFFFF),
              padding: const EdgeInsets.only(
                  top: 10, left: 16, right: 10, bottom: 9),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "P/L 9.0330",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Buy 2034.55',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Sell 2034.55',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: const Color(0xFFFFFFFF),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(onPressed: () {}, child: const Text("Open")),
                  TextButton(
                      onPressed: () {},
                      child: const Text("Pending",
                          style: TextStyle(fontWeight: FontWeight.bold))),
                  TextButton(onPressed: () {}, child: const Text("Closed")),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Card(
                    color: const Color(0xFFFFFFFF).withOpacity(0.9),
                    margin:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'ID: 1234',
                                style: TextStyle(
                                  color: Color(0xFF111111),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  height: 0.09,
                                ),
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'P/L',
                                      style: TextStyle(
                                        color: Color(0xFF111111),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        height: 0.12,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      '7.80079',
                                      style: TextStyle(
                                        color: Color(0xFF29BD5B),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        height: 0.10,
                                      ),
                                    ),
                                  ]),
                            ],
                          ),
                          const SizedBox(height: 20),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Type: TTB"),
                                  SizedBox(height: 12),
                                  Text("Quantity: 4"),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("Live rate: 155.84"),
                                  SizedBox(height: 12),
                                  Text("Opening rate: 155.84"),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Container(
                            decoration: const ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0x19111111),
                                ),
                              ),
                            ),
                          ),

                          // Button row
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // Container(
                              //   padding: const EdgeInsets.symmetric(
                              //       horizontal: 8, vertical: 4),
                              //   decoration: BoxDecoration(
                              //     color: Colors.grey[200],
                              //     borderRadius: BorderRadius.circular(4),
                              //   ),
                              //   child: const Text("Pending"),
                              // ),
                              // Green Outlined Button
                              OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: const Color(0x1928BD5A),
                                  side: const BorderSide(
                                      color: Color(0xFF28BD5A),
                                      width: 0.50), // Outline color and width
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        20), // Rounded corners
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 4),
                                  child: Text(
                                    "Open",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF0CAB41),
                                      fontSize: 12,
                                      letterSpacing: 0.5,
                                      fontWeight: FontWeight.w400,
                                      height: 0.11,
                                    ), // Text color
                                  ),
                                ),
                              ),
                              // ElevatedButton(
                              //   onPressed: () {},
                              //   style: ElevatedButton.styleFrom(
                              //     backgroundColor: index == 1
                              //         ? Colors.orange
                              //         : Colors.lightBlue,
                              //     shape: RoundedRectangleBorder(
                              //         borderRadius: BorderRadius.circular(12)),
                              //   ),
                              //   child: Text(index == 1 ? "Sell" : "Buy"),
                              // ),
                              OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: index == 1
                                      ? const Color(0xFFECA414)
                                          .withOpacity(0.10)
                                      : const Color(0x190088FF),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  side: const BorderSide(
                                    color: Color(0xFF0088FF),
                                    width: 0.50,
                                  ),
                                ),
                                child: Text(index == 1 ? "Sell" : "Buy"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              //icon: Icon(Icons.home),
              icon: Image.asset(
                "images/home_logo.png",
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              //icon: Icon(Icons.account_circle),
              icon: Image.asset("images/account_logo.png"),

              label: 'Account',
            ),
            BottomNavigationBarItem(
              //icon: Icon(Icons.receipt_long),
              icon: Image.asset("images/trade_logo.png"),
              label: 'Trades',
            ),
            BottomNavigationBarItem(
              //icon: Icon(Icons.more_horiz),
              icon: Image.asset("images/more_logo.png"),
              label: 'More',
            ),
          ],
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.grey,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.black,
          child: const Icon(Icons.search, color: Colors.white),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      ),
    );
  }
}
