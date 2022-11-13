import 'package:flutter/material.dart';
import 'package:travalacom/core/widget/bottom_bar.dart';
import 'package:travalacom/theme/utils/app_sizes.dart';
import 'package:travalacom/utils/replaced_range.dart';
import 'package:travalacom/core/widget/carousel.dart';
import 'package:travalacom/core/widget/destination_heading.dart';
import 'package:travalacom/core/widget/explore_drawer.dart';
import 'package:travalacom/core/widget/feature/Reviewdetail.dart';
import 'package:travalacom/core/widget/feature/carousel.dart';
import 'package:travalacom/core/widget/feature/reviewheading.dart';
import 'package:travalacom/core/widget/featured_heading.dart';
import 'package:travalacom/core/widget/featured_tiles.dart';
import 'package:travalacom/core/widget/Tabbar/Tabbar.dart';
import 'package:travalacom/core/widget/responsive.dart';
import 'package:travalacom/core/widget/appbar/Desktop.dart';
import 'package:travalacom/core/widget/web_scrollbar.dart';
import 'package:travalacom/worlddestination/categorybar.dart';
import 'package:universal_html/js_util.dart';

import 'widget/feature/feature.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late ScrollController _scrollController;
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;
    return Scaffold(
      endDrawer: const TravalaDrawer(),
      backgroundColor: Theme.of(context).backgroundColor,
      // extendBodyBehindAppBar: true,
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              backgroundColor: Color.fromARGB(255, 3, 16, 87),
              elevation: 0,
              // centerTitle: true,
              actions: [
                Builder(
                  builder: (context) => IconButton(
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    onPressed: () => Scaffold.of(context).openEndDrawer(),
                    tooltip:
                        MaterialLocalizations.of(context).openAppDrawerTooltip,
                  ),
                ),
              ],
              title: Text(
                'Travala.com',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
                textScaleFactor: ScaleSize.textScaleFactor(context),
              ),
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 1000),
              child: TopBarContents(_opacity),
            ),

      body: WebScrollbar(
        color: Colors.blueGrey,
        backgroundColor: Colors.blueGrey.withOpacity(0.3),
        width: 10,
        heightFraction: 0.3,
        controller: _scrollController,
        child: SingleChildScrollView(
          controller: _scrollController,
          physics: const ClampingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: screenSize.height * 0.90,
                    width: screenSize.width,
                  ),
                  Column(
                    children: [
                      Tabbar(
                        screenSize: screenSize,
                      ),
                      // FloatingQuickAccessBar(screenSize: screenSize),
                    ],
                  )
                ],
              ),
              Container(
                child: Column(
                  children: [
                    Featured(screenSize: screenSize),
                    const Divider(),
                    gapH48,
                    const CarouselPage(),
                    ReviewHeading(screenSize: screenSize),
                    ReviewDetail(screenSize: screenSize),
                    WorldWideDestination(screenSize: screenSize), //change
                    DestinationCarousel(),
                    FeaturedHeading(
                      screenSize: screenSize,
                    ),
                    FeaturedTiles(screenSize: screenSize),
                  ],
                ),
              ),
              // CategoriesTabPage(),
              SizedBox(height: screenSize.height / 10),
              BottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}
