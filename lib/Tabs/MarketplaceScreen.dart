import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ostello_assingment/Model/marketplaceIten.dart';

class MarketPlaceScreen extends StatefulWidget {
  const MarketPlaceScreen({super.key});

  @override
  State<MarketPlaceScreen> createState() => _MarketPlaceScreen();
}

class _MarketPlaceScreen extends State<MarketPlaceScreen> {
  List<Market> marketList = [
    Market(
        image: 'assets/card/image1.jpeg',
        name: 'Shiksha Coaching Center',
        ratting: '4.5 (100+ Rating)',
        description: 'All Subjects • Com • Sci  ',
        offer: '50',
        location: 'Kalkaji  • 3kms away',
        discout: 'UPTO ₹1000'),
    Market(
        image: 'assets/card/image2.jpg',
        name: 'Mahesh Tutorials',
        ratting: '4.1 (50+ Rating)',
        description: 'All Subjects • Art • Sci  ',
        offer: '40',
        location: 'Nehru Nagar • 5kms away',
        discout: 'UPTO ₹800'),
    Market(
        image: 'assets/card/image3.jpg',
        name: 'Vidyalankar Clases',
        ratting: '4.2 (40+ Rating)',
        description: 'All Subjects • Com • Sci  ',
        offer: '20',
        location: 'Gadhi Nagar  • 1kms away',
        discout: 'UPTO ₹550'),
    Market(
        image: 'assets/card/image4.jpg',
        name: 'Newage Academy',
        ratting: '3.8 (70+ Rating)',
        description: 'All Subjects • Sci • Art  ',
        offer: '35',
        location: 'Tilak Nagar  • 4kms away',
        discout: 'UPTO ₹750'),
    Market(
        image: 'assets/card/image5.jpg',
        name: 'Excel Academy',
        ratting: '4.2 (90+ Rating)',
        description: 'All Subjects • Com • Art  ',
        offer: '35',
        location: 'ManekAngan  • 4kms away',
        discout: 'UPTO ₹750'),
    Market(
        image: 'assets/card/image6.jpg',
        name: 'Scale Coaching Center',
        ratting: '4.3 (100+ Rating)',
        description: 'All Subjects • Com • Sci  ',
        offer: '45',
        location: 'Mahtre Road  • 4.2kms away',
        discout: 'UPTO ₹1100'),
    Market(
        image: 'assets/card/image7.jpg',
        name: 'Gurukul Academy',
        ratting: '3.8 (100+ Rating)',
        description: 'All Subjects • Com • Sci  ',
        offer: '70',
        location: 'NewPark  • 10kms away',
        discout: 'UPTO ₹2000'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, position) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Stack(
                              children: [
                                Container(
                                  child: ClipRRect(
                                    child: Image.asset(
                                      marketList[position].image,
                                      height: 150,
                                      width: 150,
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                Positioned(
                                  left: 10,
                                  top: 10,
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 81),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFF0070CE),
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                        child: Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 0, 0, 0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 1.5, 4.7, 1.5),
                                                child: Text(
                                                  'Verified',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 10,
                                                    height: 1.7,
                                                    letterSpacing: 0.1,
                                                    color: Color(0xFFFFFFFF),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Container(
                                                  width: 20,
                                                  height: 20,
                                                  child: Image.asset(
                                                      'assets/images/image_153.png'),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  bottom: 8,
                                  child: Column(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 0, 1.4, 2),
                                        child: Text(
                                          '${marketList[position].offer}% off ',
                                          style: GoogleFonts.getFont(
                                            'Roboto Condensed',
                                            fontWeight: FontWeight.w900,
                                            fontSize: 16,
                                            height: 1.2,
                                            color: Color(0xFFFFFFFF),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          '${marketList[position].discout}',
                                          style: GoogleFonts.getFont(
                                            'Roboto Condensed',
                                            fontWeight: FontWeight.w800,
                                            fontSize: 10,
                                            height: 1.2,
                                            color: Color(0xCCFFFFFF),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Positioned(
                                  bottom: 15,
                                  right: 14,
                                  child: Container(
                                    margin:
                                        EdgeInsets.fromLTRB(0, 12.1, 0, 2.9),
                                    child: SizedBox(
                                      width: 19.5,
                                      height: 18,
                                      child: Icon(
                                        Icons.favorite_border,
                                        color: Colors.white,
                                        size: 28,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${marketList[position].name}',
                                  style: GoogleFonts.getFont(
                                    'Roboto Condensed',
                                    fontWeight: FontWeight.w800,
                                    fontSize: 16,
                                    height: 1.5,
                                    color: Color(0xFF201926),
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 2, 6.1, 1.1),
                                        width: 15.8,
                                        height: 15.8,
                                        child: SizedBox(
                                          width: 15.8,
                                          height: 15.8,
                                          child: SvgPicture.asset(
                                            'assets/images/vector_2_x2.svg',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 0, 6.2, 0),
                                        child: Text(
                                          '${marketList[position].ratting}',
                                          style: GoogleFonts.getFont(
                                            'Roboto Condensed',
                                            fontWeight: FontWeight.w800,
                                            fontSize: 12,
                                            height: 1.5,
                                            color: Color(0xFF4C4452),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 3, 12, 1),
                                  child: Text(
                                    '${marketList[position].description}',
                                    style: GoogleFonts.getFont(
                                      'Roboto Condensed',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                      height: 1.5,
                                      letterSpacing: -0.1,
                                      color: Color(0xFF4C4452),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 2, 12, 1),
                                  child: Text(
                                    '${marketList[position].location}',
                                    style: GoogleFonts.getFont(
                                      'Roboto Condensed',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                      height: 1.5,
                                      letterSpacing: -0.1,
                                      color: Color(0xFF4C4452),
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  style: ButtonStyle(),
                                  onPressed: () {},
                                  child: Text(
                                    'View Details',
                                    style: GoogleFonts.getFont(
                                      'Roboto Condensed',
                                      fontWeight: FontWeight.w800,
                                      fontSize: 12,
                                      color: Color(0xFF7D23E0),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, position) {
                  return Container(
                    margin: EdgeInsets.only(left: 10 , right: 10),
                    color: Colors.grey.shade200,
                    child: Padding(
                      padding: const EdgeInsets.all(0.8),
                      child: Container(),
                    ),
                  );
                },
                itemCount: marketList.length,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[Colors.grey.shade200, Colors.grey]),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0), topRight: Radius.circular(0))),
          padding: EdgeInsets.all(10),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: GoogleFonts.getFont(
                'Roboto Condensed',
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xFF201926),
              ),
              children: [
                TextSpan(
                  text:
                      'Getting guidance has now become easy                                                              ',
                  style: GoogleFonts.getFont(
                    'Roboto Condensed',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    height: 1.3,
                    color: Color(0xFF201926),
                  ),
                ),
                TextSpan(
                  text: '12+ ',
                  style: GoogleFonts.getFont(
                    'Roboto Condensed',
                    fontWeight: FontWeight.w900,
                    fontSize: 14,
                    height: 1.3,
                    color: Color(0xFF201926),
                  ),
                ),
                TextSpan(
                  text: 'coaching centers near',
                  style: GoogleFonts.getFont(
                    'Roboto Condensed',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    height: 1.3,
                    color: Color(0xFF201926),
                  ),
                ),
                TextSpan(
                  text: 'by',
                  style: GoogleFonts.getFont(
                    'Roboto Condensed',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFF201926),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
