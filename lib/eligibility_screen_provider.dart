

import 'package:flutter/cupertino.dart';

class EligibilityScreenProvider extends ChangeNotifier{

  String _eligibilityMessage = "";
  bool? _isEligible;

  // Get Eligibility Message
  String get eligibilityMessage  => _eligibilityMessage;
  // Get isEligible or Not
  bool? get isEligible => _isEligible;


  // Function To Check Age Eligibility
  void checkEligibility(int age){
    if(age >= 18){
      eligibleForLicense();
    }else{
      notEligibleForLicense();
    }
  }


  // Function of EligibleForLicense
  void eligibleForLicense(){
    _eligibilityMessage = "You're eligible for applying driving license";
    _isEligible = true;

    notifyListeners();
  }

  // Function of NotEligibleForLicense
  void notEligibleForLicense(){
    _eligibilityMessage = "You're not eligible for applying driving license";
    _isEligible = false;
    notifyListeners();
  }



}