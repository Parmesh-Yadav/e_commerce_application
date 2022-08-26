// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:e_commerce_application/size_config.dart';
import 'package:flutter/material.dart';

import '../../../Components/custom_svg_icon.dart';
import '../../../Components/default_button.dart';
import '../../../Components/form_error.dart';
import '../../../Components/no_account_text.dart';
import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig().getProportionateScreenWidth(40)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Forgot Password',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: SizeConfig().getProportionateScreenWidth(50),
                  fontWeight: FontWeight.bold,
                ),
              ),
              // ignore: prefer_const_constructors
              Text(
                'Please enter your email and we will send\nyou a link to return to your account.',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              ForgotPassForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              NoAccountText(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  @override
  State<ForgotPassForm> createState() => _ForgotPassForm();
}

class _ForgotPassForm extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  late String email;
  late String password;
  bool remember = false;
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: SizeConfig().getProportionateScreenHeight(30.0),
          ),
          FormError(errors: errors),
          SizedBox(
            height: SizeConfig().getProportionateScreenHeight(30.0),
          ),
          DefaultButton(
            'Continue',
            () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Enter your email',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: customSuffixIcon('assets/icons/Mail.svg'),
      ),
    );
  }
}
