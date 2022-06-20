import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_styles.dart';
import 'package:helloatty/enums/enums.dart';
import 'package:helloatty/ui/screens/home/widgets/pop_over_item.dart';
import 'package:helloatty/ui/widgets/navigation_item.dart';
import 'package:helloatty/utils/utils.dart';
import 'package:popover/popover.dart';

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
        showPopover(
          context: context,
          transitionDuration: const Duration(milliseconds: 150),
          bodyBuilder: (context) => Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PopOverItem(
                title: 'My Profile',
                isSelected: _option == PopoverOption.myProfile,
                onTap: () {
                  setState(() {
                    _option = PopoverOption.myProfile;
                  });
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
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          onPop: () => print('Popover was popped!'),
          direction: PopoverDirection.bottom,
          width: 200,
          height: 150,
          arrowHeight: 15,
          arrowWidth: 30,
        );
      },
    );
  }
}
