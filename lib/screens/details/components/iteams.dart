import 'package:flutter/material.dart';
import 'package:foodly_ui/components/cards/iteam_card.dart';
import 'package:foodly_ui/constants.dart';
import '../../orderDetails/order_details_screen.dart'; // import OrderDetailsScreen

class Items extends StatefulWidget {
  const Items({Key? key});

  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  double totalPrice = 0; // เพิ่มตัวแปรเก็บราคารวม
  List<Map<String, dynamic>> selectedItems =
      []; // เพิ่มตัวแปรเก็บรายการสินค้าที่เลือก

  void addToCart(Map<String, dynamic> item) {
    setState(() {
      totalPrice += item["price"];
      selectedItems.add(item);
      // totalPrice = item['price'];
      // selectedItems = [item];
    });
    // Navigate to OrderDetailsScreen
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OrderDetailsScreen(
            totalPrice: totalPrice, selectedItems: selectedItems),
      ),
    );
  }

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
                // เพิ่มรายการสินค้าที่เลือกลงในรายการ selectedItems และส่งไปยังหน้า OrderDetailsScreen
                addToCart(demoData[index]);
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
    "description":
        "อร่อยเด็ดไม่แพ้ร้านดัง ปีกไก่ทอดกรอบๆ แล้วเอามาคลุกซอสเกาหลีฉ่ำๆ หวานนิด เผ็ดหน่อย กรอบนอกนุ่มใน อร่อยจนหยุดไม่ได้ ",
    "price": 20.99,
    "foodType": "ไก่ทอด",
    "priceRange": "\฿" * 4,
  },
  {
    "image": "assets/images/ไก่ทอดคาราอาเกะ.jpg",
    "title": "ไก่ทอดคาราอาเกะ",
    "description":
        "มีความกรอบและความนุ่มชุ่มฉ่ำของเนื้อไก่ แบบซี้ดดดด เข้าเนื้อ ต้องลอง!!",
    "price": 30.99,
    "foodType": "ไก่ทอด",
    "priceRange": "\฿" * 4,
  },
  {
    "image": "assets/images/ไก่ทอดซอสน้ำผึ้งกระเทียม.jpg",
    "title": "ไก่ทอดซอสน้ำผึ้งกระเทียม",
    "description": "ไก่กรอบเคล้าซอสน้ำผึ้งกระเทียมแบบยั่วๆ เด็ดจนยั้งมือไม่ได้",
    "price": 35.99,
    "foodType": "ไก่ทอด",
    "priceRange": "\฿" * 5,
  },
  {
    "image": "assets/images/ไก่ทอดซอสบาบีคิว.jpg",
    "title": "ไก่ทอดซอสบาบีคิว",
    "description": "ไก่ทอดแสนกรุบกรอบ ชุ่มซอสบาบีคิวรสเข้มข้นหอมเครื่องเทศ",
    "price": 35.99,
    "foodType": "ไก่ทอด",
    "priceRange": "\฿" * 3,
  },
  {
    "image": "assets/images/ไก่ทอดซอสหัวหอม.jpg",
    "title": "ไก่ทอดซอสหัวหอม",
    "description":
        "ไก่ปรุงรสเข้มข้นทอดกรอบๆเนื้อไก่นุ่มๆ ซอสรสชาติกลมกล่อม ทานพร้อมหัวหอมใหญ่ เข้ากันมากกกก",
    "price": 40.99,
    "foodType": "ไก่ทอด",
    "priceRange": "\฿" * 5,
  },
  {
    "image": "assets/images/ข้าวเหนียวไก่ทอด.png",
    "title": "ข้าวเหนียวไก่ทอด",
    "description":
        "ระเบิดความกรอบให้ทั่วปาก กับสูตรหมักไก่เฉพาะของทางร้าน แทะกันให้สะท้านลิ้น กินอิ่มจนท้องแตก",
    "price": 30.99,
    "foodType": "ไก่ทอด",
    "priceRange": "\฿" * 5,
  },
  {
    "image": "assets/images/ไก่ทอดผัดเปรี้ยวหวาน.jpg",
    "title": "ไก่ทอดผัดเปรี้ยวหวาน",
    "description":
        "เปรี่ยวๆ หวานๆ  กินกับหวานใจ อะไรก็หวานจัง กับรถชาติที่คุ้นเคย โดนใจทุกคำ",
    "price": 38.99,
    "foodType": "ไก่ทอด",
    "priceRange": "\฿" * 5,
  },
  {
    "image": "assets/images/ไก่ทอดพริกอินโด.jpg",
    "title": "ไก่ทอดพริกอินโด โอ้โหอร่อยเด็ด",
    "description": "แค่เห็นก็น้ำลายสอ กับเมนูไก่สุดยั่ว! รสเด็ดสุดจี๊ด",
    "price": 45.99,
    "foodType": "ไก่ทอด",
    "priceRange": "\฿" * 4,
  },
  {
    "image": "assets/images/ไก่ทอดสับ.jpg",
    "title": "ไก่ทอดสับ ปั๋บๆๆๆ",
    "description": "บอกเลย อร่อยจนลืมคนข้างๆเลยล่ะ",
    "price": 25.99,
    "foodType": "ไก่ทอด",
    "priceRange": "\฿" * 5,
  },
  {
    "image": "assets/images/ข้าวมันไก่ทอด.jpg",
    "title": "ข้าวมั๊นไก่ทอด",
    "description":
        "แค่เห็นก็น้ำลายสอ กับเมนูไก่สุดยั่ว! รสเด็ดสุดจี๊ด น้ำซุปสุดฟินนน",
    "price": 45.99,
    "foodType": "ไก่ทอด",
    "priceRange": "\฿" * 5,
  },
  {
    "image": "assets/images/ลาบไก่ทอด.jpg",
    "title": "ลาบไก่ทอด",
    "description": "แซ่บ กินแล้วกลายเป็นคนแซ่บๆๆๆๆ",
    "price": 35.99,
    "foodType": "ไก่ทอด",
    "priceRange": "\฿" * 5,
  },
  {
    "image": "assets/images/ปีกไก่ทอด.jpg",
    "title": "ปีกไก่ทอด",
    "description": "บอกเลยว่า เด็ด ลืมมมมมมมม",
    "price": 39.99,
    "foodType": "ไก่ทอด",
    "priceRange": "\฿" * 5,
  },
  {
    "image": "assets/images/ไก่ทอดหน้าโรงเรียน.jpg",
    "title": "ไก่ทอดหน้าโรงเรียน",
    "description": "ย้อนวัย เป็นน้องมัธยม รอแฟนซื้อไก่ทอด เกร๋ๆ",
    "price": 15.99,
    "foodType": "ไก่ทอด",
    "priceRange": "\฿" * 4,
  },
  {
    "image": "assets/images/ไก่ทอดหาดใหญ่.jpg",
    "title": "ไก่ทอดหาดใหญ่",
    "description": "เจ้าเด็ด เจ้าเก่า เจ้าเดิม อร่อยจนเหลียวหลัง",
    "price": 49.99,
    "foodType": "ไก่ทอด",
    "priceRange": "\฿" * 5,
  },
  {
    "image": "assets/images/ไก่ทอดบ้านๆ.jpg",
    "title": "ไก่ทอดบ้านๆ",
    "description": "ไก่ทอดบ้านๆจ้า บ้านไผก่อน",
    "price": 30.99,
    "foodType": "ไก่ทอด",
    "priceRange": "\฿" * 5,
  },
  {
    "image": "assets/images/ไก่ทอดซอสน้ำปลา.png",
    "title": "ไก่ทอดซอสน้ำปลา",
    "description": "อร่อยถูกใจ อนามัยถูกลืม อ๊ะหยอกเล่น",
    "price": 60.99,
    "foodType": "ไก่ทอด",
    "priceRange": "\฿" * 5,
  },
];
