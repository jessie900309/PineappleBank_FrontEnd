import 'package:flutter/material.dart';
import 'package:pineapplebank_frontend/screens/home/home_ProfilePage_foodTrace.dart';
import 'package:pineapplebank_frontend/util/CustomSliverTabBar.dart';
import 'package:pineapplebank_frontend/util/constants_styleDesign.dart';


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
                SliverPersistentHeader(
                  pinned: true,
                  delegate: SliverTabBarDelegate(
                    TabBar(
                      tabs: tabTitle.map((f) => Tab(text: f)).toList(),
                      indicatorColor: TabIndicatorColor,
                    ),
                    color: TabBG,
                  ),
                ),
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
