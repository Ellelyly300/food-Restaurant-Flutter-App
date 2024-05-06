import 'package:flutter/material.dart';

import '../../../components/cards/iteam_card.dart';
import '../../../constants.dart';
import '../../addToOrder/add_to_order_screen.dart';

class Items extends StatefulWidget {
  const Items({super.key});

  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
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
        // SizedBox(height: defaultPadding),
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
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddToOrderScrreen(),
                ),
              ),
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
    "image": "assets/images/featured_items_1.png",
    "title": "Menu Item 1",
    "description": "Description of Menu Item 1",
    "price": 9.99,
    "foodType": "Italian",
    "priceRange": "\฿" * 3,
  },
  {
    "image": "assets/images/featured_items_2.png",
    "title": "Menu Item 2",
    "description": "Description of Menu Item 2",
    "price": 7.99,
    "foodType": "Chinese",
    "priceRange": "\฿" * 2,
  },
  {
    "image": "assets/images/featured_items_3.png",
    "title": "Menu Item 3",
    "description": "Description of Menu Item 3",
    "price": 6.49,
    "foodType": "Mexican",
    "priceRange": "\฿",
  },
  // เพิ่มรายการเมนูเพิ่มเติมตามที่ต้องการ
];
