import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlaceDetail extends StatefulWidget{
  static String route  = 'placeDetail';
  @override
  State<PlaceDetail> createState() => _PlaceDetailState();
}

class _PlaceDetailState extends State<PlaceDetail> {
  @override
  Widget build(BuildContext context) {
 return  const Scaffold(
   body:Center(child: Text('s')) ,
 );
  }
}