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
      backgroundColor: kBackgroundColor,
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
                  'Find Your Desired\nDoctor',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: kTitleTextColor,
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
                  'Categories',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kTitleTextColor,
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
                  'Top Doctors',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kTitleTextColor,
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
            'Dental\nSurgeon',
            'assets/icons/dental_surgeon.png',
            kBlueColor,
          ),
          const SizedBox(
            width: 10,
          ),
          CategoryCard(
            'Heart\nSurgeon',
            'assets/icons/heart_surgeon.png',
            kYellowColor,
          ),
          const SizedBox(
            width: 10,
          ),
          CategoryCard(
            'Eye\nSpecialist',
            'assets/icons/eye_specialist.png',
            kOrangeColor,
          ),
          const SizedBox(
            width: 30,
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
            'Dr. Stella Kane',
            'Heart Surgeon - Flower Hospitals',
            'assets/images/doctor1.png',
            kBlueColor,
          ),
          const SizedBox(
            height: 20,
          ),
          DoctorCard(
            'Dr. Joseph Cart',
            'Dental Surgeon - Flower Hospitals',
            'assets/images/doctor2.png',
            kYellowColor,
          ),
          const SizedBox(
            height: 20,
          ),
          DoctorCard(
            'Dr. Stephanie',
            'Eye Specialist - Flower Hospitals',
            'assets/images/doctor3.png',
            kOrangeColor,
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
