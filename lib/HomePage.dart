import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");

  AssetImage diceimage1;
  AssetImage dice_image;
  @override
  void initState() {
    super.initState();
    setState(() {
      diceimage1 = one;
      dice_image = two;
    });
  }

  void rollDice() {
    int random = (1 + Random().nextInt(6));
    int rand = (1 + Random().nextInt(6));
    AssetImage newImage;
    AssetImage new_Image;
    switch (random) {
      case 1:
        newImage = one;
        break;
      case 2:
        newImage = two;
        break;
      case 3:
        newImage = three;
        break;
      case 4:
        newImage = four;
        break;
      case 5:
        newImage = five;
        break;
      case 6:
        newImage = six;
        break;
    }
    switch (rand) {
      case 1:
        new_Image = one;
        break;
      case 2:
        new_Image = two;
        break;
      case 3:
        new_Image = three;
        break;
      case 4:
        new_Image = four;
        break;
      case 5:
        new_Image = five;
        break;
      case 6:
        new_Image = six;
        break;
    }
    setState(() {
      diceimage1 = newImage;
      dice_image = new_Image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice Roller'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Image(
              //   image: diceimage,
              //   width: 200.0,
              //   height: 200.0,
              // ),
            Container(
              child: Image(
                image: diceimage1,
                width: 200.0,
                height: 200.0,
                
              ),
              
            ),
            Container(
              child: Image(
                image: dice_image,
                width: 200.0,
                height: 200.0,
              ),
            ),
              Container(
                margin: EdgeInsets.only(top: 100.0),
                child: RaisedButton(
                  color: Colors.orange,
                  padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                  child: Text('Roll the dice!'),
                  onPressed: rollDice,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
