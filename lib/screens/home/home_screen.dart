<<<<<<< HEAD
=======
import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
>>>>>>> 45deca006def9cbc833eb902a711655a43c8f9c4
import 'package:flutter/material.dart';

import '../../components/cards/big/big_card_image_slide.dart';
import '../../components/cards/big/restaurant_info_big_card.dart';
import '../../components/section_title.dart';
import '../../constants.dart';
import '../../demoData.dart';
import '../../screens/filter/filter_screen.dart';
import '../details/details_screen.dart';
import '../featured/featurred_screen.dart';
import 'components/medium_card_list.dart';
import 'components/promotion_banner.dart';

<<<<<<< HEAD
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
=======
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
>>>>>>> 45deca006def9cbc833eb902a711655a43c8f9c4

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(9999.0),
            child: FittedBox(
              fit: BoxFit.cover,
              child: Image.network(
                FirebaseAuth.instance.currentUser?.photoURL ??
                    'https://www.ilovejapantours.com/images/easyblog_articles/6/doraemon-gadget-cat-from-the-future-wallpaper-4.jpg',
              ),
            ),
          ),
        ),
        title: Column(
          children: [
            Text(
              "Delivery to".toUpperCase(),
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: primaryColor),
            ),
            const Text(
              "Asoke, Bangkok",
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
<<<<<<< HEAD
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FilterScreen(),
                ),
              );
            },
            child: Text(
              "Filter",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ],
=======
>>>>>>> 45deca006def9cbc833eb902a711655a43c8f9c4
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: defaultPadding),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: BigCardImageSlide(images: demoBigImages),
              ),
              const SizedBox(height: defaultPadding * 2),
              SectionTitle(
                title: "Featured Partners",
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FeaturedScreen(),
                  ),
                ),
              ),
              const SizedBox(height: defaultPadding),
              const MediumCardList(),
              const SizedBox(height: 20),
              // Banner
              // const PromotionBanner(), หน้าโปรโมชั่น
              const SizedBox(height: 20),
              SectionTitle(
                title: "Best Pick",
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FeaturedScreen(),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const MediumCardList(),
              const SizedBox(height: 20),
              SectionTitle(title: "All Restaurants", press: () {}),
              const SizedBox(height: 16),

              // Demo list of Big Cards
<<<<<<< HEAD
              ...List.generate(
                // For demo we use 4 items
                3,
                (index) => Padding(
                  padding: const EdgeInsets.fromLTRB(
                      defaultPadding, 0, defaultPadding, defaultPadding),
                  child: RestaurantInfoBigCard(
                    // Images are List<String>
                    images: demoBigImages..shuffle(),
                    name: "McDonald's",
                    rating: 4.3,
                    numOfRating: 200,
                    deliveryTime: 25,
                    foodType: const ["Chinese", "American", "Deshi food"],
                    press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailsScreen(),
=======
              Column(
                children: demoMediumCardData.map((restaurant) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(
                      defaultPadding, 0, defaultPadding, defaultPadding),
                    child: RestaurantInfoBigCard(
                      // Use demoBigImages list
                      images: [restaurant["image"]],
                      // Use demoRestaurantNames list for name
                      name: restaurant["name"],
                      rating: restaurant["rating"],
                      numOfRating: 200,
                      deliveryTime: restaurant["delivertTime"],
                      foodType: const ["Fried Chicken"],
                      press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailsScreen(),
                        ),
>>>>>>> 45deca006def9cbc833eb902a711655a43c8f9c4
                      ),
                    ),
                  ),
                ),
                
                

              )
            ],
          ),
        ),
      ),
    );
  }
}
<<<<<<< HEAD
=======

>>>>>>> 45deca006def9cbc833eb902a711655a43c8f9c4
