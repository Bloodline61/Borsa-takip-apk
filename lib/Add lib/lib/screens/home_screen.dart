import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> bist100 = [
    {"symbol": "THYAO", "price": 249.50, "change": 2.3},
    {"symbol": "KRDMD", "price": 51.90, "change": -1.5},
    {"symbol": "ASELS", "price": 88.40, "change": 0.7},
    {"symbol": "SISE", "price": 56.80, "change": 1.1},
    {"symbol": "TUPRS", "price": 412.70, "change": -0.4},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BIST100 Takip")),
      body: ListView.builder(
        itemCount: bist100.length,
        itemBuilder: (context, index) {
          final stock = bist100[index];
          return ListTile(
            title: Text(stock['symbol']),
            subtitle: Text("Fiyat: \${stock['price']} ₺"),
            trailing: Text(
              "\${stock['change']}%",
              style: TextStyle(
                color: stock['change'] >= 0 ? Colors.green : Colors.red,
              ),
            ),
          );
        },
      ),
    );
  }
}
