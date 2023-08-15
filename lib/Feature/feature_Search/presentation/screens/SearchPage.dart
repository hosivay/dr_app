import 'package:dr_app/Core/utils/Animation.dart';
import 'package:dr_app/Feature/feature_Search/presentation/widgets/Appbar_Search.dart';
import 'package:dr_app/Feature/feature_Search/presentation/widgets/SearchField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../GetX/AnimationSearch_Getx.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    AnimationSearchController animationSearchController =
        Get.put(AnimationSearchController());
    return Scaffold(
      appBar: appbar_SearchPage(context),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SearchField(
                  context,
                ),
              ],
            ),
            Center(
              child: GetX<AnimationSearchController>(
                builder: (controller) {
                  return animationB(
                    child: Lottie.asset("lib/assets/lottie/search_animation.json",
                        repeat: animationSearchController.repeat.value,
                        width: Get.width / 1.3,
                        height: Get.width / 1.3),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
