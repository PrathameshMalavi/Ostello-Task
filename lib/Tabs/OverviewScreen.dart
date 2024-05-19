import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Overview extends StatefulWidget {
  const Overview({super.key});

  @override
  State<Overview> createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Container(child: Image.asset("assets/logo/Ostello.png" )),
            Column(
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  margin:
                  EdgeInsets.fromLTRB(0, 0, 1.4, 2),
                  child: Text(
                    '   Hey Prathamesh here ',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'Roboto Condensed',
                      letterSpacing: 1,
                      fontWeight: FontWeight.w900,
                      fontSize: 17,
                      height: 1.2,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10 ),
                  width: 300,
                  child: Text(
                    "Hi there! I'm Prathamesh, a dedicated BE Information Technology student deeply passionate about Android and Flutter development. Crafting applications has been my passion since my second year, and now, as I approach the end of my third year, I've honed my skills and expertise in creating seamless and innovative mobile experiences. I'm eager to bring my enthusiasm, fresh perspective, and hands-on experience to contribute effectively as a skilled Android and Flutter developer.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'Roboto Condensed',
                      fontWeight: FontWeight.w800,
                      fontSize: 12,
                      height: 1.2,
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ),


          ],
        ),
      ),
    );
  }
}
