
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_grid_application/card_sport.dart';
import 'package:flutter_grid_application/map_sport.dart';
import 'package:flutter_grid_application/page_sport_info.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text(
          "Grille des Sports",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 68, 137, 255),

      ),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          final listSportKey = listSport.keys.toList(growable: false);
          final listSportValues = listSport.values.toList(growable: false);
          return GestureDetector(
            child : cardSport(listSportKey[index]),
            onTap: (){
              final nextPage = PageSportInfo(
                sportName: listSportKey[index], 
                sportDescription: listSportValues[index],
              );
              Navigator.of(context).push(
                CupertinoPageRoute(builder: (BuildContext context) {
                return nextPage;
              }));
            },
          );
        },
        itemCount: listSport.length,
      ),
    );
  }
}