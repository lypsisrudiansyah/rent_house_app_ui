import 'package:flutter/material.dart';

class CategoriesWidget extends StatefulWidget {
  @override
  _CategoriesWidgetState createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  final categoriesList = ['Top Recommended', 'Near You', 'Agency Recommended', 'Most Popular'];

  int currentSelect = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              currentSelect = index;
            });
          },
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: currentSelect == index ? Theme.of(context).primaryColor : Colors.transparent,
                  width: 3,
                ),
              ),
            ),
            child: Text(
              categoriesList[index],
              style: TextStyle(
                color: currentSelect == index ? Theme.of(context).primaryColor : Theme.of(context).textTheme.bodyText1!.color,
                fontSize: currentSelect == index ? 16 : 14,
                fontWeight: currentSelect == index ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        ),
        itemCount: categoriesList.length,
        separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 15),
      ),
    );
  }
}
