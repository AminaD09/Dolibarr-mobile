import 'package:flutter/material.dart';
import 'package:ternav_icons/ternav_icons.dart';

import '../constant.dart';
import '../model/course_model.dart';
import '../model/planing_model.dart';
//import '../model/statistics_model.dart';

final List<Course> course = [
  Course(
    text: "Tiers & Contact",
    lessons: "Nombre",
    imageUrl: "images/pic/tiers.png",
    percent: 75,
    backImage: "images/box/box1.png",
    color: kDarkBlue,
    indice: 0,
    //style: const TextStyle()
  ),
  Course(
    text: "Produit",
    lessons: "Quantité",
    imageUrl: "images/pic/prod.png",
    percent: 50,
    backImage: "images/box/box2.png",
    color: kOrange,
    indice: 1,
    //style: const TextStyle()
  ),
  Course(
    text: "Commerce",
    lessons: "Chiffre d'affaire",
    imageUrl: "images/pic/shop.png",
    percent: 25,
    backImage: "images/box/box3.png",
    color: kGreen,
    indice: 2,
    //style: const TextStyle()
  ),
  Course(
    text: "Facturation & Paiement",
    lessons: "Payé",
    imageUrl: "images/pic/card.png",
    percent: 35,
    backImage: "images/box/box4.png",
    color: kYellow,
    indice: 3,
    //style: const TextStyle()
  ),
];

final List<Planing> planing = [
  Planing(
    heading: "Tiers",
    color: kLightBlue,
    icon: const Icon(
      Icons.menu_book_outlined,
      color: kDarkBlue,
    ),
  ),
  Planing(
    heading: "Contacts",
    color: const Color(0xffE2EDD2),
    icon: Icon(
      TernavIcons.lightOutline.hedphon,
      color: kGreen,
    ),
  ),
];

/*final List<Statistics> statistics = [
  Statistics(
    title: "Course Completed",
    number: "02",
  ),
  Statistics(
    title: "Total Points Gained",
    number: "250",
  ),
  Statistics(
    title: "Course In Progress ",
    number: "03",
  ),
  Statistics(
    title: "Tasks \nFinished",
    number: "05",
  )
];*/