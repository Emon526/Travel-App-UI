// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travelapp/model/model.dart';

class MostPopular extends StatelessWidget {
  final _list = Travel.mostPopular();

  MostPopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      itemCount: _list.length,
      separatorBuilder: (context, index) => SizedBox(
        width: 0,
      ),
      itemBuilder: (context, index) {
        var travel = _list[index];
        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  travel.imgurl,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    travel.name,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    travel.location,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
