import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rille/models/music.dart';
import 'package:rille/models/review.dart';

// Colors
const primaryColor = Color.fromRGBO(148, 212, 235, 1);
const primaryLightColor = Color(0xFFF1E6FF);
const redColor = Colors.red;

// Menus
const lightTheme = 'Light Theme';
const darkTheme = 'Dark Theme';
const menuList = [
  lightTheme,
  darkTheme,
];

// Dark Theme Toggle
bool isDarkMode = false;

// Ad Images
const adsImages = [
  'assets/images/ads-1.jpg',
  'assets/images/ads-2.jpg',
  'assets/images/ads-3.jpg'
];

List<Music> songs = [
  Music('How You Like That', 'The_Album', 'Black Pink', 120000, 'By Tee',
      generateReview()),
  Music('Ice Cream', 'The_Album', 'Black Pink', 120000, 'By Tee',
      generateReview()),
  Music('Pretty Savage', 'The_Album', 'Black Pink', 120000, 'Grimaldi',
      generateReview()),
  Music('Bet You Wanna', 'The_Album', 'Black Pink', 120000, 'Brown',
      generateReview()),
  Music('Lovesick Girls', 'The_Album', 'Black Pink', 120000, 'Teddy',
      generateReview()),
  Music('Crazy Over You', 'The_Album', 'Black Pink', 120000, 'Franks',
      generateReview()),
  Music('Love to Hate Me', 'The_Album', 'Black Pink', 120000, 'Fiture Bounce',
      generateReview()),
  Music('You Never Know', 'The_Album', 'Black Pink', 120000, 'Apte',
      generateReview()),
  Music('Boombayah', 'Black_Pink_In_Your_Area', 'Black Pink', 120000, 'Apte',
      generateReview()),
  Music('Whistle', 'Black_Pink_In_Your_Area', 'Black Pink', 120000, 'Apte',
      generateReview()),
  Music('Playing With Fire', 'Black_Pink_In_Your_Area', 'Black Pink', 120000,
      'Apte', generateReview()),
  Music('Stay', 'Black_Pink_In_Your_Area', 'Black Pink', 120000, 'Apte',
      generateReview()),
  Music('As if its Your Last', 'Black_Pink_In_Your_Area', 'Black Pink', 120000,
      'Apte', generateReview()),
  Music('Ddu-du Ddu-du', 'Black_Pink_In_Your_Area', 'Black Pink', 120000,
      'Apte', generateReview()),
  Music('Forever Young', 'Black_Pink_In_Your_Area', 'Black Pink', 120000,
      'Apte', generateReview()),
  Music('Really', 'Black_Pink_In_Your_Area', 'Black Pink', 120000, 'Apte',
      generateReview()),
  Music('See U Later', 'Black_Pink_In_Your_Area', 'Black Pink', 120000, 'Apte',
      generateReview()),
];

List<Review> generateReview() {
  return [
    Review('Coool', 5),
    Review('Amzing', 5),
    Review('Yeah', 4),
  ];
}
