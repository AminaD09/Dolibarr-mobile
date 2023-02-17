import 'package:dolibarr_app/dashboard/dashboard.dart';
import 'package:dolibarr_app/produit/home_page.dart';
import 'package:dolibarr_app/tiers/welcomeTiers.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../data/data.dart';
import '../produit/home_page1.dart';

class CourseGrid extends StatelessWidget {
  const CourseGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: course.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 16 / 7, crossAxisCount: 1, mainAxisSpacing: 20),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            // Ajoutez ici le code pour gérer l'interaction de l'utilisateur

            switch (course[index].indice) {
              case 0:
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WelcomeTiers()));
                break;
              case 1:
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomePage1())); //product
                break;
              case 2:
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MainScreen()));
                break;
              default:
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MainScreen()));
                break;
            }
          },
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(course[index].backImage), fit: BoxFit.fill),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        course[index].text,
                        style: const TextStyle(color: Colors.white),
                      ),
                      Text(
                        course[index].lessons,
                        style: const TextStyle(color: Colors.white),
                      ),
                      CircularPercentIndicator(
                        radius: 30,
                        lineWidth: 8,
                        animation: true,
                        animationDuration: 1500,
                        circularStrokeCap: CircularStrokeCap.round,
                        percent: course[index].percent / 100,
                        progressColor: Colors.white,
                        center: Text(
                          "${course[index].percent}%",
                          style: const TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        course[index].imageUrl,
                        height: 110,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
