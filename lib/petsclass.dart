import 'dart:ui';
import 'package:flutter/material.dart';

class Petsclass {
  String image;
  String agegroup;
  String petname;
  String ownername;
  String ownerPhone;
  String ownerLocation;
  IconData gender;
  Color gendercol;
  String about;
  String weight;

  Petsclass({
    required this.image,
    required this.agegroup,
    required this.petname,
    required this.ownername,
    required this.ownerPhone,
    required this.ownerLocation,
    required this.gender,
    required this.gendercol,
    required this.about,
    required this.weight,
  });
}
