import 'package:dr_app/Core/database/UserData.dart';
import 'package:dr_app/Feature/feature_Profile/presentation/widgets/AppbarProfilePage.dart';
import 'package:dr_app/Feature/feature_Profile/presentation/widgets/ProfileDetail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar_ProfilePage(context),
      body: Column(
        children: [
          detailProfile(
            context: context,
            title: "NameUser".tr,
            option: readUser("Name").toString(),
          ),
          detailProfile(
            context: context,
            title: "PhoneNumber".tr,
            option: readUser("PhoneNumber").toString(),
          ),
           detailProfile(
            context: context,
            title: "NationalCode".tr,
            option: readUser("NationalCode").toString(),
          ),
           detailProfile(
            context: context,
            title: "age".tr,
            option: readUser("Age").toString(),
          ),
          detailProfile(
            context: context,
            title: "gender".tr,
            option: readUser("Gender").toString(),
          ),
          detailProfile(
            context: context,
            title: "Location".tr,
            option: readUser("Location").toString(),
          ),
        ],
      ),
    );
  }


}
