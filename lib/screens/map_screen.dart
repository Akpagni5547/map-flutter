import 'package:flutter/material.dart';
import 'package:map_design/models/rondPoint.dart';
import 'package:map_design/screens/component/rondPointBouton.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final TextEditingController search = TextEditingController();
  RondPoint currentRondPoint = rondPoints[0];
  List<RondPoint> filteredRondPoints = [];

  void setCurrentRondPoint(RondPoint rondPoint) {
    setState(() {
      currentRondPoint = rondPoint;
    });
  }

  @override
  void initState() {
    super.initState();
    filteredRondPoints = rondPoints;
    print(currentRondPoint.sensOuest.etatColor(currentRondPoint.sensOuest.voie[0]));
  }

  int calculateColumnCount(double screenWidth, int size) {
    return screenWidth >= 300 ? size : 8;
  }

  void filterRondPoints(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredRondPoints = rondPoints;
      } else {
        filteredRondPoints = rondPoints.where((rondPoint) {
          return rondPoint.nom.toLowerCase().contains(query.toLowerCase());
        }).toList();
      }
    });
  }

  Widget buildTopSection() {
    return Container(
      height: 370,
      width: 370,
      decoration: const BoxDecoration(
        image: DecorationImage(
          //image: AssetImage("assets/images/ndokoti.png"),
          //image: AssetImage("assets/images/routeFinalGoogle1.png"),
          image: AssetImage("assets/images/routeFinalGoogle2.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: buildImagesForSides(),
    );
  }

  Widget buildImagesForSides() {
    return  Stack(children: [
                  //ouest
                Positioned(
                child: Image.asset("assets/images/BVG.png",),
                ),
                 Positioned(
                child: Image.asset("assets/images/BRG2.png",),
                ),
                Positioned(
                child: Image.asset("assets/images/BVH.png",),
                ),
                 Positioned(
                child: Image.asset("assets/images/BRH2.png",),
                ),
                Positioned(
                child: Image.asset("assets/images/BVB.png",),
                ),
                 Positioned(
                child: Image.asset("assets/images/BVB2.png",),
                ),
                Positioned(
                child: Image.asset("assets/images/BOD.png",),
                ),
                 Positioned(
                child: Image.asset("assets/images/BVD2.png",),
                ),
               /* 
                Positioned(
                bottom: 200,
                right: 25,
                child: Image.asset(currentRondPoint.sensOuest.etatColor(currentRondPoint.sensOuest.voie[0]), height: 2,),
                ),
                Positioned(
                bottom: 189,
                right: 25,
                child: Image.asset(currentRondPoint.sensOuest.etatColor(currentRondPoint.sensOuest.voie[1]), height: 2),
                ),
                Positioned(
                bottom: 177,
                right: 25,
                child: Image.asset(currentRondPoint.sensOuest.etatColor(currentRondPoint.sensOuest.voie[2]), height: 2),
                ),
                Positioned(
                bottom: 166,
                right: 25,
                child: Image.asset(currentRondPoint.sensOuest.etatColor(currentRondPoint.sensOuest.voie[3]), height: 2),
                ),
                //est
                Positioned(
                bottom: 200,
                left: 20,
                child: Image.asset(currentRondPoint.sensEst.etatColor(currentRondPoint.sensEst.voie[0]), height: 2),
                ),
                Positioned(
                bottom: 189,
                left: 20,
                child: Image.asset(currentRondPoint.sensEst.etatColor(currentRondPoint.sensEst.voie[1]), height: 2),
                ),
                Positioned(
                bottom: 177,
                left: 20,
                child: Image.asset(currentRondPoint.sensEst.etatColor(currentRondPoint.sensEst.voie[2]), height: 2),
                ),
                Positioned(
                bottom: 166,
                left: 20,
                child: Image.asset(currentRondPoint.sensEst.etatColor(currentRondPoint.sensEst.voie[3]), height: 2),
                ),

                //sud
                Positioned(
                left: 162,
                top: 9,
                child: Image.asset(currentRondPoint.sensSud.etatColor(currentRondPoint.sensSud.voie[0]), height: 110),
                ),
                Positioned(
                left: 173,
                top: 9,
                child: Image.asset(currentRondPoint.sensSud.etatColor(currentRondPoint.sensSud.voie[1]), height: 110),
                ),
                Positioned(
                left: 196,
                top: 9,
                child: Image.asset(currentRondPoint.sensSud.etatColor(currentRondPoint.sensSud.voie[2]), height: 110),
                ),
                Positioned(
                left: 185,
                top: 9,
                child: Image.asset(currentRondPoint.sensSud.etatColor(currentRondPoint.sensSud.voie[3]), height: 110),
                ),
                //nord
                Positioned(
                left: 162,
                bottom: 9,
                child: Image.asset(currentRondPoint.sensNord.etatColor(currentRondPoint.sensNord.voie[0]), height: 110),
                ),
                Positioned(
                left: 173,
                bottom: 9,
                child: Image.asset(currentRondPoint.sensNord.etatColor(currentRondPoint.sensNord.voie[1]), height: 110),
                ),
                Positioned(
                left: 196,
                bottom: 9,
                child: Image.asset(currentRondPoint.sensNord.etatColor(currentRondPoint.sensNord.voie[2]), height: 110),
                ),
                Positioned(
                left: 185,
                bottom: 9,
                child: Image.asset(currentRondPoint.sensNord.etatColor(currentRondPoint.sensNord.voie[3]), height: 110),
                ), */
          ]);       
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildTopSection(),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 37),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0XFF31be62),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                        ),
                        Expanded(
                          child: Container(
                            child: GridView.builder(
                              itemCount: calculateColumnCount(
                                MediaQuery.of(context).size.width,
                                filteredRondPoints.length,
                              ),
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                                childAspectRatio: 1.2,
                              ),
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                  onTap: () {
                                    setCurrentRondPoint(filteredRondPoints[index]);
                                  },
                                  child: RoundPointBouton(
                                    rondPoint: filteredRondPoints[index],
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 22, right: 22),
                    child: Container(
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 6,
                            child: Container(
                              height: double.infinity,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: currentRondPoint.getColorForEtat(),
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    currentRondPoint.type +" "+ currentRondPoint.nom,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'RECHERCHER UN ROND POINT?',
                                prefixIcon: const Icon(Icons.search),
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.grey,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                              controller: search,
                              onChanged: (value) {
                                filterRondPoints(value);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
