import 'package:get/get.dart';

List<Map<String, Object>> nobatData = [
  {
    "year": year.Farvardin,
    "DoctorName": "دکتر علی محمدی",
    "Expertise": "متخصص قلب",
    "date": "1402/01/21",
    "clock": "12:00"
  },
  {
    "year": year.Ordibehesht,
    "DoctorName": "دکتر علی ولی پور",
    "Expertise": "متخصص قلب",
    "date": "1402/01/21",
    "clock": "12:00"
  },
  {
    "year": year.Aban,
    "DoctorName": "دکتر علی رحیمی",
    "Expertise": "متخصص قلب",
    "date": "1402/01/21",
    "clock": "12:00"
  }
];

enum year {
  Farvardin,
  Ordibehesht,
  Khordad,
  Tir,
  Mordad,
  Shahrivar,
  Mehr,
  Aban,
  Azar,
  Dey,
  Bahman,
  Esfand
}

List yearFarsiList = [
  "Farvardin".tr,
  "Ordibehesht".tr,
  "Khordad".tr,
  "Tir".tr,
  "Mordad".tr,
  "Shahrivar".tr,
  "Mehr".tr,
  "Aban".tr,
  "Azar".tr,
  "Dey".tr,
  "Bahman".tr,
  "Esfand".tr,
];

int getYearLength(year enum_year) {
  int _count = 0;

  for (var item in nobatData) {
    if (item['year'] == enum_year) {
      _count++;
    }
  }
  
  return _count;
}

List<Map<String, Object>> getDataYear(year enum_year) {
  List<Map<String, Object>> items = [];

  for (var item in nobatData) {
    if (item['year'] == enum_year) {
      items.add(item);
    }
  }

  return items;
}
