import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/constants/app_styles.dart';
import 'package:helloatty/ui/screens/dashboard/widgets/categories_section/categories_card.dart';
import 'package:helloatty/ui/screens/dashboard/widgets/lawyer_list_section/lawyer_list_card.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Categories',
          style: kHeader1TextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CategoriesCard(
              category: 'Finance',
              onTap: () {},
            ),
            CategoriesCard(
              category: 'Medical',
              onTap: () {},
            ),
            CategoriesCard(
              category: 'Bankruptcy',
              onTap: () {},
            ),
            CategoriesCard(
              category: 'Product Liability',
              onTap: () {},
            ),
            CategoriesCard(
              category: 'Criminal Law',
              onTap: () {},
            ),
          ],
        )
      ],
    );
  }
}
