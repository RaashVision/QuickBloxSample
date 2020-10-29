import 'package:flutter/cupertino.dart';

class NormalViewer extends StatelessWidget {
  String imgName;
  double width;
  double height;
  Color color;
  BoxFit fit;
  double cornerBorder;
  NormalViewer(
      {this.imgName,
      this.height,
      this.width,
      this.color,
      this.cornerBorder = 0,
      this.fit = BoxFit.contain});
  @override
  Widget build(BuildContext context) {
    return new ClipRRect(
      borderRadius: BorderRadius.circular(cornerBorder),
      child: Image.asset(
        'assets/$imgName',
        color: color,
        fit: fit,
        width: width ?? MediaQuery.of(context).size.width / 1.8,
        height: height,
      ),
    );
  }
}
