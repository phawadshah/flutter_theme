import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sgm_admin/core/services/localization/translation.dart';
import 'package:sgm_admin/utils/routes/routes.dart';

class HomeController extends GetxController {
  ScrollController pageScrollController = ScrollController();

  RxBool showTitle = false.obs;

  @override
  void onInit() {
    _registerScrollListener();
    super.onInit();
  }

  void _registerScrollListener() {
    pageScrollController.addListener(() {
      if (pageScrollController.position.pixels > 50 && !showTitle.value) {
        showTitle.value = true;
        log('message');
      } else if (pageScrollController.position.pixels < 50 && showTitle.value) {
        showTitle.value = false;
      }
    });
  }

  void onColorsTap() async {
    await Get.toNamed(KRoutes.colors);
  }

  void onIconsTap() async {
    await Get.toNamed(KRoutes.icons);
  }

  void onIllustrationsTap() async {
    await Get.toNamed(KRoutes.illustrations);
  }

  void onTypographyTap() async {
    await Get.toNamed(KRoutes.typography);
  }

  void onAlertTap() async {
    await Get.toNamed(KRoutes.alert);
  }

  void onBadgeTap() async {
    await Get.toNamed(KRoutes.badge);
  }

  void onButtonsTap() async {
    await Get.toNamed(KRoutes.buttons);
  }

  List<Product> dummyProducts = [
    Product(
      img: "https://stargallery.ae/wp-content/uploads/2024/04/A1289011-1.jpg",
      discount: "15%",
      price: "29.99",
      translations: [
        ProdTranslation(
          langCode: "ar",
          title: "حاسوب محمول للألعاب عالي الأداء مع شاشة 144 هرتز ومعالج i7",
          brandName: "براند 1",
          categoryName: "أجهزة الكمبيوتر",
        ),
        ProdTranslation(
          langCode: "en",
          title:
              "High-Performance Gaming Laptop with 144Hz Display and i7 Processor",
          brandName: "Brand 1",
          categoryName: "Computers",
        ),
      ],
      rating: 4,
      reviews: 120,
    ),
    Product(
      img: "https://stargallery.ae/wp-content/uploads/2024/04/A1289011-1.jpg",
      discount: "10%",
      price: "49.99",
      translations: [
        ProdTranslation(
          langCode: "ar",
          title:
              "ساعة ذكية مقاومة للماء بشاشة لمس ودعم لمراقبة اللياقة البدنية",
          brandName: "براند 2",
          categoryName: "الساعات الذكية",
        ),
        ProdTranslation(
          langCode: "en",
          title: "Waterproof Smartwatch with Touchscreen and Fitness Tracking",
          brandName: "Brand 2",
          categoryName: "Smartwatches",
        ),
      ],
      rating: 5,
      reviews: 85,
    ),
    Product(
      img: "https://stargallery.ae/wp-content/uploads/2024/04/A1289011-1.jpg",
      discount: "25%",
      price: "15.00",
      translations: [
        ProdTranslation(
          langCode: "ar",
          title: "سماعات أذن لاسلكية تدعم إلغاء الضوضاء مع صوت فائق الوضوح",
          brandName: "براند 3",
          categoryName: "الصوتيات",
        ),
        ProdTranslation(
          langCode: "en",
          title:
              "Wireless Earbuds with Noise Cancellation and Ultra-Clear Sound",
          brandName: "Brand 3",
          categoryName: "Audio",
        ),
      ],
      rating: 4,
      reviews: 60,
    ),
    Product(
      img: "https://stargallery.ae/wp-content/uploads/2024/04/A1289011-1.jpg",
      discount: "20%",
      price: "19.99",
      translations: [
        ProdTranslation(
          langCode: "ar",
          title: "كاميرا رقمية بدقة 4K مع عدسة تكبير بصري وتصوير ليلي متطور",
          brandName: "براند 4",
          categoryName: "الكاميرات",
        ),
        ProdTranslation(
          langCode: "en",
          title:
              "4K Digital Camera with Optical Zoom Lens and Advanced Night Mode",
          brandName: "Brand 4",
          categoryName: "Cameras",
        ),
      ],
      rating: 5,
      reviews: 98,
    ),
    Product(
      img: "https://stargallery.ae/wp-content/uploads/2024/04/A1289011-1.jpg",
      discount: "30%",
      price: "12.99",
      translations: [
        ProdTranslation(
          langCode: "ar",
          title: "حقيبة ظهر متعددة الجيوب مصنوعة من مواد مقاومة للماء",
          brandName: "براند 5",
          categoryName: "الإكسسوارات",
        ),
        ProdTranslation(
          langCode: "en",
          title: "Multi-Pocket Backpack Made from Water-Resistant Material",
          brandName: "Brand 5",
          categoryName: "Accessories",
        ),
      ],
      rating: 3,
      reviews: 45,
    ),
    Product(
      img: "https://stargallery.ae/wp-content/uploads/2024/04/A1289011-1.jpg",
      discount: "18%",
      price: "34.50",
      translations: [
        ProdTranslation(
          langCode: "ar",
          title:
              "لوحة مفاتيح ميكانيكية بإضاءة خلفية RGB ومفاتيح سريعة الاستجابة",
          brandName: "براند 6",
          categoryName: "الإلكترونيات",
        ),
        ProdTranslation(
          langCode: "en",
          title: "RGB Backlit Mechanical Keyboard with Fast-Response Keys",
          brandName: "Brand 6",
          categoryName: "Electronics",
        ),
      ],
      rating: 5,
      reviews: 200,
    ),
    Product(
      img: "https://stargallery.ae/wp-content/uploads/2024/04/A1289011-1.jpg",
      discount: "22%",
      price: "59.99",
      translations: [
        ProdTranslation(
          langCode: "ar",
          title: "شاشة ألعاب 27 بوصة بدقة 2K ومعدل تحديث 165 هرتز",
          brandName: "براند 7",
          categoryName: "الشاشات",
        ),
        ProdTranslation(
          langCode: "en",
          title: "27-inch 2K Gaming Monitor with 165Hz Refresh Rate",
          brandName: "Brand 7",
          categoryName: "Monitors",
        ),
      ],
      rating: 4,
      reviews: 150,
    ),
    Product(
      img: "https://stargallery.ae/wp-content/uploads/2024/04/A1289011-1.jpg",
      discount: "14%",
      price: "89.99",
      translations: [
        ProdTranslation(
          langCode: "ar",
          title: "كرسي ألعاب مريح مع دعم أسفل الظهر ومسند رأس",
          brandName: "براند 8",
          categoryName: "الأثاث",
        ),
        ProdTranslation(
          langCode: "en",
          title: "Ergonomic Gaming Chair with Lumbar Support and Headrest",
          brandName: "Brand 8",
          categoryName: "Furniture",
        ),
      ],
      rating: 4,
      reviews: 75,
    ),
    Product(
      img: "https://stargallery.ae/wp-content/uploads/2024/04/A1289011-1.jpg",
      discount: "10%",
      price: "22.50",
      translations: [
        ProdTranslation(
          langCode: "ar",
          title: "حذاء رياضي مريح بمقاومة عالية للصدمات والتآكل",
          brandName: "براند 9",
          categoryName: "الأحذية",
        ),
        ProdTranslation(
          langCode: "en",
          title: "Comfortable Sports Shoes with High Shock and Wear Resistance",
          brandName: "Brand 9",
          categoryName: "Shoes",
        ),
      ],
      rating: 5,
      reviews: 230,
    ),
    Product(
      img: "https://stargallery.ae/wp-content/uploads/2024/04/A1289011-1.jpg",
      discount: "35%",
      price: "19.99",
      translations: [
        ProdTranslation(
          langCode: "ar",
          title: "ماوس ألعاب لاسلكي بدقة 16K DPI مع أزرار جانبية قابلة للتخصيص",
          brandName: "براند 10",
          categoryName: "إكسسوارات الكمبيوتر",
        ),
        ProdTranslation(
          langCode: "en",
          title:
              "Wireless Gaming Mouse with 16K DPI and Customizable Side Buttons",
          brandName: "Brand 10",
          categoryName: "Computer Accessories",
        ),
      ],
      rating: 4,
      reviews: 115,
    ),
  ];
}
