import 'package:flutter/material.dart';

// 實作可以滑動的TabBar
//
// (實作SliverPersistentHeaderDelegate)
// override -> build,shouldRebuild,maxExtent,minExtent
// SliverPersistentHeaderDelegate可以有好幾個OuO

class SliverTabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar widget;
  final Color color;  //TabBar背景色
  const SliverTabBarDelegate(
      this.widget,
      {this.color}
      ) : assert(widget != null);

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