import 'package:flutter/material.dart';
import 'main_card_model.dart';

List<String> categoryData = [
  "All",
  "Pizza",
  'Burger',
  'Sandwich',
  'Pancake',
  'Pie',
  'Cake',
  'Ice-Cream',
  'Biryani',
  'Hot-dog',
  'Spring Roll',
  'Pasta'
];

List<MainCardModel> foodData = [
  MainCardModel(
      name: 'Maggie',
      image: 'assets/maggie.jpg',
      price: 200,
      isFavorite: true,
      size: ['S', 'M', 'L'],
      delivery: 'Free Home Delivery'),
  MainCardModel(
      name: 'Pasta',
      image: 'assets/pasta.jpg',
      price: 225,
      isFavorite: false,
      size: ['S', 'M', 'L'],
      delivery: 'Free Home Delivery'),
  MainCardModel(
      name: 'Cake',
      image: 'assets/cake.jpg',
      price: 500,
      isFavorite: true,
      size: ['S', 'M'],
      delivery: 'Free Home Delivery'),
  MainCardModel(
      name: 'Pan Cake',
      image: 'assets/pancake.jpg',
      price: 300,
      isFavorite: false,
      size: ['S', 'M', 'L'],
      delivery: 'Free Home Delivery'),
  MainCardModel(
      name: 'Eggs',
      image: 'assets/egg.jpg',
      price: 100,
      isFavorite: true,
      size: ['M'],
      delivery: 'Free Home Delivery'),
  MainCardModel(
      name: 'Spring Roll',
      image: 'assets/roll.jpg',
      price: 80,
      isFavorite: false,
      size: ['S', 'M', 'L'],
      delivery: 'Free Home Delivery'),
  MainCardModel(
      name: 'Ramen',
      image: 'assets/raman.jpg',
      price: 400,
      isFavorite: true,
      size: ['S', 'M', 'L'],
      delivery: 'Free Home Delivery'),
];

class ColorResources {
  final Color textColor = Colors.orange;
}
