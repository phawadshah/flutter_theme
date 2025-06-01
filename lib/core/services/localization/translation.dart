// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar_AE": {
          "hello": "مرحبا",
          "Orbit Storybook": "Orbit Storybook",
          "Foundation": "الأساس",
          "Colors": "الألوان",
          "Icons": "الأيقونات",
          "Illustrations": "التصميمات",
          "Typography": "النصوص",
          "Components": "المكونات",
          "Alert": "تنبيه",
          "Badge": "بطاقة",
          "Buttons": "زر",
          "AED": "درهم",
          "Price": "السعر",
        }
      };
  //
}

class Product {
  String img;
  String discount;
  String price;
  List<ProdTranslation> translations;
  int rating;
  int reviews;
  Product({
    required this.img,
    required this.discount,
    required this.price,
    required this.translations,
    required this.rating,
    required this.reviews,
  });

  @override
  String toString() {
    return 'Product(img: $img, discount: $discount, price: $price, translations: $translations, rating: $rating, reviews: $reviews)';
  }

  Product copyWith({
    String? img,
    String? discount,
    String? price,
    List<ProdTranslation>? translations,
    int? rating,
    int? reviews,
  }) {
    return Product(
      img: img ?? this.img,
      discount: discount ?? this.discount,
      price: price ?? this.price,
      translations: translations ?? this.translations,
      rating: rating ?? this.rating,
      reviews: reviews ?? this.reviews,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'img': img,
      'discount': discount,
      'price': price,
      'translations': translations.map((x) => x.toMap()).toList(),
      'rating': rating,
      'reviews': reviews,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      img: map['img'] as String,
      discount: map['discount'] as String,
      price: map['price'] as String,
      translations: List<ProdTranslation>.from(
        (map['translations'] as List<int>).map<ProdTranslation>(
          (x) => ProdTranslation.fromMap(x as Map<String, dynamic>),
        ),
      ),
      rating: map['rating'] as int,
      reviews: map['reviews'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source) as Map<String, dynamic>);
}

// abstract class BaseTranslation {
//   final String langCode;
//   BaseTranslation({required this.langCode});
// }
mixin BaseTranslation {
  String get langCode;
  static T getTranslation<T extends BaseTranslation>({
    required List<T> translations,
  }) {
    final lang = Get.locale?.languageCode ?? 'en';
    T? translation = translations.firstWhereOrNull(
      (t) => t.langCode == lang,
    );
    translation ??= translations.firstWhereOrNull(
      (t) => t.langCode == 'en',
    );
    return translation ?? translations.first;
  }
}

class ProdTranslation with BaseTranslation {
  @override
  String langCode;
  String title;
  String brandName;
  String categoryName;
  ProdTranslation({
    required this.langCode,
    required this.title,
    required this.brandName,
    required this.categoryName,
  });

  @override
  String toString() {
    return 'ProdTranslation(lang_code: $langCode, title: $title, brandName: $brandName, categoryName: $categoryName)';
  }

  ProdTranslation copyWith({
    String? langCode,
    String? title,
    String? brandName,
    String? categoryName,
  }) {
    return ProdTranslation(
      langCode: langCode ?? this.langCode,
      title: title ?? this.title,
      brandName: brandName ?? this.brandName,
      categoryName: categoryName ?? this.categoryName,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lang_code': langCode,
      'title': title,
      'brandName': brandName,
      'categoryName': categoryName,
    };
  }

  factory ProdTranslation.fromMap(Map<String, dynamic> map) {
    return ProdTranslation(
      langCode: map['lang_code'] as String,
      title: map['title'] as String,
      brandName: map['brandName'] as String,
      categoryName: map['categoryName'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProdTranslation.fromJson(String source) =>
      ProdTranslation.fromMap(json.decode(source) as Map<String, dynamic>);
}
