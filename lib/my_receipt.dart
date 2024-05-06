import 'package:flutter/material.dart';

class MyReceipt extends StatelessWidget {
  final List<Map<String, dynamic>> orderedItems; // รับรายการสินค้าที่เลือกมา
  final double totalPrice; // รับราคารวมมา

  const MyReceipt({
    Key? key,
    required this.orderedItems,
    required this.totalPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Thank you for your order!",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
            ),
            const SizedBox(height: 25),
            ListView.separated(
              shrinkWrap: true,
              itemCount: orderedItems.length,
              separatorBuilder: (context, index) => Divider(),
              itemBuilder: (context, index) {
                final item = orderedItems[index];
                return ListTile(
                  title: Text(
                    item["title"],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "Price: \$${item["price"]}",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 10),
            Text(
              "Total Price: \$${totalPrice.toStringAsFixed(2)}",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
              child: Text("Back to Home"),
            ),
          ],
        ),
      ),
    );
  }
}
