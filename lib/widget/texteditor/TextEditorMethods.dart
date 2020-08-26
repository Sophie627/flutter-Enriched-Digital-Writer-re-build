import 'package:flutter/material.dart';

/*
    Color getListToColor(List colorList)
    Author: Sophie(bolesalavb@gmail.com)
    Created Date & Time: Aug 25 2020 11:43 PM

    Function getListToColor
    Description:  Convert List to Color
    Parameter:  colorList(List) - RGBO List

    return Color
   */

Color getListToColor(List colorList) {
  return Color.fromRGBO(colorList[0], colorList[1], colorList[2], colorList[3]);
}