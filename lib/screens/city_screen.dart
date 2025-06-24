import 'package:clima_flutter/utilities/constants.dart';
import 'package:flutter/material.dart';

class CityScreen extends StatefulWidget {
  const CityScreen({super.key});

  @override
  CityScreenState createState() => CityScreenState();
}

class CityScreenState extends State<CityScreen> {
  String cityName = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/city_background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(foregroundColor: Colors.white),
                  child: Icon(Icons.arrow_back_ios, size: 50.0),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  decoration: kTextFieldInputDecoration,
                  style: TextStyle(color: Colors.black),
                  onChanged: (value) {
                    print(value);
                  },
                ),
              ),
              Container(
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context, cityName);
                  },
                  style: TextButton.styleFrom(foregroundColor: Colors.white),
                  child: Text('Get Weather', style: kButtonTextStyle),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
