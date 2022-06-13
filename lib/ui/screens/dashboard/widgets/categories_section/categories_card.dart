import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/constants/app_styles.dart';

class CategoriesCard extends StatelessWidget {
  final String category;
  final VoidCallback? onTap;
  const CategoriesCard({Key? key, this.category = '', this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double cardWidth = MediaQuery.of(context).size.width / 7;
    double cardHeight = 120;
    return InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(size15),
            child: Image.network(
              "https://cloudinary.hbs.edu/hbsit/image/upload/s--wx5D2ABw--/f_auto,c_fill,h_375,w_750,/v20200101/5393409F6FB391494111C5EC16653C89.jpg",
              height: cardHeight,
              width: cardWidth,
              fit: BoxFit.cover,
              color: Colors.white.withOpacity(1.0),
              colorBlendMode: BlendMode.modulate,
            ),
          ),
          Positioned(
            top: cardHeight / 2.5,
            child: Container(
              width: cardWidth,
              alignment: Alignment.center,
              child: Text(
                category,
                style: kHeader1TextStyle.copyWith(color: kWhite),
              ),
            ),
          )
        ],
      ),
    );
  }
}
