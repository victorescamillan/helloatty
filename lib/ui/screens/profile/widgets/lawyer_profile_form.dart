import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/constants/app_styles.dart';
import 'package:helloatty/constants/app_texts.dart';
import 'package:helloatty/ui/screens/registration/widgets/proof_item.dart';
import 'package:helloatty/ui/widgets/app_dropdowns/bordered_dropdown_button.dart';
import 'package:helloatty/ui/widgets/app_inputs/bordered_textfield.dart';
import 'package:helloatty/utils/utils.dart';

class LawyerProfileForm extends StatefulWidget {
  const LawyerProfileForm({Key? key}) : super(key: key);

  @override
  State<LawyerProfileForm> createState() => _LawyerProfileFormState();
}

class _LawyerProfileFormState extends State<LawyerProfileForm> {
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
              label: 'Email Address',
              hintText: 'Enter Email',
              width: inputWidth,
              horizontalPadding: size20,
            ),
            const SizedBox(
              width: size20,
            ),
            BorderedTextField(
              label: 'Law School',
              hintText: 'Enter School',
              width: inputWidth,
              horizontalPadding: size20,
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
              label: 'Year Graduated',
              hintText: 'Select Date',
              width: inputWidth,
              horizontalPadding: size20,
              suffixIcon: IconButton(
                  splashRadius: size20,
                  onPressed: () async {
                    await defaultDateTimePicker(context);
                  },
                  icon: const Icon(
                    Icons.calendar_month,
                    color: kGrey,
                  )),
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
              label: 'Date Admitted to the Bar',
              hintText: 'Select Date',
              width: inputWidth,
              horizontalPadding: size20,
              suffixIcon: IconButton(
                  splashRadius: size20,
                  onPressed: () async {
                    await defaultDateTimePicker(context);
                  },
                  icon: const Icon(
                    Icons.calendar_month,
                    color: kGrey,
                  )),
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
            BorderedTextField(
              label: 'Roll Number',
              hintText: 'Enter Roll Number',
              width: inputWidth,
              horizontalPadding: size20,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BorderedDropdownButton(
              label: 'City',
              hintText: 'Select City',
              width: inputWidth,
              horizontalPadding: size20,
              items: const ['Davao'],
            ),
            const SizedBox(
              width: size20,
            ),
            BorderedDropdownButton(
              label: 'Specialization',
              hintText: 'Select Specialization',
              width: inputWidth,
              horizontalPadding: size20,
              items: const ['Criminal Court'],
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
            BorderedTextField(
              label: 'Years of Experience',
              hintText: 'Enter Years',
              width: inputWidth,
              horizontalPadding: size20,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BorderedTextField(
              label: 'Contact Number',
              hintText: 'Enter Contact Number',
              width: inputWidth,
              horizontalPadding: size20,
            ),
            const SizedBox(
              width: size20,
            ),
            Expanded(child: Container()),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BorderedTextField(
              label: "Lawyer's Description",
              hintText: 'Enter Description',
              maxLines: 6,
              width: inputWidth,
              horizontalPadding: size20,
            ),
            const SizedBox(
              width: size20,
            ),
            Expanded(child: Container()),
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
              label: 'Upload 1 Valid Government ID',
              onTap: () {},
            ),
            ProofItem(
              label: 'Upload Your Profile Picture',
              onTap: () {},
            )
          ],
        ),
        const SizedBox(
          height: size10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ProofItem(
              label: 'Upload 1 IDP ID',
              onTap: () {},
            ),
            ProofItem(
              label: 'Upload Your Diploma',
              onTap: () {},
            )
          ],
        ),
      ],
    );
  }
}
