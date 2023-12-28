import 'package:flutter/material.dart';
import 'package:map_design/models/rondPoint.dart';
import "package:flutter_screenutil/flutter_screenutil.dart";

class RoundPointBouton extends StatefulWidget {
  final RondPoint rondPoint;
  

  RoundPointBouton({required this.rondPoint, });

  @override
  _RoundPointBoutonState createState() => _RoundPointBoutonState();
}

class _RoundPointBoutonState extends State<RoundPointBouton> {
  @override
  Widget build(BuildContext context) {
    RondPoint rondPoint = widget.rondPoint;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: 5.w, vertical: 6.h),
        decoration: BoxDecoration(
            color: rondPoint.getColorForEtat(),
            borderRadius: BorderRadius.all(
                Radius.circular(15.r))),
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            Text(
              rondPoint.type,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: rondPoint.fontSze().sp,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              rondPoint.nom,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 8.7.sp,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
