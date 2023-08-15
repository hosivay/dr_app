import 'package:get_storage/get_storage.dart';

writeUser({
  String? name,
  String? phoneNumber,
  String? nationalCode,
  String? age,
  String? gender,
}) {
  var userdata = {
    "Name": name!,
    "PhoneNumber": phoneNumber!,
    "NationalCode": nationalCode!,
    "Age": age!,
    "Gender": gender!,
    "Location": "Shiraz",
    "Nobat": [],
    "SavedDoctor": [],
  };
  GetStorage().write('UserData', userdata);
  GetStorage().write('isSign', true);
  return userdata;
}

readUser(String option) {
  var getdata = GetStorage().read('UserData');
 
  return getdata[option] ?? "Error";
}

updateUser() {}

