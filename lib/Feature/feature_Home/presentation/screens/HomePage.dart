import 'package:dr_app/Config/ThemeGetX.dart';
import 'package:dr_app/Feature/feature_Home/presentation/widgets/Appbar.dart';
import 'package:dr_app/Feature/feature_Home/presentation/widgets/CatagoryWidget.dart';
import 'package:dr_app/Feature/feature_Home/presentation/widgets/DoctorList.dart';
import 'package:dr_app/Feature/feature_Home/presentation/widgets/Slider.dart'; 
import 'package:flutter/material.dart';
import 'package:get/get.dart'; 

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar_HomePage(context),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            myCarouselSlider(context),
            myDivider(),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 10, 12, 15),
              child: Row(
                children: [
                  Text(
                    'category'.tr,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ],
              ),
            ),
            catagory_Widget(context),
            myDivider(),
            row_doctorList(
              context:context,
              topDoctors: true,
            ), 
            
          ],
        ),
      ),
    );
  }

 
}
