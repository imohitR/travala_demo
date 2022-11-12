import 'package:flutter/material.dart';
import 'package:travalacom/utils/replaced_range.dart';

import 'package:travalacom/widget.dart/carousel.dart';
import 'package:travalacom/widget.dart/destination_heading.dart';
import 'package:travalacom/widget.dart/explore_drawer.dart';
import 'package:travalacom/widget.dart/featured_heading.dart';
import 'package:travalacom/widget.dart/featured_tiles.dart';

import 'package:travalacom/widget.dart/Desktop.dart';

import 'package:travalacom/widget/bottom_bar.dart';
import 'package:travalacom/widget/responsive.dart';
import 'package:travalacom/widget/web_scrollbar.dart';

import 'widget/Tabbar/Tabbar.dart';

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
      endDrawer: TravalaDrawer(),
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
                    icon: Icon(
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
                  Container(
                    child: SizedBox(
                      height: screenSize.height * 0.90,
                      width: screenSize.width,
                      child: Image.asset(
                        'assets/images/cover.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // gapH32,
                  // Container(
                  //     // alignment: Alignment.center,
                  //     child: const Text(
                  //   'Welcome to Travala Start You Journey Delightly',
                  //   style: TextStyle(
                  //       color: Color.fromARGB(255, 1, 10, 36),
                  //       fontWeight: FontWeight.bold,
                  //       fontSize: 22.0),
                  // )),
                  Column(
                    children: [
                      Tabbar(
                        screenSize: screenSize,
                      ),
                      // FloatingQuickAccessBar(screenSize: screenSize),
                      Container(
                        child: Column(
                          children: [
                            FeaturedHeading(
                              screenSize: screenSize,
                            ),
                            FeaturedTiles(screenSize: screenSize)
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              WorldWideDestination(screenSize: screenSize), //change
              DestinationCarousel(),
              SizedBox(height: screenSize.height / 10),
              BottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}
