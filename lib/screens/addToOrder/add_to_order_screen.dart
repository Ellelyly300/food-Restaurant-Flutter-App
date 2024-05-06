import 'package:flutter/material.dart';
import 'package:foodly_ui/screens/orderDetails/order_details_screen.dart';
import '../../../components/cards/iteam_card.dart';
import '../../../constants.dart';
import '../../addToOrder/order_details_screen.dart';

class Items extends StatefulWidget {
  const Items({Key? key});

  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  double totalPrice = 0; // เพิ่มตัวแปรเก็บราคารวม

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefaultTabController(
          length: demoTabs.length,
          child: TabBar(
            isScrollable: true,
            unselectedLabelColor: titleColor,
            labelStyle: Theme.of(context).textTheme.titleLarge,
            onTap: (value) {
              // you will get selected tab index
            },
            tabs: demoTabs,
          ),
        ),
        ...List.generate(
          demoData.length,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding / 2),
            child: ItemCard(
              title: demoData[index]["title"],
              description: demoData[index]["description"],
              image: demoData[index]["image"],
              foodType: demoData[index]['foodType'],
              price: demoData[index]["price"],
              priceRange: demoData[index]["priceRange"],
              press: () {
                // ส่งออเดอร์ไปยังหน้า OrderDetailsScreen และบวกยอดรวม
                setState(() {
                  totalPrice += demoData[index]["price"];
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderDetailsScreen(totalPrice: totalPrice, selectedItems: [],),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

final List<Tab> demoTabs = <Tab>[
  const Tab(
    child: Text('All Menu'),
  )
];

final List<Map<String, dynamic>> demoData = [
  {
    "image": "assets/images/ไก่ทอดคลุกซอสเกาหลี.png",
    "title": "ไก่ทอดคลุกซอสเกาหลี",
    "description": "ไก่ทอดที่ทอดจนหอมกรุ่น คลุกเคล้าด้วยซอสเกาหลีสุดเจ้มจ้น",
    "price": 7.99,
    "foodType": "Korean Fried Chicken",
    "priceRange": "\$" * 3,
  },
  {
    "image": "assets/images/featured_items_2.png",
    "title": "Menu Item 2",
    "description": "Description of Menu Item 2",
    "price": 7.99,
    "foodType": "Chinese",
    "priceRange": "\$" * 2,
  },
  {
    "image": "assets/images/featured_items_3.png",
    "title": "Menu Item 3",
    "description": "Description of Menu Item 3",
    "price": 6.49,
    "foodType": "Mexican",
    "priceRange": "\$",
  },
];
