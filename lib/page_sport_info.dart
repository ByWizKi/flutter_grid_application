
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PageSportInfo extends StatelessWidget {

  String sportName;
  String sportDescription;

  PageSportInfo({
    super.key, 
    required this.sportName,
    required this.sportDescription,
  });

  @override
  Widget build(BuildContext context) {
    String pathImageSport = "assets/images/${sportName}I.jpeg";
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor:  Colors.blueAccent,
        middle: Text(
          sportName,
          style : const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500
          ),
          textAlign: TextAlign.center,
        ),
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            width: 300,
            height: 200,
            decoration : BoxDecoration(
              image: DecorationImage(
                image: AssetImage(pathImageSport), 
                fit : BoxFit.fitWidth 
              ),
              border: Border.all(
                color: const Color.fromARGB(134, 0, 0, 0),
                width: 1.5
              ),
              borderRadius: BorderRadiusDirectional.circular(20),
              boxShadow: const [BoxShadow(
                color: Colors.black,
                blurRadius: 12 
              ),],
            )
          ),

          const Divider(
            color: Colors.blueAccent,
            height: 40,
            thickness: 1,
          ),

          const Text(
            "Description",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),

          const Padding(padding: EdgeInsets.only(bottom : 10)),

          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              sportDescription,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          
          const Divider(
            color: Colors.blueAccent,
            height: 40,
            thickness: 1,
          ),
        ]
      ) ,
    );
  }
}