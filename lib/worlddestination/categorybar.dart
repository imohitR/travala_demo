import 'package:flutter/material.dart';
import 'dummy_model.dart';

class CategoriesTabPage extends StatefulWidget {
  const CategoriesTabPage({
    super.key,
  });

  @override
  _CategoriesTabPageState createState() => _CategoriesTabPageState();
}

class _CategoriesTabPageState extends State<CategoriesTabPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  bool showTab = true;

  @override
  void initState() {
    tabController = TabController(
      length: categories.length,
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 100,
      child: Column(
        children: [
          showTab
              ? Container(
                  constraints: const BoxConstraints(maxHeight: 150.0),
                  child: Material(
                      color: Colors.grey,
                      child: TabBar(
                        controller: tabController,
                        isScrollable: false,
                        indicatorColor: const Color(0xFFFBD30E),
                        indicatorWeight: 3,
                        tabs: categories
                            .map((category) => Tab(text: category.name))
                            .toList(),
                      )),
                )
              : Container(),
          Expanded(
            child: TabBarView(
                controller: tabController,
                children: categories
                    .map(
                      (category) => SubCategoryWidget(
                        subCategories: category.subCategories,
                      ),
                    )
                    .toList()),
          ),
        ],
      ),
    );
  }
}

class SubCategoryWidget extends StatefulWidget {
  final List<SubCategory> subCategories;

  const SubCategoryWidget({Key? key, required this.subCategories})
      : super(key: key);

  @override
  _SubCategoryWidgetState createState() => _SubCategoryWidgetState();
}

class _SubCategoryWidgetState extends State<SubCategoryWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      vsync: this,
      length: widget.subCategories.length,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double itemWidth = (size.width - 5.0 * 2 - 17) / 3;
    double itemHeight = itemWidth + 66;

    return TabBarView(
      controller: _tabController,
      children: widget.subCategories.map<Widget>((subCategory) {
        return GridView.count(
          padding: const EdgeInsets.only(
            left: 10,
            top: 10,
            right: 7,
            bottom: 0,
          ),
          crossAxisCount: 3,
          mainAxisSpacing: 5.0,
          crossAxisSpacing: 5.0,
          childAspectRatio: itemWidth / itemHeight,
          children: subCategory.products.map((product) {
            return Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 0, right: 0),
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(14.0),
                        ),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.blue.withOpacity(0.5),
                            blurRadius: 3.0,
                          ),
                        ],
                      ),
                      margin: const EdgeInsets.all(5.0),
                      height: size.width / 3,
                      width: size.width / 3,
                      child:
                          //  ProductWidget(item),
                          ClipRRect(
                        borderRadius: BorderRadius.circular(14.0),
                        child: Image.asset(
                          product.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(3.0),
                    width: size.width / 3,
                    height: 40,
                    child: Text(
                      product.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        );
      }).toList(),
    );
  }
}

class BubbleTabIndicator extends Decoration {
  final double indicatorHeight;
  final Color indicatorColor;
  final double indicatorRadius;
  @override
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry insets;
  final TabBarIndicatorSize tabBarIndicatorSize;

  const BubbleTabIndicator({
    this.indicatorHeight = 35.0,
    this.indicatorColor = Colors.greenAccent,
    this.indicatorRadius = 100.0,
    this.tabBarIndicatorSize = TabBarIndicatorSize.label,
    this.padding = const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
    this.insets = const EdgeInsets.symmetric(horizontal: 5.0),
  });

  @override
  _BubblePainter createBoxPainter([VoidCallback? onChanged]) {
    return new _BubblePainter(this, onChanged!);
  }
}

class _BubblePainter extends BoxPainter {
  _BubblePainter(this.decoration, VoidCallback onChanged) : super(onChanged);

  final BubbleTabIndicator decoration;

  double get indicatorHeight => decoration.indicatorHeight;
  Color get indicatorColor => decoration.indicatorColor;
  double get indicatorRadius => decoration.indicatorRadius;
  EdgeInsetsGeometry get padding => decoration.padding;
  EdgeInsetsGeometry get insets => decoration.insets;
  TabBarIndicatorSize get tabBarIndicatorSize => decoration.tabBarIndicatorSize;

  Rect _indicatorRectFor(Rect rect, TextDirection textDirection) {
    Rect indicator = padding.resolve(textDirection).inflateRect(rect);

    if (tabBarIndicatorSize == TabBarIndicatorSize.tab) {
      indicator = insets.resolve(textDirection).deflateRect(rect);
    }

    return Rect.fromLTWH(
      indicator.left,
      indicator.top,
      indicator.width,
      indicator.height,
    );
  }

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration.size != null);
    final Rect rect = Offset(
            offset.dx, (configuration.size!.height / 2) - indicatorHeight / 2) &
        Size(configuration.size!.width, indicatorHeight);
    final TextDirection? textDirection = configuration.textDirection;
    final Rect indicator = _indicatorRectFor(rect, textDirection!);
    final Paint paint = Paint();
    paint.color = indicatorColor;
    paint.style = PaintingStyle.fill;
    canvas.drawRRect(
        RRect.fromRectAndRadius(indicator, Radius.circular(indicatorRadius)),
        paint);
  }
}
