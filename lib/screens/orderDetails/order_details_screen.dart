import 'package:flutter/material.dart';
import 'package:foodly_ui/constants.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Orders"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            children: [
              const SizedBox(height: defaultPadding),
              // Placeholder for future order summary
              Center(
                child: Text(
                  "Your order details will be displayed here.",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              const SizedBox(height: defaultPadding * 2),
              // Remove the "Continue Shopping" button
            ],
          ),
        ),
      ),
    );
  }
}
