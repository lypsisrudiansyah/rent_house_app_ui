import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20),
          ),
          hintText: 'Search home ...',
          prefixIcon: Container(
            padding: EdgeInsets.all(15),
            child: SvgPicture.asset('assets/icons/search.svg'),
          ),
          //* 0-5 tidak terlalu begitu kerasa perbedaannya
          contentPadding: const EdgeInsets.all(3),
        ),
      ),
    );
  }
}
