import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'my_receipt.dart'; // Import my_receipt.dart

class PaymentPage extends StatefulWidget {
  final List<Map<String, dynamic>> orderedItems; // รับรายการสินค้าที่เลือกมา
  final double totalPrice; // รับราคารวมมา

  const PaymentPage({
    Key? key,
    required this.orderedItems,
    required this.totalPrice,
  }) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  List<Map<String, dynamic>> selectedItems =
      []; // สร้างตัวแปรเก็บรายการสินค้าที่เลือก

  void userTappedPay() {
    if (formKey.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Confirm payment"),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text("Card Number: $cardNumber"),
                Text("Expiry Date: $expiryDate"),
                Text("Card Holder name: $cardHolderName"),
                Text("CVV: $cvvCode"),
              ],
            ),
          ),
          actions: [
            //cancel
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel"),
            ),
            //yes
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyReceipt(
                      orderedItems: widget.orderedItems,
                      totalPrice: widget.totalPrice,
                    ),
                  ),
                );
              },
              child: const Text("YES"),
            )
          ],
        ),
      );
    }
  }

  // คำนวณราคารวม
  double calculateTotalPrice() {
    double totalPrice = 0;
    for (var item in selectedItems) {
      totalPrice += item['price'];
    }
    return totalPrice;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Checkout"),
      ),
      body: Column(
        children: [
          //credit card
          CreditCardWidget(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            showBackView: isCvvFocused,
            onCreditCardWidgetChange: (p0) {},
          ),

          //credit card form
          CreditCardForm(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            onCreditCardModelChange: (data) {
              setState(() {
                cardNumber = data.cardNumber;
                expiryDate = data.expiryDate;
                cardHolderName = data.cardHolderName;
                cvvCode = data.cvvCode;
              });
            },
            formKey: formKey,
          ),
          const Spacer(),

          ElevatedButton(
            // Replaced MyButton with ElevatedButton
            onPressed:
                userTappedPay, // Call userTappedPay function when button is pressed
            child: Text('Pay now'), // Button text
          ),
        ],
      ),
    );
  }
}
