import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/widgets/blogWedjet.dart';
import 'package:travel_app/widgets/bottom_blog.dart';

class HomeUi extends StatelessWidget {
  const HomeUi({Key? key}) : super(key: key);
 static String homeRoute = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => {},
              icon: const Icon(
                Icons.email,
                color: Colors.black,
              ))
        ],
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children:  [
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 15),
            child: Text("Travel Blog" , style: GoogleFonts.aBeeZee(
              fontSize: 36,
            )),
          ),
          Expanded(flex  :2,child: BlogWedget()),
          Container(
            margin: const EdgeInsets.only(left: 10,right: 10),
            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('blogs' , style: GoogleFonts.aBeeZee(
                  fontSize: 25,
                ),),
                Text('view all' , style: GoogleFonts.aBeeZee(
                    fontSize: 20,
                    color: Colors.blue
                ),),
              ],
            ),
          ),
          Expanded(flex: 1,child:BottomBlog())
        ],
      ),
    );
  }
}
