import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/constants/app_styles.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        height: size60,
        padding: const EdgeInsets.all(8.0),
        width: MediaQuery.of(context).size.width,
        color: appColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 150,
              child: TextField(
                style: kHeader1TextStyle.copyWith(color: kWhite),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: const Icon(Icons.search, color: kWhite,),
                  hintText: 'Search',
                  hintStyle: kHeader1TextStyle.copyWith(color: kWhite, fontWeight: FontWeight.normal),
                ),
              ),
            )
          ],
        )
    );
  }

}