import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/constants/app_styles.dart';
import 'package:helloatty/constants/app_texts.dart';
import 'package:helloatty/ui/screens/profile/widgets/lawyer_profile_form.dart';
import 'package:helloatty/ui/widgets/app_buttons/default_button.dart';
import 'package:helloatty/ui/widgets/app_buttons/default_outlined_button.dart';
import 'package:helloatty/ui/widgets/main_container.dart';
import 'package:helloatty/ui/widgets/temp_container.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return MainContainer(
        title: 'Edit Profile',
        content: ListView(
          padding: const EdgeInsets.all(size20),
          children: [
            const LawyerProfileForm(
              isUpdate: true,
            ),
            const SizedBox(
              height: size30,
            ),
            _actionButtons()
          ],
        ));
  }

  _actionButtons() {
    return Row(
      children: [
        DefaultElevatedButton(
          onPressed: () {},
          width: size200,
          child: Text(
            'Update Profile',
            style: kTitleTextStyle.copyWith(color: kWhite),
          ),
        ),
        const SizedBox(
          width: size20,
        ),
        DefaultOutlinedButton(
          onPressed: () {},
          width: size200,
          child: Text(
            cancelText,
            style: kTitleTextStyle.copyWith(color: appColor),
          ),
        )
      ],
    );
  }
}
