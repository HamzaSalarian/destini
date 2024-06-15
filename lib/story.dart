import 'package:flutter/material.dart';

class Story {
  String storyTitle = '';
  String choice1 = '';
  String choice2 = '';

  Story(String s, String c1, String c2) {
    this.storyTitle = s;
    this.choice1 = c1;
    this.choice2 = c2;
  }
}
