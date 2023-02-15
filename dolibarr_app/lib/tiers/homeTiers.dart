// ignore: file_names
import 'package:dolibarr_app/tiers/contacts/HomeContact.dart';
import 'package:dolibarr_app/tiers/welcomeTiers.dart';
import 'package:flutter/material.dart';

import '../data/data.dart';

class HomeTiers extends StatelessWidget {
  const HomeTiers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: planing.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 16 / 4, crossAxisCount: 1, mainAxisSpacing: 20),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => _getPageForIndex(index)));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: const Color(0xffF7F7F7),
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: planing[index].color,
                              borderRadius: BorderRadius.circular(10)),
                          height: 55,
                          width: 55,
                          child: planing[index].icon,
                        )
                      ],
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          planing[index].heading,
                          maxLines: 1,
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.035,
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }

  Widget _getPageForIndex(int index) {
    switch (index) {
      case 0:
        return const WelcomeTiers();
      // Ajouter des cas pour d'autres pages en fonction des besoins
      default:
        return const HomeContact();
    }
  }
}
