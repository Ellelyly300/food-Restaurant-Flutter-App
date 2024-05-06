import 'package:flutter/material.dart';
import 'package:foodly_ui/constants.dart';
import 'package:foodly_ui/payment_page.dart';

class OrderDetailsScreen extends StatefulWidget {
  final double totalPrice; // รับพารามิเตอร์ totalPrice
  final List<Map<String, dynamic>>
      selectedItems; // เพิ่มพารามิเตอร์สำหรับรายการสินค้าที่เลือก

  const OrderDetailsScreen({
    Key? key,
    required this.totalPrice,
    required this.selectedItems, // เพิ่มพารามิเตอร์ selectedItems
  }) : super(key: key);

  @override
  _OrderDetailsScreenState createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  int itemCount = 1; // เพิ่มตัวแปรเก็บจำนวนสินค้า

  @override
  Widget build(BuildContext context) {
    double totalPrice =
        widget.totalPrice; // กำหนดค่า totalPrice โดยใช้ค่าเริ่มต้นจาก widget

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
              // แสดงยอดรวมทั้งหมด
              Text(
                "Total Price: \$${totalPrice.toStringAsFixed(2)}",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: defaultPadding * 2),
              // แสดงรายการสินค้าที่เลือก
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: widget.selectedItems.length,
                itemBuilder: (context, index) {
                  final item = widget.selectedItems[index];
                  final price = item["price"] as double;
                  return ListTile(
                    title: Row(
                      children: [
                        Text(item["title"]),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            // ลดจำนวนสินค้าและ totalPrice
                            setState(() {
                              if (itemCount > 1) {
                                itemCount--;
                                totalPrice -= price;
                              }
                            });
                          },
                        ),
                        Text('$itemCount'),
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            // เพิ่มจำนวนสินค้าและ totalPrice
                            setState(() {
                              itemCount++;
                              totalPrice += price;
                            });
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaymentPage(),
                    ),
                  );
                },
                child: Text("Go to checkout"),
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
