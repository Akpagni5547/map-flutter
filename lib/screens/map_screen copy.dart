import 'package:flutter/material.dart';
import "package:flutter_screenutil/flutter_screenutil.dart";

class RondPoint {
  final String title;
  final Color color;

  RondPoint({required this.title, required this.color});
}

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
      final TextEditingController search = TextEditingController();
    List<RondPoint> rondPoint = [
      RondPoint(color: const Color(0XFFf8342d), title: 'NDOKOTI'),
      RondPoint(color: const Color(0XFFf8342d), title: 'DEIDO'),
      RondPoint(color: const Color(0XFFf8342d), title: 'AKWA'),
      RondPoint(color: const Color(0XFF197138), title: 'BONADJO'),
      RondPoint(color: const Color(0XFF197138), title: 'NEW BELL'),
      RondPoint(color: const Color(0XFFfa914e), title: 'YASSA'),
      RondPoint(color: const Color(0XFF197138), title: 'PK 14'),
      RondPoint(color: const Color(0XFFfa914e), title: 'BONAPRIS O'),
      RondPoint(color: const Color(0XFFfa914e), title: "BONA'SADDI"),
      RondPoint(color: const Color(0XFF197138), title: 'DJOSS'),
      RondPoint(color: const Color(0XFFf8342d), title: 'BONANBERI'),
      RondPoint(color: const Color(0XFF197138), title: 'BONABERI'),
      RondPoint(color: const Color(0XFFf8342d), title: 'ELF'),
      RondPoint(color: const Color(0XFF197138), title: 'LOGPOM'),
      RondPoint(color: const Color(0XFF197138), title: 'NYALLA'),
      RondPoint(color: const Color(0XFFfa914e), title: 'JAPOMA'),
    ];
    return Scaffold(
      body: Stack(
        // alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            height: 1.sh,
          ),
          Image.asset('assets/images/routeFinal.png'),
        Positioned(
  child: Image.asset('assets/images/bande_rouge.png', scale: 1.w),
  bottom: 440.h,
  left: 0,
  right: 15.w,
),
Positioned(
  child: Image.asset('assets/images/bande_rouge.png', width: 50.w),
  bottom: 453.h,
  left: 0,
  right: 15.w,
),
Positioned(
  child: Image.asset('assets/images/bande_rouge.png', width: 50.w),
  bottom: 466.h,
  left: 0,
  right: 15.w,
),
Positioned(
  child: Image.asset('assets/images/bande_rouge.png', width: 50.w),
  bottom: 477.h,
  left: 0,
  right: 15.w,
),

          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(
                    height: 385.h,
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(left: 20.w, right: 20.w, bottom: 15.h),
                    height: 350.h,
                    decoration: BoxDecoration(
                        color: const Color(0XFF31be62),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.r),
                            topRight: Radius.circular(15.r))),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30.h,
                        ),
                        Expanded(
                            child: GridView.builder(
                                itemCount: rondPoint.length,
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 4,
                                        crossAxisSpacing: 20.0,
                                        mainAxisSpacing: 13.0,
                                        childAspectRatio: 1.2),
                                itemBuilder: (BuildContext context, int index) {
                                  return InkWell(
                                    onTap: (){},
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 5.w, vertical: 6.h),
                                      decoration: BoxDecoration(
                                          color: rondPoint[index].color,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15.r))),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            rondPoint[index].title == "DJOSS"
                                                ? "ECHANGEUR"
                                            : rondPoint[index].title == "BONANBERI"
                                                ? "ENTREE OUEST"
                                                : rondPoint[index].title == "BONABERI"
                                                ? "ENTREE EST"
                                                : 'ROND POINT',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: rondPoint[index].title == "BONANBERI" ? 6.sp : 7.5.sp,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 1.h,
                                          ),
                                          Text(
                                            rondPoint[index].title,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: rondPoint[index].title == "BONANBERI" ? 8.7.sp : 9.sp,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }))
                      ],
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Container(
                        height: 80.h,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.r))),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 6,
                                child: Container(
                                  height: double.maxFinite,
                                  width: double.maxFinite,
                                  decoration: BoxDecoration(
                                      color: const Color(0XFF19703a),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.r))),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'ROND POINT NDOPKOTI',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 24.sp),
                                      )
                                    ],
                                  ),
                                )),
                            Expanded(
                                flex: 5,
                                child:                 TextField(
                    decoration: InputDecoration(
                      hintText: 'RECHERCHER UN ROND POINT?',
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey, // Couleur des bordures
                          width: 1.0, // Épaisseur des bordures
                        ),
                        borderRadius: BorderRadius.circular(
                            16.0), // Rayon des coins du rectangle
                      ),
                    ),
                    controller: search,
                    onChanged: (value) {
                    
                    },
                  ),)],
                        ),
                      ),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
