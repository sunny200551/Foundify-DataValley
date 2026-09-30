import 'package:flutter/material.dart';

class Profileprovider extends ChangeNotifier{
  String name = "Jay Ram";
  String email = "jayram@gmail.com";
  String mobile = "894561228";

  // void updateprofile(String updated_name, String updated_email, String updated_mobile){
  //   name = updated_name;
  //   email = updated_email;
  //   mobile = updated_mobile;

  //   notifyListeners();
  // }
  void updatedname(String updatedname){
    name = updatedname;
    notifyListeners();
  }

  void updatedemail(String updatedemail){
    email =updatedemail;
    notifyListeners();
  }

  void updatedmobile(String updatedmobile){
    mobile =updatedmobile;
    notifyListeners();
  }
}