import 'package:flutter/material.dart';
import 'package:yogaon/size_config.dart';

final kBackgroundColorLight = Color(0xFFC1E6D4);
final kBackgroundColorMain = Color(0xFF9ADABE);
final kPrimaryColor = Color(0xFF5DA57D);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "이메일을 입력하세요.";
const String kInvalidEmailError = "이메일 형식을 확인해주세요.";
const String kPassNullError = "비밀번호를 입력하세요.";
const String kShortPassError = "비밀번호가 너무 짧습니다.";
const String kMatchPassError = "비밀번호가 일치하지 않습니다.";
const String kNamelNullError = "이름을 입력하세요.";
const String kPhoneNumberNullError = "전화번호를 적어주세요.";
const String kAddressNullError = "주소를 적어주세요.";

final otpInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: getProportionalWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionalWidth(15)),
    borderSide: BorderSide(color: kPrimaryColor),
  );
}
