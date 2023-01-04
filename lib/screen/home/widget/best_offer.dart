import 'package:flutter/material.dart';
import 'package:flutter_house_rent/model/house.dart';
import 'package:flutter_house_rent/screen/home/widget/best_offer_item_widget.dart';

class BestOffer extends StatelessWidget {
  final listOffer = House.generateBestOffer();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Best Offer',
                style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'See All',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          ...listOffer.map(
            (houseData) => BestOfferItemWidget(house: houseData),
          ),
        ],
      ),
    );
  }
}
