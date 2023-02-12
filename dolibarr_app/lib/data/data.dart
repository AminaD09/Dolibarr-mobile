import '../constant.dart';
import '../model/course_model.dart';
//import '../model/planing_model.dart';
//import '../model/statistics_model.dart';

final List<Course> course = [
  Course(
    text: "Tiers & Contact",
    lessons: "Stock",
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

/*final List<Planing> planing = [
  Planing(
    heading: "Reading-Begineer Toipc 1",
    subHeading: "8:00 AM - 10:00 AM",
    color: kLightBlue,
    icon: const Icon(
      Icons.menu_book_outlined,
      color: kDarkBlue,
    ),
  ),
  Planing(
    heading: "Listening - Intermediate Topic 1",
    subHeading: "03:00 PM - 04:00 PM",
    color: const Color(0xffE2EDD2),
    icon: Icon(
      TernavIcons.lightOutline.hedphon,
      color: kGreen,
    ),
  ),
  Planing(
    heading: "Speaking - Beginner Topic 1",
    subHeading: "8:00 AM - 12:00 PM",
    color: const Color(0xffF9F0D3),
    icon: Icon(TernavIcons.lightOutline.volume_low, color: kYellow),
  ),
  Planing(
    heading: "Grammar - Intermediate Topic 2",
    subHeading: "8:00 AM - 12:00 PM",
    color: const Color(0xffF9E5D2),
    icon: Icon(
      TernavIcons.lightOutline.edit,
      color: kOrange,
    ),
  ),
  Planing(
    heading: "Listening - Intermediate Topic 1",
    subHeading: "8:00 AM - 12:00 PM",
    color: const Color(0xffE2EDD2),
    icon: Icon(
      TernavIcons.lightOutline.hedphon,
      color: kGreen,
    ),
  ),
  Planing(
    heading: "Grammar - Intermediate Topic 2",
    subHeading: "8:00 AM - 12:00 PM",
    color: const Color(0xffF9E5D2),
    icon: Icon(
      TernavIcons.lightOutline.edit,
      color: kOrange,
    ),
  ),
  Planing(
    heading: "Speaking - Beginner Topic 1",
    subHeading: "07:00 PM - 08:00 PM",
    color: const Color(0xffF9F0D3),
    icon: Icon(TernavIcons.lightOutline.volume_low, color: kYellow),
  ),
  Planing(
    heading: "Reading-Begineer Toipc 1",
    subHeading: "01:00 PM - 02:00 PM",
    color: kLightBlue,
    icon: const Icon(
      Icons.menu_book_outlined,
      color: kDarkBlue,
    ),
  ),
];

final List<Statistics> statistics = [
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