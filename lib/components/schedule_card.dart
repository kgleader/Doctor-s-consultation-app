import 'package:flutter/material.dart';

import '../constatnts.dart';

class ScheduleCard extends StatelessWidget {
  var _title;
  var _description;
  var _date;
  var _month;
  var _bgColor;

  ScheduleCard(
      this._title, this._description, this._date, this._month, this._bgColor);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: _bgColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ListTile(
          leading: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            decoration: BoxDecoration(
              color: _bgColor.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  _date,
                  style: TextStyle(
                    color: _bgColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  _month,
                  style: TextStyle(
                    color: _bgColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          title: Text(
            _title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: TitleTextColor,
            ),
          ),
          subtitle: Text(
            _description,
            style: TextStyle(
              color: TitleTextColor.withOpacity(0.7),
            ),
          ),
        ),
      ),
    );
  }
}
