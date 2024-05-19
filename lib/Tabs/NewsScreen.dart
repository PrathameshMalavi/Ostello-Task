import 'dart:core';
import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ostello_assingment/Model/news.dart';

import '../Model/news.dart';
import '../Model/news.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreen();
}

class _NewsScreen extends State<NewsScreen> {
  List<news> newsList = [
    news(
        source: "The Economic Times",
        time: "today",
        newsDec:
            "Virtual & augmented reality (VR & AR) tech is being adopted in radiology"),
    news(
        source: "The Times of India",
        time: "today",
        newsDec:
            "The field of radiology, with its cutting-edge technologies and intricate procedures, offers a unique opportunity for revenue cycle..."),
    news(
        source: "The Hindu",
        time: "1 day ago",
        newsDec:
            "Princeton Radiology is joining a growing number of imaging providers offering full-body MRI scans to asymptomatic individuals in the hopes..."),
    news(
        source: "Indian Express",
        time: "2 days ago",
        newsDec:
            "Virtual & augmented reality (VR & AR) tech is being adopted in radiology"),
    news(
        source: "The Times of India",
        time: "2 days ago",
        newsDec:
            "Some say Al can perform better than radiologists, but it's not being used widely in radiology practices."),
    news(
        source: "Indian Express",
        time: "3 days ago",
        newsDec:
            "Virtual & augmented reality (VR & AR) tech is being adopted in radiology"),
    news(
        source: "The Economic Times",
        time: "4 days ago",
        newsDec:
            "Virtual & augmented reality (VR & AR) tech is being adopted in radiology"),
    news(
        source: "The Times of India",
        time: "4 days ago",
        newsDec:
            "Virtual & augmented reality (VR & AR) tech is being adopted in radiology")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 24, right: 24),
        child: ListView.builder(
            itemCount: newsList.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  margin: EdgeInsets.only(top: 24),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '${newsList[index].source}  •  ${newsList[index].time} ',
                            style: GoogleFonts.getFont(
                              'Roboto Condensed',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              letterSpacing: 0.1,
                              color: Color(0xFF4C4452),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 24),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '${newsList[index].newsDec}',
                            style: GoogleFonts.getFont(
                              'Roboto Condensed',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              letterSpacing: 0.1,
                              color: Color(0xFF4C4452),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ));
            }),
      ),
    );
  }
}
