import 'package:flutter/material.dart';

class MusicModel {
  String? img;
  String? title;
  String? title1;
  String? subtitle;
  int? number;
  double? number1;
  Color? color;
  bool isShow;
  IconData? icon;
  bool? like;
  bool isSelect;

  MusicModel(
      {this.img,
      this.title,
      this.title1,
      this.subtitle,
      this.number,
      this.number1,
      this.like,
      this.color,
      this.isShow = false,
      this.icon,
      this.isSelect = false});
}
