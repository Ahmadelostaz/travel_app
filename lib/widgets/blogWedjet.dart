import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/widgets/placeDetail.dart';

import '../modules/travel.dart';

class BlogWedget extends StatefulWidget {
  BlogWedget({Key? key}) : super(key: key);

  @override
  State<BlogWedget> createState() => _BlogWedgetState();
}

class _BlogWedgetState extends State<BlogWedget> {
  List<Travel> groub = Travel.getTravelBlogs();

  final _pageController = PageController(viewportFraction: 0.9);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        itemCount: groub.length,
        itemBuilder: (ctx, index) {
          return GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed(PlaceDetail.route);
            },
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.only(right: 20, bottom: 30, top: 10),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: Image.asset(
                    groub[index].url,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fill,
                    filterQuality: FilterQuality.high,
                  ),
                ),
              ),
              Positioned(
                  bottom: 80,
                  left: 20,
                  child: Container(

                    child: Column(
                      children: [
                        Material(
                          color: Colors.transparent,
                          child: Text(
                            groub[index].name,
                            style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          child: Text(
                            groub[index].location,
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        )
                      ],
                    ),
                  )),
               Positioned(
                  bottom: 70,
                  right: 35,
                  child: groub[index]!=groub.last? Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white70),
                      alignment: Alignment.center,
                      child: IconButton(
                        alignment: Alignment.center,
                        icon: const Icon(
                          Icons.arrow_forward,
                          size: 35,
                        ),
                        onPressed: () {},
                      )
                  ):Text('')
               )
            ]),
          );
        });
  }
}
