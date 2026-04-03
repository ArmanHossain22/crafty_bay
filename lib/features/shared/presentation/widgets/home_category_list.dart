import 'package:flutter/material.dart';

import 'category_card.dart';

class HomeCategoryList extends StatelessWidget {
  const HomeCategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 96,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          primary: false,
          itemBuilder: (context, index) => CategoryCard(),
          itemCount: 10,
          separatorBuilder: (context, index){
            return SizedBox(width: 8);
          }
      ),
    );
  }
}