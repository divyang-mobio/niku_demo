import 'package:flutter/material.dart';
import 'package:niku/namespace.dart' as n;
import 'resources.dart';
import 'main_card_model.dart';

n.Padding categoryTile(String data) => n.Padding(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child:
            n.Button(n.Text(data)..style = n.NikuTextStyle(color: Colors.white))
              ..onPressed = () {}
              ..style = n.NikuButtonStyle(backgroundColor: Colors.white12),
      ),
    )
      ..left = 10
      ..top = 10
      ..bottom = 5
      ..right = 10;

n.Padding mainCard(context, MainCardModel foodData) => n.Padding(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: MediaQuery.of(context).size.width * .8,
          padding:
              const EdgeInsets.only(left: 20, top: 20, bottom: 20, right: 20),
          color: Colors.white12,
          child: SingleChildScrollView(
            child: n.Column([
              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: n.Image.asset(foodData.image)
                    ..height = MediaQuery.of(context).size.height * .3
                    ..fit = BoxFit.cover),
              const SizedBox(height: 20),
              n.Row([
                Expanded(
                  flex: 2,
                  child: n.Text(foodData.name)
                    ..overflow = TextOverflow.ellipsis
                    ..maxLines = 2
                    ..style = n.NikuTextStyle(
                        color: ColorResources().textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                ),
                n.Text('Rs ${foodData.price}')
                  ..style = n.NikuTextStyle(
                      color: ColorResources().textColor,
                      fontWeight: FontWeight.bold)
              ])
                ..mainAxisAlignment = MainAxisAlignment.spaceBetween,
              const SizedBox(height: 20),
              n.Row(foodData.size
                  .map((e) => n.Padding(
                      child: n.Text(e)
                        ..style = n.NikuTextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold))
                    ..left = 10
                    ..right = 10)
                  .toList())
                ..mainAxisAlignment = MainAxisAlignment.center
            ])
              ..crossAxisAlignment = CrossAxisAlignment.start,
          ),
        ),
      ),
    )
      ..left = 10
      ..top = 10
      ..bottom = 5;

Container listCard(MainCardModel foodData) => Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white12),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      padding: const EdgeInsets.all(10),
      child: n.Row([
        Expanded(
          child: n.Row([
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: n.Image.asset(foodData.image)
                  ..height = 100
                  ..width = 100
                  ..fit = BoxFit.cover),
            const SizedBox(width: 20),
            Expanded(
              child: n.Column([
                n.Text(foodData.name)
                  ..overflow = TextOverflow.ellipsis
                  ..maxLines = 1
                  ..style = n.NikuTextStyle(
                      color: ColorResources().textColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                const SizedBox(height: 20),
                n.Text('Rs ${foodData.price}')
                  ..style = n.NikuTextStyle(
                      color: ColorResources().textColor, fontSize: 15),
                const SizedBox(height: 20),
                n.Text(foodData.delivery)
                  ..style = n.NikuTextStyle(
                      color: ColorResources().textColor, fontSize: 15)
              ])
                ..crossAxisAlignment = CrossAxisAlignment.start,
            )
          ]),
        ),
        n.IconButton(
            foodData.isFavorite ? Icons.favorite : Icons.favorite_border)
          ..color = foodData.isFavorite ? Colors.red : Colors.grey
          ..onPressed = () {}
      ])
        ..mainAxisAlignment = MainAxisAlignment.spaceBetween
        ..crossAxisAlignment = CrossAxisAlignment.start,
    );
