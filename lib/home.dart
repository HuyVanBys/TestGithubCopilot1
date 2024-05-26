import 'package:flutter/material.dart';
import 'package:wallpaper/views/menu.dart';
// import 'package:wallpaper/widget/widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> with TickerProviderStateMixin {
  @override
  void initState() {
    // _initAdMob();
    // tabController = TabController(length: 3, vsync: this);
    // getTrendingWallpaperLoadMore();
    // getDataInitStartScreen();
    // getUpdatePacks();
    // getCategoryPacks();
    super.initState();

    // _controller.addListener(() {
    //   if (_controller.position.pixels == _controller.position.maxScrollExtent) {
    //     noOfImageToLoad = noOfImageToLoad + 20;
    //     getTrendingWallpaperLoadMore();
    //   }
    // });

    // _bannerAd = BannerAd(
    //   adUnitId: AdManager.bannerAdUnitId,
    //   size: AdSize.banner,
    // );

    // _loadBannerAd();
    // _isInterstitialAdReady = false;
    // _interstitialAd = InterstitialAd(
    //   adUnitId: AdManager.interstitialAdUnitId,
    //   listener: _onInterstitialAdEvent,
    // );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Menu(),
        endDrawer: Drawer(),
        appBar: AppBar(
          // title: brandName(),

        ),

        body: Container(
          color: Colors.pink,
        ),
      ),
    );
  }
}

