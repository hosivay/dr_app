import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget myCarouselSlider(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 30, bottom: 10),
    child: CarouselSlider(
      options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
          autoPlayAnimationDuration: const Duration(seconds: 1)),
      items: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Container(
              width: Get.width / 1.4,
              height: 160,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ],
    ),
  );
}
