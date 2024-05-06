import "package:flutter/material.dart";
import "package:foodly_ui/my_receipt.dart";

class DeliveryProgressPage extends StatelessWidget {
  const DeliveryProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Delivery in Progress"),
      backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [MyReceipt(),],
      ),
    );
  }
}
