import 'package:flutter/material.dart';
import 'package:travel_app/modules/travel.dart';
import 'package:travel_app/widgets/placeDetail.dart';

class BottomBlog extends StatelessWidget {
  final _bottomGroub = Travel.getBottomBlogs();
 BottomBlog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: _bottomGroub.length + 1,
      separatorBuilder: (BuildContext context, int index) => Container(
        margin: const EdgeInsets.only(bottom: 5),
        child: GestureDetector(
          onTap: (){
              Navigator.of(context).pushNamed(PlaceDetail.route,arguments: _bottomGroub[index]);
          },
          child: Stack(
            children: [
              ClipRRect(
                child: Image.asset(
                  _bottomGroub[index].url,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      padding: const EdgeInsets.all(5),
                      child: Text(
                        _bottomGroub[index].location,
                        style: const TextStyle(fontSize: 13),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      itemBuilder: (BuildContext context, int index) => const Divider(
        indent: 4,
      ),
    );
  }
}
