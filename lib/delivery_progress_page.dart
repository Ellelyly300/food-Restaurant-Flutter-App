import 'package:flutter/material.dart';
import 'package:foodly_ui/my_receipt.dart';

class DeliveryProgressPage extends StatelessWidget {
  const DeliveryProgressPage({Key? key})
      : super(key: key); // Add key parameter and call super constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Delivery in Progress"),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          MyReceipt(
            // Pass required parameters to MyReceipt widget
            orderedItems: [], // Pass ordered items list
            totalPrice: 0, // Pass total price
          ),
        ],
      ),
    );
  }
}
