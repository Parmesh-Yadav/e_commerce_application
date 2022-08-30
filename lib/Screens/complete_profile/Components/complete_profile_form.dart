// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, curly_braces_in_flow_control_structures

import 'package:e_commerce_application/Screens/otp/otp_screen.dart';
import 'package:flutter/material.dart';

import '../../../Components/custom_svg_icon.dart';
import '../../../Components/default_button.dart';
import '../../../Components/form_error.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class SignForm extends StatefulWidget {
  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  late String firstName;
  late String lastName;
  late String phoneNumber;
  late String address;
  bool remember = false;
  final List<String> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error!);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildFirstNameFormField(),
          SizedBox(
            height: SizeConfig().getProportionateScreenHeight(30.0),
          ),
          buildLasttNameFormField(),
          SizedBox(
            height: SizeConfig().getProportionateScreenHeight(30.0),
          ),
          buildPhoneNumberFormField(),
          SizedBox(
            height: SizeConfig().getProportionateScreenHeight(30.0),
          ),
          buildAddressFormField(),
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
                Navigator.pushNamed(context, OTPScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      obscureText: false,
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => address = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kAddressNullError)) {
          removeError(error: kAddressNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kAddressNullError)) {
          addError(error: kAddressNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Address',
        hintText: 'Enter your Address',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: customSuffixIcon('assets/icons/Location point.svg'),
      ),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      obscureText: false,
      keyboardType: TextInputType.phone,
      onSaved: (newValue) => phoneNumber = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPhoneNumberNullError)) {
          removeError(error: kPhoneNumberNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPhoneNumberNullError)) {
          addError(error: kPhoneNumberNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Phone Number',
        hintText: 'Enter your phone number',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: customSuffixIcon('assets/icons/Phone.svg'),
      ),
    );
  }

  TextFormField buildLasttNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (newValue) => lastName = newValue!,
      decoration: InputDecoration(
        labelText: 'Last Name',
        hintText: 'Enter your Last name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: customSuffixIcon('assets/icons/User.svg'),
      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (newValue) => firstName = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kNamelNullError)) {
          removeError(error: kNamelNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kNamelNullError)) {
          addError(error: kNamelNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'First Name',
        hintText: 'Enter your first name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: customSuffixIcon('assets/icons/User.svg'),
      ),
    );
  }
}
