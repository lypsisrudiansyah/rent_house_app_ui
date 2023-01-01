import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/menu.svg',
            ),
          ),
          const CircleAvatar(backgroundImage: AssetImage('assets/images/avatar.jpeg'))
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50);
}
