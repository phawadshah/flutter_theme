import 'package:flutter/material.dart';

String colorToHex(Color color) {
  return '#${color.value.toRadixString(16).substring(2).toUpperCase()}';
}

String iconNameFromPath(String path) {
  return (path.split('/').last.split('.').first.replaceAll("-", ""));
}

String decimalToFraction(double value, {int precision = 100000}) {
  int integerPart = value.floor();
  double decimalPart = value - integerPart;

  if (decimalPart == 0) return "$integerPart";

  int denominator = precision;
  int numerator = (decimalPart * denominator).round();
  int gcd = _gcd(numerator, denominator);

  numerator ~/= gcd;
  denominator ~/= gcd;

  if (integerPart > 0) {
    return "$integerPart ${numerator > 0 ? "$numerator/$denominator" : ""}"
        .trim();
  } else {
    return "$numerator/$denominator";
  }
}

int _gcd(int a, int b) => b == 0 ? a : _gcd(b, a % b);
