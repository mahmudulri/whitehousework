import 'package:flutter/material.dart';
import 'package:applovin_max/applovin_max.dart';
import 'package:get/get.dart';

class BannerAds extends StatefulWidget {
  const BannerAds({super.key});

  @override
  State<BannerAds> createState() => _BannerAdsState();
}

class _BannerAdsState extends State<BannerAds> {
  @override
  void initState() {
    getBack();

    super.initState();
  }

  getBack() async {
    await Future.delayed(Duration(seconds: 900));
    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            SizedBox(
              height: 50,
            ),
            MaxAdView(
              adUnitId: "1ed1333f4b8b880f",
              adFormat: AdFormat.banner,
              listener: AdViewAdListener(
                  onAdLoadedCallback: (ad) {},
                  onAdLoadFailedCallback: (adUnitId, error) {},
                  onAdClickedCallback: (ad) {},
                  onAdExpandedCallback: (ad) {},
                  onAdCollapsedCallback: (ad) {}),
            ),
            SizedBox(
              height: 20,
            ),
            MaxAdView(
              adUnitId: "f5d85a30f12ca9e2",
              adFormat: AdFormat.banner,
              listener: AdViewAdListener(
                  onAdLoadedCallback: (ad) {},
                  onAdLoadFailedCallback: (adUnitId, error) {},
                  onAdClickedCallback: (ad) {},
                  onAdExpandedCallback: (ad) {},
                  onAdCollapsedCallback: (ad) {}),
            ),
            SizedBox(
              height: 20,
            ),
            MaxAdView(
              adUnitId: "83bdc57c9cb496f0",
              adFormat: AdFormat.banner,
              listener: AdViewAdListener(
                  onAdLoadedCallback: (ad) {},
                  onAdLoadFailedCallback: (adUnitId, error) {},
                  onAdClickedCallback: (ad) {},
                  onAdExpandedCallback: (ad) {},
                  onAdCollapsedCallback: (ad) {}),
            ),
            SizedBox(
              height: 20,
            ),
            MaxAdView(
              adUnitId: "573f0b7a27daf9df",
              adFormat: AdFormat.banner,
              listener: AdViewAdListener(
                  onAdLoadedCallback: (ad) {},
                  onAdLoadFailedCallback: (adUnitId, error) {},
                  onAdClickedCallback: (ad) {},
                  onAdExpandedCallback: (ad) {},
                  onAdCollapsedCallback: (ad) {}),
            ),
            SizedBox(
              height: 20,
            ),
            MaxAdView(
              adUnitId: "c040bb6ec624ef08",
              adFormat: AdFormat.banner,
              listener: AdViewAdListener(
                  onAdLoadedCallback: (ad) {},
                  onAdLoadFailedCallback: (adUnitId, error) {},
                  onAdClickedCallback: (ad) {},
                  onAdExpandedCallback: (ad) {},
                  onAdCollapsedCallback: (ad) {}),
            ),
            SizedBox(
              height: 20,
            ),
            MaxAdView(
              adUnitId: "1ed1333f4b8b880f",
              adFormat: AdFormat.banner,
              listener: AdViewAdListener(
                  onAdLoadedCallback: (ad) {},
                  onAdLoadFailedCallback: (adUnitId, error) {},
                  onAdClickedCallback: (ad) {},
                  onAdExpandedCallback: (ad) {},
                  onAdCollapsedCallback: (ad) {}),
            ),
            SizedBox(
              height: 20,
            ),
            MaxAdView(
              adUnitId: "f5d85a30f12ca9e2",
              adFormat: AdFormat.banner,
              listener: AdViewAdListener(
                  onAdLoadedCallback: (ad) {},
                  onAdLoadFailedCallback: (adUnitId, error) {},
                  onAdClickedCallback: (ad) {},
                  onAdExpandedCallback: (ad) {},
                  onAdCollapsedCallback: (ad) {}),
            ),
            SizedBox(
              height: 20,
            ),
            MaxAdView(
              adUnitId: "83bdc57c9cb496f0",
              adFormat: AdFormat.banner,
              listener: AdViewAdListener(
                  onAdLoadedCallback: (ad) {},
                  onAdLoadFailedCallback: (adUnitId, error) {},
                  onAdClickedCallback: (ad) {},
                  onAdExpandedCallback: (ad) {},
                  onAdCollapsedCallback: (ad) {}),
            ),
            SizedBox(
              height: 20,
            ),
            MaxAdView(
              adUnitId: "573f0b7a27daf9df",
              adFormat: AdFormat.banner,
              listener: AdViewAdListener(
                  onAdLoadedCallback: (ad) {},
                  onAdLoadFailedCallback: (adUnitId, error) {},
                  onAdClickedCallback: (ad) {},
                  onAdExpandedCallback: (ad) {},
                  onAdCollapsedCallback: (ad) {}),
            ),
            SizedBox(
              height: 20,
            ),
            MaxAdView(
              adUnitId: "c040bb6ec624ef08",
              adFormat: AdFormat.banner,
              listener: AdViewAdListener(
                  onAdLoadedCallback: (ad) {},
                  onAdLoadFailedCallback: (adUnitId, error) {},
                  onAdClickedCallback: (ad) {},
                  onAdExpandedCallback: (ad) {},
                  onAdCollapsedCallback: (ad) {}),
            ),
          ],
        ),
      ),
    );
  }
}
