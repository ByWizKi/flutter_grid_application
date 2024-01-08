import 'package:flutter/material.dart';

// ignore: must_be_immutable
Container cardSport(String sportName) {
  String pathImageSport = "assets/images/${sportName}I.jpeg";

  return Container(
    alignment: Alignment.bottomCenter,
    margin: const EdgeInsets.all(15),
    padding: const EdgeInsets.all(5),
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(pathImageSport), fit: BoxFit.cover),
        boxShadow: const [
          BoxShadow(
              color: Color.fromARGB(134, 0, 0, 0),
              blurRadius: 5,
              spreadRadius: 3),
        ],
        borderRadius: BorderRadius.circular(10)),
    child: Text(
      sportName,
      style: const TextStyle(
        color: Color.fromARGB(255, 255, 255, 255),
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      textAlign: TextAlign.center,
    ),
  );
    
}