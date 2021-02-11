import 'package:flutter/material.dart';
import 'package:yogaon/components/classes/form_error.dart';
import 'package:yogaon/components/inputs/yogaon_button_component.dart';
import 'package:yogaon/screens/home/home_screen.dart';
import 'package:yogaon/size_config.dart';
import 'package:yogaon/routes.dart';
import 'package:yogaon/constants.dart';

FocusNode myFocusNode = new FocusNode();

class PasswordChangeForm extends StatefulWidget {
  @override
  _PasswordChangeFormState createState() => _PasswordChangeFormState();
}

class _PasswordChangeFormState extends State<PasswordChangeForm> {
  final _formKey = GlobalKey<FormState>();
  String password;
  String conform_password;
  bool remember = false;
  final List<String> errors = [];

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.all(getProportionalWidth(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('기존 비밀번호', style: textStyle),
            SizedBox(height: getProportionateHeight(15)),
            buildPasswordFormField(),
            SizedBox(height: getProportionateHeight(30)),
            Text('새 비밀번호', style: textStyle),
            SizedBox(height: getProportionateHeight(15)),
            buildPasswordFormField(),
            SizedBox(height: getProportionateHeight(20)),
            buildConformPassFormField(),
            FormError(errors: errors),
            SizedBox(height: getProportionateHeight(40)),
            YogaonButtonComponent(
              buttonText: "변경 완료",
              press: () {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                  // if all are valid then go to success screen
                  Navigator.pushNamed(context, HomeScreen.routeName);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildConformPassFormField() {
    return TextFormField(
        obscureText: true,
        onSaved: (newValue) => conform_password = newValue,
        onChanged: (value) {
          if (value.isNotEmpty) {
            removeError(error: kPassNullError);
          } else if (value.isNotEmpty && password == conform_password) {
            removeError(error: kMatchPassError);
          }
          conform_password = value;
        },
        validator: (value) {
          if (value.isEmpty) {
            addError(error: kPassNullError);
            return "";
          } else if ((password != value)) {
            addError(error: kMatchPassError);
            return "";
          }
          return null;
        },
        decoration: inputDecoration.copyWith(
            // labelText: '비밀번호 확인',
            hintText: '비밀번호를 확인해주세요.'));
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
        obscureText: true,
        onSaved: (newValue) => password = newValue,
        onChanged: (value) {
          if (value.isNotEmpty) {
            removeError(error: kPassNullError);
          } else if (value.length >= 8) {
            removeError(error: kShortPassError);
          }
          password = value;
        },
        validator: (value) {
          if (value.isEmpty) {
            addError(error: kPassNullError);
            return "";
          } else if (value.length < 8) {
            addError(error: kShortPassError);
            return "";
          }
          return null;
        },
        decoration: inputDecoration.copyWith(
            // labelText: '비밀번호',
            hintText: '비밀번호를 입력해주세요'));
  }
}

InputDecoration inputDecoration = InputDecoration(
  // labelText: "비밀번호",
  hintText: "기존 비밀번호를 입력해주세요.",
  floatingLabelBehavior: FloatingLabelBehavior.always,
  // labelStyle:
  //     TextStyle(color: myFocusNode.hasFocus ? kPrimaryColor : Colors.grey),
  contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 15),
  enabledBorder: outlineInputBorder,
  focusedBorder: outlineInputBorder,
  border: outlineInputBorder,
);

OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(28),
  borderSide: BorderSide(color: kPrimaryColor),
  gapPadding: 10,
);

TextStyle textStyle =
    TextStyle(fontSize: getProportionalWidth(18), color: Colors.black);
