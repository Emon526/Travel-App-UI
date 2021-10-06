// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travelapp/model/model.dart';

class TravelBlog extends StatelessWidget {
  final _list = Travel.blogList();
  final _pagecontrol = PageController(viewportFraction: 0.95);

  TravelBlog({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: PageView.builder(
          physics: BouncingScrollPhysics(),
          controller: _pagecontrol,
          itemCount: _list.length,
          itemBuilder: (context, index) {
            var travel = _list[index];
            return Stack(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(right: 10.0, top: 10, bottom: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      travel.imgurl,
                      width: size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 80,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        travel.name,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        travel.location,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange[900],
        child: Icon(
          Icons.arrow_forward,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
