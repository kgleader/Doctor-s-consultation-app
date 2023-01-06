import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:doctor_consultation_app/components/category_card.dart';
import 'package:doctor_consultation_app/components/doctor_card.dart';
import 'package:doctor_consultation_app/components/search_bar.dart';

import '../constatnts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SvgPicture.asset('assets/icons/menu.svg'),
                    SvgPicture.asset('assets/icons/profile.svg'),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Врач,которого вы ищете\n',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: TitleTextColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: SearchBar(),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Категории',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: TitleTextColor,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              buildCategoryList(),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'ТОП врачей',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: TitleTextColor,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              buildDoctorList(),
            ],
          ),
        ),
      ),
    );
  }

  buildCategoryList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          const SizedBox(
            width: 30,
          ),
          CategoryCard(
            'Пересадка\nПечени',
            'assets/icons/liver.jpg',
            BlueColor,
          ),
          const SizedBox(
            width: 10,
          ),
          CategoryCard(
            'Кардио\nХирургия',
            'assets/icons/heart.jpg',
            YellowColor,
          ),
          const SizedBox(
            width: 10,
          ),
          CategoryCard(
            'Пересадка\nПочек',
            'assets/icons/kidney.jpg',
            OrangeColor,
          ),
          const SizedBox(
            width: 9,
          ),
        ],
      ),
    );
  }

  buildDoctorList() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: <Widget>[
          DoctorCard(
            'Субаш Гупта',
            'Хирург по пересадке печени - клиника "Макс"',
            'assets/images/subash.jpg',
            BlueColor,
          ),
          const SizedBox(
            height: 10,
          ),
          DoctorCard(
            'Др.Абидип Чодри',
            'Хирург по пересадке печени - клиника "БЛК-Макс"',
            'assets/images/abhideep.jpg',
            YellowColor,
          ),
          const SizedBox(
            height: 20,
          ),
          DoctorCard(
            'Др.Вивек Виж',
            'Хирург по пересадке печени - клиника "Фортис"',
            'assets/images/doctor3.png',
            OrangeColor,
          ),
          const SizedBox(
            height: 20,
          ),
          DoctorCard(
            'Др.Васу Деван',
            'Хирург по пересадке печени - клиника "Жейпи"',
            'assets/images/doctor3.png',
            OrangeColor,
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
