import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../modules/travel.dart';

class FeturedBlogs extends StatelessWidget {
  final List<Travel> travels = Travel.getFeaturedBlogs();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: 90,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            child: Image.asset(
              travels[index].url,
              fit: BoxFit.cover,
            ),
          ),
          separatorBuilder: (ctx, index) => const Divider(
            indent: 8,
          ),
          itemCount: travels.length),
    );
  }
}
