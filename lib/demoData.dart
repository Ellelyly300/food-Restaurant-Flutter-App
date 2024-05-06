// It contains all our demo data that we used
final List<String> demoRestaurantNames = [
  "ไก่ทอด หาดหย่าย สูตรเด็ด เจ้าดัง",
  "บ้านไก่เกาหลี อร่อยกว่าบอนชอน",
  "ไก่ทอด ลุงพล ป้าแต๋น",
  "ไก่ทอดร้านนี้ กินแล้วรวย สวยหล่อ",
  "ไก่ทอดข้างทาง อุุดหนุนป้าหน่อยลูก",
  // Add more restaurant names here as needed
];

final Map<String, String> restaurantImages = {
  "ไก่ทอด หาดหย่าย สูตรเด็ด เจ้าดัง": "assets/images/ไก่ทอดซอสหัวหอม.jpg",
  "บ้านไก่เกาหลี อร่อยกว่าบอนชอน": "assets/images/ลาบไก่ทอด.jpg",
  "ไก่ทอด ลุงพล ป้าแต๋น": "assets/images/ปีกไก่ทอด.jpg",
  "ไก่ทอดร้านนี้ กินแล้วรวย สวยหล่อ": "assets/images/ข้าวเหนียวไก่ทอด.png",
  // Add more restaurant names and images here as needed
};

List<String> demoBigImages = [
  "assets/images/ไก่ทอดซอสหัวหอม.jpg",
  "assets/images/ลาบไก่ทอด.jpg",
  "assets/images/ปีกไก่ทอด.jpg",
  "assets/images/ข้าวเหนียวไก่ทอด.png",
  "assets/images/ไก่ทอดคลุกซอสเกาหลี.png",
  "assets/images/ไก่ทอดสับ.jpg",
  "assets/images/ข้าวเหนียวไก่ทอด.png",
  "assets/images/ไก่ทอดคาราอาเกะ.jpg",
  "assets/images/ไก่ทอดบ้านๆ.jpg"
  "assets/images/ไก่ทอดซอสบาบีคิว.jpg"
  "assets/images/ไก่ทอดซอสน้ำปลา.jpg"
];

List<Map<String, dynamic>> demoMediumCardData = [
  {
    "name": "บ้านไก่เกาหลี อร่อยกว่าบอนชอน",
    "image": "assets/images/ไก่ทอดคลุกซอสเกาหลี.png",
    "location": "อโศก, กรุงเทพ",
    "rating": 8.6,
    "delivertTime": 20,
  },
  {
    "name": "ไก่ทอด หาดหย่าย สูตรเด็ด เจ้าดัง",
    "image": "assets/images/ไก่ทอดหาดใหญ่.jpg",
    "location": "นานา, กรุงเทพ",
    "rating": 9.1,
    "delivertTime": 35,
  },
  {
    "name": "ไก่ทอด ลุงพล ป้าแต๋น",
    "image": "assets/images/ไก่ทอดซอสน้ำปลา.png",
    "location": "ชิดลม, กรุงเทพ",
    "rating": 7.3,
    "delivertTime": 25,
  },
  {
    "name": "ไก่ทอดร้านนี้ กินแล้วรวย สวยหล่อ",
    "image": "assets/images/ข้าวหมกไก่ทอด.jpg",
    "location": "ทองหล่อ, กรุงเทพ",
    "rating": 8.4,
    "delivertTime": 30,
  },
  {
    "name": "ไก่ทอดข้างทาง อุุดหนุนป้าหน่อยลูก",
    "image": "assets/images/ปีกไก่ทอด.jpg",
    "location": "มศว, กรุงเทพ",
    "rating": 9.5,
    "delivertTime": 15,
  }
];

final Map<String, List<Map<String, dynamic>>> restaurantMenu = {
  "บ้านไก่เกาหลี อร่อยกว่าบอนชอน": [
    {
      "name": "ไก่ทอดคลุกซอสเกาหลี",
      "location": "อโศก, กรุงเทพ",
      "image": "assets/images/ไก่ทอดคลุกซอสเกาหลี.png",
      "foodType": "ไก่ทอดคลุกซอสเกาหลี",
      "price": 0,
      "priceRange": "\฿ \฿",
    },
    {
      "name": "ไก่ทอดซอสหัวหอม",
      "location": "อโศก, กรุงเทพ",
      "image": "assets/images/ไก่ทอดซอสหัวหอม.jpg",
      "foodType": "ไก่ทอดซอสหัวหอม",
      "price": 0,
      "priceRange": "\฿ \฿",
    },
    {
      "name": "ไก่ทอดคาราอาเกะ",
      "location": "อโศก, กรุงเทพ",
      "image": "assets/images/ไก่ทอดคาราอาเกะ.jpg",
      "foodType": "ไก่ทอดคาราอาเกะ",
      "price": 0,
      "priceRange": "\฿ \฿",
    },
    {
      "name": "ไก่ทอดซอสบาบีคิว",
      "location": "อโศก, กรุงเทพ",
      "image": "assets/images/ไก่ทอดซอสบาบีคิว.jpg",
      "foodType": "ไก่ทอดซอสบาบีคิว",
      "price": 0,
      "priceRange": "\฿ \฿",
    },
  ],
  "ไก่ทอด หาดหย่าย สูตรเด็ด เจ้าดัง": [
    {
      "name": "ไก่ทอดหาดใหญ่",
      "location": "นานา, กรุงเทพ",
      "image": "assets/images/ไก่ทอดหาดใหญ่.png",
      "foodType": "ไก่ทอด",
      "price": 0,
      "priceRange": "\฿ \฿",
    },
    {
      "name": "ข้าวมันไก่",
      "location": "นานา, กรุงเทพ",
      "image": "assets/images/ข้าวหมกไก่ทอด.png",
      "foodType": "ข้าวมันไก่",
      "price": 20,
      "priceRange": "\฿ \฿",
    },
    {
      "name": "ข้าวหมกไก่",
      "location": "ชิดลม, กรุงเทพ",
      "image": "assets/images/ข้าวหมกไก่ทอด.png",
      "foodType": "ข้าวหมกไก่",
      "price": 0,
      "priceRange": "\฿ \฿",
    },
  ],
  "ไก่ทอด ลุงพล ป้าแต๋น": [
    {
      "name": "ไก่ทอดซอสน้ำปลา",
      "location": "นานา, กรุงเทพ",
      "image": "assets/images/ไก่ทอดซอสน้ำปลา.png",
      "foodType": "ไก่ทอดซอสน้ำปลา",
      "price": 0,
      "priceRange": "\฿ \฿",
    },
    {
      "name": "ไก่ทอดสับ",
      "location": "นานา, กรุงเทพ",
      "image": "assets/images/ไก่ทอดสับ.png",
      "foodType": "ไก่ทอดสับ",
      "price": 20,
      "priceRange": "\฿ \฿",
    },
    {
      "name": "ปีกไก่ทอด",
      "location": "ชิดลม, กรุงเทพ",
      "image": "assets/images/ปีกไก่ทอด.png",
      "foodType": "ปีกไก่ทอด",
      "price": 0,
      "priceRange": "\฿ \฿",
    },
  ],
  "ไก่ทอดร้านนี้ กินแล้วรวย สวยหล่อ": [
    {
      "name": "ลาบไก่ทอด",
      "location": "นานา, กรุงเทพ",
      "image": "assets/images/ลาบไก่ทอด.png",
      "foodType": "ลาบไก่ทอด",
      "price": 0,
      "priceRange": "\฿ \฿",
    },
    {
      "name": "ไก่ทอดพริกอินโด",
      "location": "นานา, กรุงเทพ",
      "image": "assets/images/ไก่ทอดพริกอินโด.png",
      "foodType": "ไก่ทอดพริกอินโดบ",
      "price": 20,
      "priceRange": "\฿ \฿",
    },
    {
      "name": "ไก่ทอดผัดเปรี่ยวหวาน",
      "location": "ชิดลม, กรุงเทพ",
      "image": "assets/images/ไก่ทอดผัดเปรี่ยวหวาน.png",
      "foodType": "ไก่ทอดผัดเปรี่ยวหวาน",
      "price": 0,
      "priceRange": "\฿ \฿",
    },
  ],
  "ไก่ทอดข้างทาง อุุดหนุนป้าหน่อยลูก": [
    {
      "name": "ไก่ทอดหน้าโรงเรียน",
      "location": "นานา, กรุงเทพ",
      "image": "assets/images/ไก่ทอดหน้าโรงเรียน.png",
      "foodType": "ไก่ทอดหน้าโรงเรียน",
      "price": 0,
      "priceRange": "\฿ \฿",
    },
    {
      "name": "ไก่ทอดบ้านๆ",
      "location": "นานา, กรุงเทพ",
      "image": "assets/images/ไก่ทอดบ้านๆ.png",
      "foodType": "ไก่ทอดบ้านๆ",
      "price": 20,
      "priceRange": "\฿ \฿",
    },
    {
      "name": "ไก่ทอดซอสน้ำผึ้งกระเทียม",
      "location": "ชิดลม, กรุงเทพ",
      "image": "assets/images/ไก่ทอดซอสน้ำผึ้งกระเทียม.png",
      "foodType": "ไก่ทอดซอสน้ำผึ้งกระเทียม",
      "price": 0,
      "priceRange": "\฿ \฿",
    },
        {
      "name": "ไก่ทอดบ้านๆ",
      "location": "ชิดลม, กรุงเทพ",
      "image": "assets/images/ไก่ทอดบ้านๆ.jpg",
      "foodType": "ไก่ทอดซอสน้ำผึ้งกระเทียม",
      "price": 0,
      "priceRange": "\฿ \฿",
    },
  ],
};