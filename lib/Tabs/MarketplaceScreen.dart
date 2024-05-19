import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ostello_assingment/Model/marketplaceIten.dart';

class MarketPlaceScreen extends StatefulWidget {
  const MarketPlaceScreen({Key? key}) : super(key: key);

  @override
  State<MarketPlaceScreen> createState() => _MarketPlaceScreenState();
}

class _MarketPlaceScreenState extends State<MarketPlaceScreen> {
  List<Market> marketList = [
    Market(
      image: 'assets/card/image1.jpeg',
      name: 'Shiksha Coaching Center',
      ratting: '4.5 (100+ Rating)',
      description: 'All Subjects • Com • Sci',
      offer: '50',
      location: 'Kalkaji • 3kms away',
      discout: 'UPTO ₹1000',
    ),
    Market(
      image: 'assets/card/image2.jpg',
      name: 'Mahesh Tutorials',
      ratting: '4.1 (50+ Rating)',
      description: 'All Subjects • Art • Sci',
      offer: '40',
      location: 'Nehru Nagar • 5kms away',
      discout: 'UPTO ₹800',
    ),
    Market(
      image: 'assets/card/image3.jpg',
      name: 'Vidyalankar Classes',
      ratting: '4.2 (40+ Rating)',
      description: 'All Subjects • Com • Sci',
      offer: '20',
      location: 'Gadhi Nagar • 1kms away',
      discout: 'UPTO ₹550',
    ),
    Market(
      image: 'assets/card/image4.jpg',
      name: 'Newage Academy',
      ratting: '3.8 (70+ Rating)',
      description: 'All Subjects • Sci • Art',
      offer: '35',
      location: 'Tilak Nagar • 4kms away',
      discout: 'UPTO ₹750',
    ),
    Market(
      image: 'assets/card/image5.jpg',
      name: 'Excel Academy',
      ratting: '4.2 (90+ Rating)',
      description: 'All Subjects • Com • Art',
      offer: '35',
      location: 'ManekAngan • 4kms away',
      discout: 'UPTO ₹750',
    ),
    Market(
      image: 'assets/card/image6.jpg',
      name: 'Scale Coaching Center',
      ratting: '4.3 (100+ Rating)',
      description: 'All Subjects • Com • Sci',
      offer: '45',
      location: 'Mahtre Road • 4.2kms away',
      discout: 'UPTO ₹1100',
    ),
    Market(
      image: 'assets/card/image7.jpg',
      name: 'Gurukul Academy',
      ratting: '3.8 (100+ Rating)',
      description: 'All Subjects • Com • Sci',
      offer: '70',
      location: 'NewPark • 10kms away',
      discout: 'UPTO ₹2000',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBody() {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => _buildListItem(index),
              separatorBuilder: (context, index) => _buildSeparator(),
              itemCount: marketList.length,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListItem(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          children: [
            _buildImageContainer(index),
            _buildDetailsContainer(index),
          ],
        ),
      ),
    );
  }

  Widget _buildImageContainer(int index) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        children: [
          Container(
            child: ClipRRect(
              child: Image.asset(
                marketList[index].image,
                height: 150,
                width: 150,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Positioned(
            bottom: 15,
            right: 14,
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 12.1, 0, 2.9),
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
          ),
        ],
      ),
    );
  }

  Widget _buildDetailsContainer(int index) {
    return Padding(
      padding: EdgeInsets.only(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            marketList[index].name,
            style: GoogleFonts.getFont(
              'Roboto Condensed',
              fontWeight: FontWeight.w800,
              fontSize: 16,
              height: 1.5,
              color: Color(0xFF201926),
            ),
          ),
          Text(
            marketList[index].ratting,
            style: GoogleFonts.getFont(
              'Roboto Condensed',
              fontWeight: FontWeight.w800,
              fontSize: 12,
              height: 1.5,
              color: Color(0xFF4C4452),
            ),
          ),
          Text(
            marketList[index].description,
            style: GoogleFonts.getFont(
              'Roboto Condensed',
              fontWeight: FontWeight.w400,
              fontSize: 13,
              height: 1.5,
              letterSpacing: -0.1,
              color: Color(0xFF4C4452),
            ),
          ),
          Text(
            marketList[index].location,
            style: GoogleFonts.getFont(
              'Roboto Condensed',
              fontWeight: FontWeight.w400,
              fontSize: 13,
              height: 1.5,
              letterSpacing: -0.1,
              color: Color(0xFF4C4452),
            ),
          ),
          ElevatedButton(
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
          ),
        ],
      ),
    );
  }

  Widget _buildSeparator() {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      color: Colors.grey.shade200,
      child: Padding(
        padding: const EdgeInsets.all(0.8),
        child: Container(),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[Colors.grey.shade200, Colors.grey],
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(0),
            topRight: Radius.circular(0),
          ),
        ),
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
    );
  }
}
