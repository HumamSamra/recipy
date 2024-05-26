import 'package:flutter/material.dart';
import 'package:recipes/core/constants/app_colors.dart';

class Utils {
  static Color textToColor([String? value]) {
    Color color;
    switch (value?.toString().toLowerCase().replaceAll(' ', '')) {
      case 'deeppurple':
        {
          color = Colors.deepPurple;
        }
        break;
      case 'deeporange':
        {
          color = Colors.deepOrange;
        }
        break;
      case 'indigo':
        {
          color = Colors.indigo;
        }
        break;
      default:
        {
          color = AppColors.defaultColor;
        }
        break;
    }
    return color;
  }

  static String colorToText([Color? value]) {
    String color;
    switch (value) {
      case Colors.deepPurple:
        {
          color = 'deeppurple';
        }
        break;
      case Colors.deepOrange:
        {
          color = 'deeporange';
        }
        break;
      case Colors.indigo:
        {
          color = 'indigo';
        }
        break;
      default:
        {
          color = 'green';
        }
        break;
    }
    return color;
  }
}
