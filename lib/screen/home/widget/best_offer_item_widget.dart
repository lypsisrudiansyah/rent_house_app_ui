import 'package:flutter/material.dart';
import 'package:flutter_house_rent/model/house.dart';
import 'package:flutter_house_rent/screen/detail/detail_screen.dart';

class BestOfferItemWidget extends StatelessWidget {
  House house;
  BestOfferItemWidget({
    Key? key,
    required this.house,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return DetailScreen(house: house);
            },
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Stack(
          children: [
            Row(
              children: [
                Container(
                  width: 150,
                  height: 80,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(house.imageUrl), fit: BoxFit.cover), borderRadius: BorderRadius.circular(8)),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      house.name,
                      style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      house.address,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12.0),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
