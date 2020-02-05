import 'package:flutter/material.dart';

class Strings {
  static var experiencePhotographerDetails =
      '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\n 
It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. \n
It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.''';

  static String weAre = "we are";
  static String experienced = "Experienced";

  static String photographers = "photographers";

  static String weddingCouples = "Weddings - Couples";

  static String fineArts = "Fine Arts";
  static String products = "Products";
  static String sports = "Sports";

  static List<Widget> listWeddingFooterMenu = [
    Container(
      child: Text(
        Strings.weddingCouples,
        style: TextStyle(
            fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    ),
    Container(
      child: Text("Abelard and Heloise"),
      margin: EdgeInsets.only(top: 16),
    ),
    Container(
      child: Text("Wedding Stories"),
      margin: EdgeInsets.only(top: 8),
    ),
    Container(
      child: Text("Adam & Eve"),
      margin: EdgeInsets.only(top: 8),
    ),
    Container(
      child: Text("Anthony & Cleopatra"),
      margin: EdgeInsets.only(top: 8),
    ),
    Container(
      child: Text("Barati & Barat"),
      margin: EdgeInsets.only(top: 8),
    ),
    Container(
      child: Text("Isabella & Mason"),
      margin: EdgeInsets.only(top: 8),
    ),
    Container(
      child: Text("Jacob & Emma"),
      margin: EdgeInsets.only(top: 8),
    )
  ];

  static List<Widget> listFineArts = [
    Container(
      child: Text(
        Strings.fineArts,
        style: TextStyle(
            fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    ),
    Container(
      child: Text("Mona & Hooman"),
      margin: EdgeInsets.only(top: 16),
    ),
    Container(
      child: Text("Amanda & Mario"),
      margin: EdgeInsets.only(top: 8),
    ),
    Container(
      child: Text("Harsha & Shakeel"),
      margin: EdgeInsets.only(top: 8),
    ),
    Container(
      child: Text("Anna & Stan"),
      margin: EdgeInsets.only(top: 8),
    ),
    Container(
      child: Text("Ashley & Joel"),
      margin: EdgeInsets.only(top: 8),
    ),
    Container(
      child: Text("Krishna & Bernd"),
      margin: EdgeInsets.only(top: 8),
    ),
    Container(
      child: Text("Coral & Galen"),
      margin: EdgeInsets.only(top: 8),
    )
  ];

  static List<Widget> listProducts = [
    Container(
      child: Text(
        Strings.products,
        style: TextStyle(
            fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    ),
    Container(
      child: Text("Colgate"),
      margin: EdgeInsets.only(top: 16),
    ),
    Container(
      child: Text("Lux: Hindustan Unilver Ltd"),
      margin: EdgeInsets.only(top: 8),
    ),
    Container(
      child: Text("Lifeboy"),
      margin: EdgeInsets.only(top: 8),
    ),
    Container(
      child: Text("Britannia"),
      margin: EdgeInsets.only(top: 8),
    ),
    Container(
      child: Text("Pepsodent"),
      margin: EdgeInsets.only(top: 8),
    ),
    Container(
      child: Text("Glucon D"),
      margin: EdgeInsets.only(top: 8),
    ),
    Container(
      child: Text("Parle Products"),
      margin: EdgeInsets.only(top: 8),
    )
  ];


  static List<Widget> listSports = [
    Container(
      child: Text(
        Strings.sports,
        style: TextStyle(
            fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    ),
    Container(
      child: Text("Association Football (Soccer)"),
      margin: EdgeInsets.only(top: 16),
    ),
    Container(
      child: Text("Cricket"),
      margin: EdgeInsets.only(top: 8),
    ),
    Container(
      child: Text("Baseball"),
      margin: EdgeInsets.only(top: 8),
    ),
    Container(
      child: Text("Volleyball"),
      margin: EdgeInsets.only(top: 8),
    ),
    Container(
      child: Text("Tennis"),
      margin: EdgeInsets.only(top: 8),
    ),
    Container(
      child: Text("Field Hockey"),
      margin: EdgeInsets.only(top: 8),
    ),
    Container(
      child: Text("Table Tennis"),
      margin: EdgeInsets.only(top: 8),
    )
  ];
}
