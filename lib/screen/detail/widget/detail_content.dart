import 'package:flutter/material.dart';
import 'package:flutter_house_rent/model/house.dart';
import 'package:flutter_house_rent/screen/detail/widget/house_info.dart';

class DetailContent extends StatelessWidget {
  final House house;

  const DetailContent({Key? key, required this.house}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            house.name,
            style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            house.address,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            "3000 sqft",
            style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14),
          ),
          const SizedBox(
            height: 5.0,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "\$2000 ",
                  style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: "Per Month",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          const HouseInfo(),
          const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "About",
                style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // <-- Radius
                ),
              ),
              onPressed: () {},
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: const Text(
                  "Book Now",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
