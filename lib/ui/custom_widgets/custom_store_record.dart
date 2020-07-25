import 'package:ecommerceapp/constants/colors.dart';
import 'package:ecommerceapp/constants/decorations.dart';
import 'package:flutter/material.dart';

class CustomStoreRecord extends StatelessWidget {

  final String title;
  final String number;
  final String image;
  final int count;
  CustomStoreRecord({
    this.title,
    this.number,
    this.image,
    this.count
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: count == 0 ?
        prodSampSuppDecoration :
        count == 1 ?
        BoxDecoration(color: Colors.white,) :
        prodSampSuppDecoration.copyWith(borderRadius: BorderRadius.only(bottomRight: Radius.circular(30.0))),
        height: 90.0,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(number , style: TextStyle(color: blueColor,fontSize: 27, fontWeight: FontWeight.bold),),
                  SizedBox(width: 25.0,),
                  Image.asset(image),
                ],
              ),
              Text(title, style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12.0),),
            ],
          ),
        ),
      ),
    );
  }
}