import 'package:flutter/material.dart';
import 'package:flutter_house_rent/model/house.dart';
import 'package:flutter_house_rent/widget/circle_icon_button.dart';

class DetailAppbar extends StatelessWidget {
  final House house;

  const DetailAppbar({Key? key, required this.house}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Stack(
        children: [
          Image.asset(
            house.imageUrl,
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const CircleIconButton(
                    iconUrl: 'assets/icons/arrow.svg',
                    color: Colors.grey,
                  ),
                ),
                CircleIconButton(
                  iconUrl: 'assets/icons/mark.svg',
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

/* 
, */
