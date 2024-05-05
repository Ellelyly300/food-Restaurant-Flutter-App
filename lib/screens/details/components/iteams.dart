import 'package:flutter/material.dart';
import 'package:foodly_ui/screens/details/details_screen.dart';
import 'package:foodly_ui/screens/onboarding/onboarding_scrreen.dart';
import '../../../components/cards/iteam_card.dart';
import '../../../constants.dart';
import '../../addToOrder/add_to_order_screen.dart';
import '../../../demoData.dart';

class Items extends StatefulWidget {
  final List<Map<String, dynamic>> demoData;

  const Items({Key? key, required this.demoData}) : super(key: key);

  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: defaultPadding),
        ...(widget.demoData.map((item) {
          return Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding / 2),
            child: ItemCard(
              title: item["name"] ?? "No Title",
              description: item["location"] ?? "No Location",
              image: item["image"] ?? "No Image",
              foodType: item["foodType"] ?? "No Food Type",
              price: 0, // ไม่ได้ใช้ราคา
              priceRange: "\$ \$", // ไม่ได้ใช้ราคา
              press: () {
                // ไปยังหน้ารายละเอียดของร้านที่เลือก
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),
                  ),
                );
              },
            ),
          );
        }).toList()),
      ],
    );
  }
}
