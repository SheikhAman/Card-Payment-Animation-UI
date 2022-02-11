import 'package:card_demo/widgets/card_front.dart';
import 'package:flutter/material.dart';

class MyCardsPage extends StatefulWidget {
  const MyCardsPage({Key? key}) : super(key: key);

  @override
  _MyCardsPageState createState() => _MyCardsPageState();
}

class _MyCardsPageState extends State<MyCardsPage> {
  double _rotationFactor = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cards :)'),
      ),
      body: Center(
        child: Column(
          children: [
            CardFrontView(),
            Slider(
                value: _rotationFactor,
                onChanged: (double value) {
                  setState(() {
                    _rotationFactor = value;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
