import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// User model that supports JSON serialization.
class User {
  final String firstName;
  final String surname;

  User({@required this.firstName, @required this.surname}) {
    assert(firstName != null, "One or more first names are required.");
    assert(surname != null, "A surname is required.");
  }

  // Defines a User.fromJson constructor that constructs a new User instance from a map structure.
  User.fromJson(Map<String, dynamic> json)
      : firstName = json["firstName"],
        surname = json["surname"];

  // Converts this User instance into a map.
  Map<String, dynamic> toJson() => {"firstName": firstName, "surname": surname};
}
