import 'package:flutter/material.dart';
import 'package:pineapplebank_frontend/screens/home/home_ProfilePage_eventTrace.dart';
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

    //左上角AppIcon
    final PineRadius = ScreenW / 10;
    final AppIcon_circle = Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          width: PineRadius,
          height: PineRadius,
          decoration: IconBGDesign[0],
        ),
        Container(
          width: PineRadius - 4,
          height: PineRadius - 4,
          decoration: IconBGDesign[1],
        ),
        Container(//鳳梨本體
          width: PineRadius - 10,
          height: PineRadius - 10,
          decoration: IconBGDesign[2],
        ),
      ],
    );
    final AppBarLeading = Row(
      children: <Widget>[
        littlePadding,
        AppIcon_circle,
      ],
    );

    //正上方用戶名
    final UserName = Text(
      "User Name", // get user name
      style: PageTitleStyle,
    );

    //右上角設定按鈕
    // final MsgBtn = Container();
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
                  leading: AppBarLeading,
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
                  ),
                ),
              ];//return :SliverAppBar + SliverPersistentHeader
            },
            //body是子分頁的部分，寫在home_ProfilePage_foodTrace、home_ProfilePage_eventTrace
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
