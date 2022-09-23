import 'package:flutter/material.dart';
import 'package:niku/namespace.dart' as n;
import 'resources.dart';
import 'components.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: n.Row([
            n.Icon(Icons.location_on_outlined)..color = ColorResources().textColor,
            n.Text('Ahmedabad')
          ])
            ..mainAxisAlignment = MainAxisAlignment.center,
          actions: [n.IconButton(Icons.person)..onPressed = () {}]),
      body: SingleChildScrollView(
        child: n.Column([
          n.Padding(
              child: n.Text('Food Menu')
                ..style = n.NikuTextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold))
            ..left = 10,
          SizedBox(
            height: 50,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: categoryData.length,
                itemBuilder: (_, index) => categoryTile(categoryData[index])),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .5,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: foodData.length,
                itemBuilder: (_, index) => mainCard(context, foodData[index])),
          ),
          const SizedBox(height: 20),
          n.Padding(
            child: n.Text('Popular Now')
              ..style = n.NikuTextStyle(
                  color: ColorResources().textColor, fontWeight: FontWeight.bold),
          )..left = 10,
          ListView.builder(
              reverse: true,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: foodData.length,
              itemBuilder: (_, index) => listCard(foodData[index]))
        ])
          ..mainAxisAlignment = MainAxisAlignment.start
          ..crossAxisAlignment = CrossAxisAlignment.start,
      ),
    );
  }
}
