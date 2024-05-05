import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:foodly_ui/constants.dart';
=======
import 'package:foodly_ui/components/buttons/primary_button.dart';
import 'package:foodly_ui/screens/home/home_screen.dart';
import '../../constants.dart';
>>>>>>> 45deca006def9cbc833eb902a711655a43c8f9c4

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
