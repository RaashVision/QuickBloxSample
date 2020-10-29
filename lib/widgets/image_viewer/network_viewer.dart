import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NetWorkImg extends StatelessWidget {
  String url;
  BoxFit fit;
  double height;
  double width;
  double cornerRadius;
  NetWorkImg(
      {this.url,
      this.fit = BoxFit.fill,
      this.height,
      this.width = 100,
      this.cornerRadius = 0.0});
  @override
  Widget build(BuildContext context) {
    return new ClipRRect(
      borderRadius: BorderRadius.circular(cornerRadius),
      child: CachedNetworkImage(
        height: height,
        width: width,
        fit: this.fit,
        imageUrl: url,
        placeholder: (context, url) => Container(
            color: Colors.transparent,
            height: height,
            width: width,
            child: Center(child: CircularProgressIndicator())),
        errorWidget: (context, url, error) => Container(
          width: width,
          color: Colors.red.withOpacity(0.5),
          child: Icon(Icons.file_upload),
        ),
      ),
    );
  }
}
