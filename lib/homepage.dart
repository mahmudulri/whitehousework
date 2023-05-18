import 'dart:io';
import 'dart:math';

import 'package:applovin_ads/banner.dart';
import 'package:applovin_ads/video.dart';
import 'package:applovin_max/applovin_max.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    // initializeInterstitialAds();
    // gonow();

    super.initState();
  }

  var _interstitialRetryAttempt = 0;
  var _rewardedAdRetryAttempt = 0;

  // gonow() async {
  //   await Future.delayed(Duration(seconds: 900));
  //   Get.back();
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Get.to(() => BannerAds());
              },
              child: Text("Banner Ads"),
            ),
            SizedBox(
              height: 20,
            ),
            // ElevatedButton(
            //   onPressed: () async {
            //     bool isReady =
            //         (await AppLovinMAX.isRewardedAdReady("59eb88a36ed1b347"))!;
            //     if (isReady) {
            //       AppLovinMAX.showRewardedAd("59eb88a36ed1b347");
            //     }
            //   },
            //   child: Text("Load vide Ads"),
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     initializeRewardedAds();
            //   },
            //   child: Text("Play video Ads"),
            // ),
            ElevatedButton(
              onPressed: () {
                // initializeInterstitialAds();
              },
              child: Text("Load Video Ads"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                // bool isReady = (await AppLovinMAX.isInterstitialReady(
                //     "68d0302aa2afa7d3"))!;
                // if (isReady) {
                //   AppLovinMAX.showInterstitial("68d0302aa2afa7d3");
                // }
                // Get.to(() => Videoads());
                // gonow();
              },
              child: Text("Video ads"),
            ),
          ],
        ),
      ),
    ));
  }

  void initializeInterstitialAds() {
    AppLovinMAX.setInterstitialListener(InterstitialListener(
      onAdLoadedCallback: (ad) {
        // Interstitial ad is ready to be shown. AppLovinMAX.isInterstitialReady(_interstitial_ad_unit_id) will now return 'true'
        print('Interstitial ad loaded from ' + ad.networkName);
        Fluttertoast.showToast(
          msg: "Add loaded",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.TOP_LEFT,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );

        // Reset retry attempt
        _interstitialRetryAttempt = 0;
      },
      onAdLoadFailedCallback: (adUnitId, error) {
        // Interstitial ad failed to load
        // We recommend retrying with exponentially higher delays up to a maximum delay (in this case 64 seconds)
        _interstitialRetryAttempt = _interstitialRetryAttempt + 1;

        int retryDelay = pow(2, min(6, _interstitialRetryAttempt)).toInt();

        print('Interstitial ad failed to load with code ' +
            error.code.toString() +
            ' - retrying in ' +
            retryDelay.toString() +
            's');

        Future.delayed(Duration(milliseconds: retryDelay * 1000), () {
          AppLovinMAX.loadInterstitial("68d0302aa2afa7d3");
        });
      },
      onAdDisplayedCallback: (ad) {},
      onAdDisplayFailedCallback: (ad, error) {},
      onAdClickedCallback: (ad) {},
      onAdHiddenCallback: (ad) {},
    ));

    // Load the first interstitial
    AppLovinMAX.loadInterstitial("68d0302aa2afa7d3");
  }

  // void initializeRewardedAds() {
  //   AppLovinMAX.setRewardedAdListener(RewardedAdListener(
  //       onAdLoadedCallback: (ad) {
  //         // Rewarded ad is ready to be shown. AppLovinMAX.isRewardedAdReady(_rewarded_ad_unit_id) will now return 'true'
  //         print('Rewarded ad loaded from ' + ad.networkName);

  //         // Reset retry attempt
  //         _rewardedAdRetryAttempt = 0;
  //       },
  //       onAdLoadFailedCallback: (adUnitId, error) {
  //         // Rewarded ad failed to load
  //         // We recommend retrying with exponentially higher delays up to a maximum delay (in this case 64 seconds)
  //         _rewardedAdRetryAttempt = _rewardedAdRetryAttempt + 1;

  //         int retryDelay = pow(2, min(6, _rewardedAdRetryAttempt)).toInt();
  //         print('Rewarded ad failed to load with code ' +
  //             error.code.toString() +
  //             ' - retrying in ' +
  //             retryDelay.toString() +
  //             's');

  //         Future.delayed(Duration(milliseconds: retryDelay * 1000), () {
  //           AppLovinMAX.loadRewardedAd("59eb88a36ed1b347");
  //         });
  //       },
  //       onAdDisplayedCallback: (ad) {},
  //       onAdDisplayFailedCallback: (ad, error) {},
  //       onAdClickedCallback: (ad) {},
  //       onAdHiddenCallback: (ad) {},
  //       onAdReceivedRewardCallback: (ad, reward) {}));
  // }
}
