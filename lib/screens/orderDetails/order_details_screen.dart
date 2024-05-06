import 'package:flutter/material.dart';
import 'package:foodly_ui/constants.dart';
import 'package:foodly_ui/my_receipt.dart';
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
  late double totalPrice =
      widget.totalPrice; // กำหนดค่า totalPrice โดยใช้ค่าเริ่มต้นจาก widget
  late List<Map<String, dynamic>> selectedItems = widget.selectedItems;

  @override
  Widget build(BuildContext context) {
    @override
    void initState() {
      selectedItems = widget.selectedItems;
      selectedItems.map((e) {
        e['itemCount'] = 1;
        return e;
      });
      super.initState();
    }

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
                itemCount: selectedItems.length,
                itemBuilder: (context, index) {
                  final item = selectedItems[index];
                  final price = item["price"] as double;
                  // int currItemCount = 1;
                  // if (item["itemCount"] == null) {
                  //   selectedItems.map((e) {
                  //     e['itemCount'] = 1;
                  //     return e;
                  //   });
                  // } else {
                  //   currItemCount = item['itemCount'] as int;
                  // }

                  return ListTile(
                    title: Row(
                      children: [
                        Text(item["title"]),
                        const Spacer(),
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            // ลดจำนวนสินค้าและ totalPrice
                            setState(() {
                              if (itemCount == 1) {
                                selectedItems.removeWhere(
                                    (i) => i['title'] == item['title']);
                                totalPrice -= price;
                              }

                              if (itemCount > 1) {
                                itemCount -= 1;
                                totalPrice -= price;
                              }
                            });

                            // selectedItems.map((e) {
                            //   if (e['title'] == item['title']) {
                            //     e['itemCount'] = itemCount;
                            //   }
                            //   return e;
                            // });
                            // setState(() {});
                          },
                        ),
                        Text('$itemCount'),
                        IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            // เพิ่มจำนวนสินค้าและ totalPrice
                            setState(() {
                              // selectedItems.map((e) {
                              //   if (e['title'] == item['title']) {
                              //     e['itemCount'] = itemCount + 1;
                              //   }
                              //   return e;
                              // });
                              // selectedItems = [...selectedItems];

                              totalPrice += price;
                              itemCount += 1;
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
                      builder: (context) => PaymentPage(
                        orderedItems: selectedItems,
                        totalPrice: totalPrice,
                      ),
                    ),
                  );
                },
                child: Text("Go to Payment"),
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
