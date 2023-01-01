import 'package:flutter/material.dart';
import 'package:flutter_house_rent/screen/home/widget/categories_widget.dart';
import 'package:flutter_house_rent/screen/home/widget/custom_appbar.dart';
import 'package:flutter_house_rent/screen/home/widget/recommended_house.dart';
import 'package:flutter_house_rent/screen/home/widget/search_input.dart';
import 'package:flutter_house_rent/screen/home/widget/welcome_text.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WelcomeText(),
            SearchInput(),
            CategoriesWidget(),
            RecommendedHouse(),
          ],
        ),
      ),
    );
  }
}
