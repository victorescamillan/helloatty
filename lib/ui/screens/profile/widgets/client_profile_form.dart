import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/constants/app_styles.dart';
import 'package:helloatty/constants/app_texts.dart';
import 'package:helloatty/ui/screens/registration/widgets/proof_item.dart';
import 'package:helloatty/ui/widgets/app_dropdowns/bordered_dropdown_button.dart';
import 'package:helloatty/ui/widgets/app_inputs/bordered_textfield.dart';

class ClientProfileForm extends StatefulWidget {
  const ClientProfileForm({Key? key}) : super(key: key);

  @override
  State<ClientProfileForm> createState() => _ClientProfileFormState();
}

class _ClientProfileFormState extends State<ClientProfileForm> {
  @override
  Widget build(BuildContext context) {
    double inputWidth = MediaQuery.of(context).size.width / 2.5;
    return Column(
      children: [
        _userInformation(inputWidth),
        _identificationProof(inputWidth),
      ],
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
            const SizedBox(
              width: size20,
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
            const SizedBox(
              width: size20,
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
            const SizedBox(
              width: size20,
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
            const SizedBox(
              width: size20,
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
            const SizedBox(
              width: size20,
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
            const SizedBox(
              width: size20,
            ),
            Expanded(
              child: Container(),
            )
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
}
