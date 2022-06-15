import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/constants/app_styles.dart';
import 'package:helloatty/constants/app_texts.dart';
import 'package:helloatty/navigation/app_router.gr.dart';
import 'package:helloatty/ui/screens/registration/widgets/proof_item.dart';
import 'package:helloatty/ui/widgets/app_buttons/default_button.dart';
import 'package:helloatty/ui/widgets/app_buttons/default_outlined_button.dart';
import 'package:helloatty/ui/widgets/app_dropdowns/bordered_dropdown_button.dart';
import 'package:helloatty/ui/widgets/app_inputs/bordered_textfield.dart';
import 'package:helloatty/utils/utils.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  @override
  Widget build(BuildContext context) {
    double inputWidth = MediaQuery.of(context).size.width / 2.5;
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: size100, vertical: size20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            createAccountText,
            style: kHeader1TextStyle,
          ),
          const SizedBox(
            height: size20,
          ),
          Expanded(
            child: Card(
              elevation: 3,
              child: ListView(
                padding: const EdgeInsets.all(size20),
                children: <Widget>[
                  _userInformation(inputWidth),
                  _identificationProof(inputWidth),
                  _password(inputWidth),
                  _privacyPolicy(),
                  _actionButtons()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _userInformation(double inputWidth) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          userInformationText,
          style: kHeader1TextStyle.copyWith(
              color: appColor, fontWeight: FontWeight.normal),
        ),
        const SizedBox(
          height: size10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BorderedTextField(
              label: 'First Name',
              hintText: enterNameText,
              width: inputWidth,
              horizontalPadding: size20,
            ),
            BorderedTextField(
              label: 'Middle Name',
              hintText: enterNameText,
              width: inputWidth,
              horizontalPadding: size20,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BorderedTextField(
              label: 'Last Name',
              hintText: enterNameText,
              width: inputWidth,
              horizontalPadding: size20,
            ),
            BorderedDropdownButton(
              label: 'Gender',
              hintText: 'Select Gender',
              width: inputWidth,
              horizontalPadding: size20,
              items: const ['Male', 'Female'],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BorderedTextField(
              label: 'Permanent Address',
              hintText: 'Enter Address',
              width: inputWidth,
              horizontalPadding: size20,
            ),
            BorderedTextField(
              label: 'Email Address',
              hintText: 'Enter Email',
              width: inputWidth,
              horizontalPadding: size20,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BorderedDropdownButton(
              label: 'Country',
              hintText: 'Select Counter',
              width: inputWidth,
              horizontalPadding: size20,
              items: const ['Philippines'],
            ),
            BorderedTextField(
              label: 'Contact Number',
              hintText: 'Enter Number',
              width: inputWidth,
              horizontalPadding: size20,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BorderedDropdownButton(
              label: 'Province',
              hintText: 'Select Province',
              width: inputWidth,
              horizontalPadding: size20,
              items: const ['Davao Del Sur'],
            ),
            BorderedDropdownButton(
              label: 'City',
              hintText: 'Select City',
              width: inputWidth,
              horizontalPadding: size20,
              items: const ['Davao City'],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BorderedTextField(
              label: 'Zip Code',
              hintText: 'Enter Zip Code',
              width: inputWidth,
              horizontalPadding: size20,
            ),
          ],
        ),
      ],
    );
  }

  _identificationProof(double inputWidth) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: size50,
        ),
        Text(
          'PROF OF IDENTIFICATION',
          style: kHeader1TextStyle.copyWith(
              color: appColor, fontWeight: FontWeight.normal),
        ),
        const SizedBox(
          height: size10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ProofItem(
              label: 'Upload 1 Government ID',
              onTap: () {},
            ),
            ProofItem(
              label: 'Upload Your Profile Picture',
              onTap: () {},
            )
          ],
        ),
      ],
    );
  }

  _password(double inputWidth) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: size50,
        ),
        Text(
          'PASSWORD',
          style: kHeader1TextStyle.copyWith(
              color: appColor, fontWeight: FontWeight.normal),
        ),
        const SizedBox(
          height: size10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BorderedTextField(
              label: 'Password',
              hintText: enterPasswordText,
              width: inputWidth,
              isObscureText: true,
              horizontalPadding: size20,
            ),
            BorderedTextField(
              label: 'Confirm Password',
              hintText: enterPasswordText,
              width: inputWidth,
              isObscureText: true,
              horizontalPadding: size20,
            ),
          ],
        ),
      ],
    );
  }

  _privacyPolicy() {
    return Column(
      children: [
        const SizedBox(
          height: size50,
        ),
        Row(
          children: [
            const Text(
              'By submitting, you accept our ',
              style: kTitleTextStyle,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'Terms of use ',
                style: kTitleTextStyle.copyWith(color: activeColor),
              ),
            ),
            const Text(
              'and ',
              style: kTitleTextStyle,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'Privacy Policy.',
                style: kTitleTextStyle.copyWith(color: activeColor),
              ),
            ),
          ],
        )
      ],
    );
  }

  _actionButtons() {
    return Row(
      children: [
        DefaultElevatedButton(
          onPressed: () {
            _showConfirmation(context);
          },
          width: size200,
          child: Text(
            'Register',
            style: kTitleTextStyle.copyWith(color: kWhite),
          ),
        ),
        const SizedBox(
          width: size20,
        ),
        DefaultOutlinedButton(
          onPressed: () {
            context.router.navigateBack();
          },
          width: size200,
          child: Text(
            'Cancel',
            style: kTitleTextStyle.copyWith(color: appColor),
          ),
        )
      ],
    );
  }
}

_showConfirmation(BuildContext context) {
  defaultAlertDialog(context,
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Thank you for registering to Hello Atty.!',
            style: kHeader1TextStyle.copyWith(color: appColor),
          ),
          const SizedBox(
            height: size40,
          ),
          Text(
            'Please wait (No.) day for us to verify your information.',
            style: kHeader3TextStyle.copyWith(
                fontWeight: FontWeight.normal, color: appColor),
          ),
          Text(
            "An email will be sent you once it's finished.",
            style: kHeader3TextStyle.copyWith(
                fontWeight: FontWeight.normal, color: appColor),
          ),
          const SizedBox(
            height: size10,
          ),
          DefaultElevatedButton(
            width: size150,
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Close',
              style: kTitleTextStyle.copyWith(color: kWhite),
            ),
          )
        ],
      ));
}
