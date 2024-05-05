import 'package:flutter/material.dart';
import 'package:foodly_ui/demoData.dart';
import '../../constants.dart';
import 'package:foodly_ui/CartModel.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: restaurantMenu.keys.map((restaurantName) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: defaultPadding,
                      vertical: defaultPadding / 2,
                    ),
                    child: Text(
                      restaurantName,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: restaurantMenu[restaurantName]!.length,
                    itemBuilder: (context, index) {
                      final item = restaurantMenu[restaurantName]![index];
                      return Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: defaultPadding,
                          vertical: defaultPadding / 2,
                        ),
                        child: _buildItemCard(context, item),
                      );
                    },
                  ),
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }

  Widget _buildItemCard(BuildContext context, Map<String, dynamic> item) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: ListTile(
        leading: Image.asset(
          item["image"] ?? "No Image",
          width: 80,
          height: 80,
          fit: BoxFit.cover,
        ),
        title: Text(
          item["name"] ?? "No Title",
          style: TextStyle(fontSize: 18),
        ),
        subtitle: Text(
          item["location"] ?? "No Location",
          style: TextStyle(fontSize: 14),
        ),
        onTap: () {
          final cartItem = {
            "name": item["name"] ?? "No Title",
            "price": item["price"]?.toString() ?? "0.00",
            "image": item["image"] ?? "No Image",
          };
          // Provider.of<CartModel>(context, listen: false)
          //     .addItemToCart(cartItem);
        },
      ),
    );
  }
}
