import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constatnts.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width * 0.7,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            color: SearchBackgroundColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child: const TextField(
            decoration: InputDecoration.collapsed(
              hintText: 'Искать нужного врача',
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: MaterialButton(
            onPressed: () {},
            color: OrangeColor,
            padding: const EdgeInsets.symmetric(
              horizontal: 5,
              vertical: 5,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset('assets/icons/search.svg'),
          ),
        ),
      ],
    );
  }
}
