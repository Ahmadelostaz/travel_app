import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/widgets/Fetured.dart';
import '../modules/travel.dart';

class TravelDetail extends StatelessWidget {
  final Travel travel;
  const TravelDetail({Key? key, required this.travel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 10, left: 10),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                child: ClipOval(
                    child: Image.asset(
                  travel.url,
                  fit: BoxFit.cover,
                  height: 50,
                  width: 50,
                )),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      travel.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      travel.location,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              IconButton(onPressed: () {}, icon: const Icon(Icons.share))
            ],
          ),
          userInfoBuilder(travel),
        ],
      ),
    );
  }
}

Widget userInfoBuilder(Travel travel) {
  return Container(
    padding: const EdgeInsets.all(8),
    margin: const EdgeInsets.symmetric(vertical: 8),
    child: Column(
      children: [
        Text(
          travel.detail,
        ),
        Container(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Featured',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'View All',
                  style: TextStyle(fontSize: 17),
                ),
              )
            ],
          ),
        ),
        FeturedBlogs()
        ,
        Text(
          travel.detail,
        ),
        Text(
          travel.detail,
        )
      ],
    ),
  );
}

