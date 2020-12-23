import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomeScreen extends StatelessWidget {
  final String name='elazaby';
  final int phone=01000000;
 final String address='10th of ramadan';
  final double score=0.0;
  final double stars=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
appBar: AppBar(
  backgroundColor: Colors.lightBlueAccent,
),
body: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: <Widget>[
    Padding(
      padding: EdgeInsets.symmetric(vertical: 45.0,horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[Text('pharmacy name: $name',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 25.0)),
          SizedBox(
            height: 20.0,
          ),
          Text('pharmacy phone: $phone',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 25.0)),
          SizedBox(
            height: 20.0,
          ),
          Text('Address: $address',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 25.0)),
          SizedBox(
            height: 20.0,
          ),

          Text('Current Score: $score',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 25.0)),
          SizedBox(
            height: 20.0,
          )],),
    ),


    Container(
      color: Colors.lightBlueAccent,
       alignment: Alignment.center,

height: 75.0,
       child: RatingBar(
          initialRating: 0,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        )
    ),
  ],
),
      ),
    );
  }
}
