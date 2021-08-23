import 'package:flutter/material.dart';
import 'package:pineapplebank_frontend/screens/home/home_ProfilePage_foodTrace.dart';


class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}
class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {

    var tabTitle = [
      'My Food Trace',
      'My Event',
    ];

    //部件尺寸依螢幕大小調整
    final ScreenW = MediaQuery.of(context).size.width;
    final ScreenH = MediaQuery.of(context).size.height;

    //AppBar跟TabBar之間的空間(flexibleSpace)
    //expandedHeight =
    final AppBarFiexHeight = ScreenH * 4 / 7;

    final UserRadius = ScreenW / 4;
    final PineBtnDesign_size = UserRadius * 4 / 5;
    final PineRadius = ScreenW / 10;
    final TextBlockW = ScreenW * 4 / 10;
    final TextBlockH = 40.0;
    final ContentBlockW = ScreenW * 9 / 10;
    final ContentBlockH = 50.0;
    final ContentBlockW2 = ScreenW * 8 / 10;
    final ContentBlockH2 = 100.0;


    final ABleading = Container();
    final UserName = Container();
    final AppBarBtn = Container();
    final UserInfo = Container();


    return DefaultTabController(
        length: tabTitle.length,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (context, bool) {
              return [
                SliverAppBar(

                  //基本AppBar屬性
                  elevation: 0.0,//無陰影
                  leading: ABleading,
                  title: UserName,
                  actions: [AppBarBtn,],

                  //SliverAppBar特殊屬性
                  floating: true,//往下拉時 true:直接出現Bar false: 下方的東西都滑到底才出現Bar
                  pinned: true,//往上滑時 true:基本AppBar固定 false: AppBar會完全收起
                  expandedHeight: AppBarFiexHeight, // flexibleSpace 最大高度
                  flexibleSpace: FlexibleSpaceBar(
                    // flexibleSpace: SliverAppBar()伸縮活動的空間
                    // 用FlexibleSpaceBar()管理 background為伸縮活動的部分
                    background: UserInfo,
                  ),
                  // 可以搭配stretch: true 跟 FlexibleSpaceBar()的stretchModes屬性作更多變化
                ),
                // SliverPersistentHeader(
                //   pinned: true,
                //   delegate: SliverTabBarDelegate(
                //     TabBar(
                //       tabs: tabTitle.map((f) => Tab(text: f)).toList(),
                //       indicatorColor: TabBarTextColor[1],
                //       unselectedLabelColor: TabBarTextColor[0],
                //       labelColor: TabBarTextColor[1],
                //     ),
                //     color: PineappleWhite,
                //   ),
                // ),
              ];//return :SliverAppBar+SliverPersistentHeader
            },
            //body是子分頁的部分，寫在home_ProfilePage_foodTrace、
            body: TabBarView(
              children: [
                foodTracePage(),
                eventTracePage(),
              ],
            ),
          ),
        )
    );
  }
}

// 實作可以滑動的TabBar
//
// (實作SliverPersistentHeaderDelegate)
// override -> build,shouldRebuild,maxExtent,minExtent
// SliverPersistentHeaderDelegate可以有好幾個OuO
class SliverTabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar widget;
  final Color color;
  const SliverTabBarDelegate(this.widget, {required this.color})
      : assert(widget != null);


  @override
  Widget build(
    BuildContext context, double shrinkOffset, bool overlapsContent) {
      return new Container(
        child: widget,
        color: color,
      );
  }

  //產生實例時，還有其他可以滑動的子部件 => true 讓畫面可以重新build
  //平常沒事就 => false
  @override
  bool shouldRebuild(SliverTabBarDelegate oldDelegate) {
    return false;
  }

  //maxExtent 初始展開最大高度
  @override
  double get maxExtent => widget.preferredSize.height;

  //minExtent 上滑時 會至少保留minExtent高度
  @override
  double get minExtent => widget.preferredSize.height;

  // maxExtent跟minExtent一樣 => 你的Bar不會因為滑動伸縮 是個安分的Bar
  //widget.preferredSize.height 取得預設Bar高度

}