import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HouseInfo extends StatelessWidget {
  const HouseInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              const InfoItem(
                imageUrl: 'assets/icons/bedroom.svg',
                content: '3 Bedroom\n2 Master Bedroom',
              ),
              const InfoItem(
                imageUrl: 'assets/icons/bathroom.svg',
                content: '3 Bathroom\n3 Toilet',
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              const InfoItem(
                imageUrl: 'assets/icons/kitchen.svg',
                content: '2 Kitchen\n120 sqft',
              ),
              const InfoItem(
                imageUrl: 'assets/icons/parking.svg',
                content: '2 Parking\n120 sqft',
              ),
            ],
          )
        ],
      ),
    );
  }
}

class InfoItem extends StatelessWidget {
  final String imageUrl;
  final String content;
  const InfoItem({Key? key, required this.imageUrl, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          SvgPicture.asset(imageUrl),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Text(
              content,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}

// class InfoItem extends StatelessWidget {
//   final String imageUrl;
//   final String content;
//   const InfoItem({Key? key, required this.imageUrl, required this.content}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Row(
//         children: [
//           SvgPicture.asset(imageUrl),
//           const SizedBox(
//             width: 10.0,
//           ),
//           Expanded(
//             child: Text(
//               content,
//               style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
