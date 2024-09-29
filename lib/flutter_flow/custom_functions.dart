import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

String? calculateGrade(int? grade) {
  // calculate letter grade based on given number grade using the following scale:  A: 90-100  B: 80-89  C: 70-79  D: 60-69  F: Below 60 - use input validation
  if (grade == null) {
    return 'Input must be an integer';
  }

  if (grade >= 90 && grade <= 100) {
    return 'A';
  } else if (grade >= 80 && grade <= 89) {
    return 'B';
  } else if (grade >= 70 && grade <= 79) {
    return 'C';
  } else if (grade >= 60 && grade <= 69) {
    return 'D';
  } else if (grade < 60 && grade >= 0) {
    return 'F';
  } else {
    return 'Out of range (0-100)';
  }
}
