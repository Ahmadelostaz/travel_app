import 'package:flutter/material.dart';

import 'package:travel_app/modules/travel.dart';
import 'package:travel_app/widgets/travelsDetail.dart';

import '../modules/travel.dart';

class PlaceDetail extends StatefulWidget {
  static String route = 'placeDetail';

  const PlaceDetail({Key? key}) : super(key: key);

  @override
  State<PlaceDetail> createState() => _PlaceDetailState();
}

class _PlaceDetailState extends State<PlaceDetail> {
  @override
  Widget build(BuildContext context) {
    final travels = ModalRoute.of(context)!.settings.arguments as Travel;
    const expandedHeights = 300.0;
    const containerHighet = 40.0;
    return Scaffold(
        body: Stack(
      children: [
        CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              delegate: SliverDelegate(
                  travel: travels,
                  expandedHighet: expandedHeights,
                  roundedContainerHighet: containerHighet),
            ),
            SliverToBoxAdapter(
              child: TravelDetail(
                travel: travels,
              ),
            )
          ],
        ),
        Positioned(
          top: 35,
          left: 20,
          right: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                iconSize: 30,
                color: Colors.white,
              ),
              IconButton(
                  icon: const Icon(Icons.list),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  iconSize: 30,
                  color: Colors.white),
            ],
          ),
        )
      ],
    ));
  }
}

class SliverDelegate extends SliverPersistentHeaderDelegate {
  final Travel travel;
  final double expandedHighet;
  final double roundedContainerHighet;
  SliverDelegate(
      {required this.roundedContainerHighet,
      required this.expandedHighet,
      required this.travel});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      children: [
        Opacity(
          opacity: 0.8,
          child: Image.asset(
            travel.url,
            width: MediaQuery.of(context).size.width,
            height: expandedHighet,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
            top: expandedHighet - shrinkOffset - roundedContainerHighet,
            left: 0.0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: roundedContainerHighet,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.white),
            )),

        Positioned(
            bottom: maxExtent / 2 - 60,
            left: 20,
            child: Column(
              children: [
                Material(
                  color: Colors.transparent,
                  child: Text(
                    travel.name,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  child: Text(
                    travel.location,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ))
      ],
    );
  }

  @override
  double get maxExtent => expandedHighet;

  @override
  double get minExtent => 0.0
  ;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}


