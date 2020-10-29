import 'package:flutter/material.dart';
import 'package:quickbloxSample/views/core/theme.dart';
import 'package:quickbloxSample/widgets/image_viewer/normal_viewer.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AspectRatio(
            aspectRatio: 1.2,
            child: NormalViewer(
              imgName: "qb_logo.png",
            ),
          ),
        ],
      ),
    );
  }
}
