import 'dart:math';

import 'package:flutter/material.dart';
import 'package:applovin_max/applovin_max.dart';

class Videoads extends StatelessWidget {
  Videoads({super.key});

  var _interstitialRetryAttempt = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            // MaxAdView(
            //   adUnitId: "bbf3c49f9e4cca49",
            //   adFormat: AdFormat.banner,
            //   listener: AdViewAdListener(
            //       onAdLoadedCallback: (ad) {},
            //       onAdLoadFailedCallback: (adUnitId, error) {},
            //       onAdClickedCallback: (ad) {},
            //       onAdExpandedCallback: (ad) {},
            //       onAdCollapsedCallback: (ad) {}),
            // ),
          ],
        ),
      ),
    );
  }
}
