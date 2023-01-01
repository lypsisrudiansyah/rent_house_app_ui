import 'package:flutter/material.dart';
import 'package:flutter_house_rent/model/house.dart';

class RecommendedHouse extends StatelessWidget {
  final recommendedList = House.generateRecommended();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15),
        height: 340,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) => GestureDetector(
            onTap: () {
              /* Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return DetailPage(house: recommendedList[index]);
                  },
                ),
              ); */
            },
            child: Container(
              width: 230,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          recommendedList[index].imageUrl,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          itemCount: recommendedList.length,
          separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 15),
        ));
  }
}
