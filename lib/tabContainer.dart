import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ostello_assingment/Tabs/MarketplaceScreen.dart';
import 'package:ostello_assingment/Tabs/NewsScreen.dart';
import 'package:ostello_assingment/Tabs/OverviewScreen.dart';

class TabContainer extends StatefulWidget {
  const TabContainer({super.key});

  @override
  State<TabContainer> createState() => _TabContainerState();
}

class _TabContainerState extends State<TabContainer> {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Container(
            child: Row(
              children: [
                IconButton(
                  icon: SvgPicture.asset(
                    "assets/AppBar/group_1_x2.svg",
                    semanticsLabel: 'Back Logo',
                    height: 30,
                    width: 30,
                  ),
                  tooltip: 'Menu Icon',
                  onPressed: () {},
                ),
                Container(
                  margin: EdgeInsets.only(left: 5),
                  child: Text(
                    'Radiology',
                    style: GoogleFonts.getFont(
                      'Roboto Condensed',
                      fontWeight: FontWeight.w800,
                      fontSize: 24,
                      color: Color(0xFF201926),
                    ),
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  child:IconButton(
                    icon: Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                      size: 28,
                    ),
                    tooltip: 'Favourutes Icon',
                    onPressed: () {},
                  ),
                ),
                IconButton(
                  icon: SvgPicture.asset(
                    "assets/AppBar/vector_6_x2.svg",
                    semanticsLabel: 'Forward',
                    height: 22,
                    width: 30,
                  ),
                  tooltip: 'Forward Icon',
                  onPressed: () {},
                ),
                Container(
                  height: 33,
                  width: 33,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white),
                  child: IconButton(
                    icon: Container(
                      child: Image.asset(
                          width: 33,
                          height: 33,
                          "assets/logo/bot_face_1.png"),
                    ),
                    tooltip: 'Bot Icon',
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          //<Widget>[]
          backgroundColor: Colors.white,
          elevation: 50.0,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          bottom: TabBar(
            labelStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
            unselectedLabelStyle:
                TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
            tabs: [
              Tab(
                text: "Overview",
              ),
              Tab(
                text: "Marketplace",
              ),
              Tab(
                text: "News",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [Overview(), MarketPlaceScreen(), NewsScreen()],
        ),
      ),
    );
  }
}
