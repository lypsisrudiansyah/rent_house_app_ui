import 'package:flutter/material.dart';
import 'package:flutter_house_rent/model/house.dart';
import 'package:flutter_house_rent/screen/detail/widget/detail_appbar.dart';
import 'package:flutter_house_rent/screen/detail/widget/detail_content.dart';

class DetailScreen extends StatelessWidget {
  final House house;

  const DetailScreen({Key? key, required this.house}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DetailAppbar(house: house),
              const SizedBox(height: 20),
              DetailContent(house: house),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
