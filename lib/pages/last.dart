import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Last extends StatelessWidget {
  const Last({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                  color: Color(0xffffb900),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(1000))),
            ),
          ),
          Positioned(
            child: Center(
              child: Container(
                width: 207,
                height: 145,
                child: Image.asset(
                  "assets/img/m2.png",
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          ),
          Positioned(
              top: 490,
              left: 125,
              child: Text(
                "Travel Partner",
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 26.4,
                  fontWeight: FontWeight.w600,
                  fontFamily: "myfont",
                ),
              )),
          Positioned(
            left: 0,
            bottom: 0,
            child: Container(
              width: 205,
              height: 235,
              decoration: BoxDecoration(
                  color: Color(0xffffb900),
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(1000))),
            ),
          ),
        ],
      ),
    );
  }
}
