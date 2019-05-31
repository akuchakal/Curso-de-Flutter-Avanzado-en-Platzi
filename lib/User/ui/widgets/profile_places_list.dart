import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Place/model/place.dart';
import 'profile_place.dart';

class ProfilePlacesList extends StatelessWidget {

  final Place place = new Place(
    name:'Knuckles Mountains Range', 
    description: 'Hiking. Water fall hunting. Natural bath', 
    urlImage: 'https://images.freeimages.com/images/large-previews/8d5/sweden-lysekils-1230860.jpg',
    likes: 3);
  final Place place2 = new Place(
    name: 'Mountains', 
    description: 'Hiking. Water fall hunting. Natural bath',
    urlImage: 'https://images.freeimages.com/images/large-previews/343/mountains-1390173.jpg',
    likes: 10);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: 10.0,
          left: 20.0,
          right: 20.0,
          bottom: 10.0
      ),
      child: Column(
        children: <Widget>[
          ProfilePlace(place),
          ProfilePlace(place2),
        ],
      ),
    );
  }

}