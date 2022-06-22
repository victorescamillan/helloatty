import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_styles.dart';
import 'package:helloatty/enums/enums.dart';
import 'package:helloatty/navigation/app_router.gr.dart';
import 'package:helloatty/ui/screens/home/widgets/pop_over_item.dart';
import 'package:helloatty/ui/widgets/navigation_item.dart';
import 'package:helloatty/utils/utils.dart';
import 'package:popover/popover.dart';
import 'package:auto_route/auto_route.dart';

class ProfileAvatar extends StatefulWidget {
  const ProfileAvatar({Key? key}) : super(key: key);

  @override
  State<ProfileAvatar> createState() => _ProfileAvatarState();
}

class _ProfileAvatarState extends State<ProfileAvatar> {
  PopoverOption _option = PopoverOption.none;
  @override
  Widget build(BuildContext context) {
    return NavigationItem(
      child: const CircleAvatar(
        backgroundImage: NetworkImage(
            'https://static1.colliderimages.com/wordpress/wp-content/uploads/2022/05/thor-recap-feature.jpg'),
      ),
      onTap: () {
        showCustomPopOver(context,
            content: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PopOverItem(
                  title: 'My Profile',
                  isSelected: _option == PopoverOption.myProfile,
                  onTap: () {
                    setState(() {
                      _option = PopoverOption.myProfile;
                    });
                    context.router.navigate(const ProfileRoute());
                    Navigator.pop(context);
                  },
                ),
                PopOverItem(
                  title: 'Edit Profile',
                  isSelected: _option == PopoverOption.editProfile,
                  onTap: () {
                    setState(() {
                      _option = PopoverOption.editProfile;
                    });
                    context.router.navigate(const EditProfileRoute());
                    Navigator.pop(context);
                  },
                ),
                PopOverItem(
                  title: 'Change Password',
                  isSelected: _option == PopoverOption.changePassword,
                  onTap: () {
                    setState(() {
                      _option = PopoverOption.changePassword;
                    });
                    context.router.navigate(const ChangePasswordRoute());
                    Navigator.pop(context);
                  },
                ),
              ],
            ));
      },
    );
  }
}
