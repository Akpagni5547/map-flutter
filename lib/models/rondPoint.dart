import 'package:flutter/material.dart';

class RondPoint {
  String nom;
  String type;
  String etat;
  int nombreDeVoies;
  Sens sensOuest;
  Sens sensEst;
  Sens sensSud;
  Sens sensNord;
  bool police;
  bool accident;

  RondPoint({
    required this.nom,
    required this.type,
    required this.etat,
    required this.nombreDeVoies,
    required this.sensOuest,
    required this.sensEst,
    required this.sensSud,
    required this.sensNord,
    this.police = false,
    this.accident = false,
  });

  Color getColorForEtat() {
    // Vous pouvez définir des correspondances d'état ici et renvoyer la couleur appropriée.
    // Par exemple, si l'état est "normal", renvoyer une couleur verte, sinon renvoyer une autre couleur.

    if (etat == "normal") {
      return Color(0XFF197138);
    } else if (etat == "ralentissement") {
      return Color(0XFFfa914e);
    } else if (etat == "bloqué") {
      return Colors.red;
    } else {
      return Colors.grey; // Couleur par défaut pour les autres états
    }
  }


  double fontSze() {
    // Vous pouvez définir des correspondances d'état ici et renvoyer la couleur appropriée.
    // Par exemple, si l'état est "normal", renvoyer une couleur verte, sinon renvoyer une autre couleur.

    if (type == "ROND POINT") {
      return 7.6;
    }else {
      return 7; // Couleur par défaut pour les autres états
    }
  }
}


class Sens {
  String sens;
  String etat;
  bool accident;
  List<String> voie;

  Sens({
    required this.sens,
    required this.etat,
    required this.voie,
    this.accident = false,
  });

  String etatColor( String vo) {
    // Créez une correspondance entre les états et les images
    Map<String, String> etatToImage = {
      "bloqué": 'assets/images/bande_rouge.png',
      "normal": 'assets/images/bande_verte.png',
      "ralentissement": 'assets/images/bande_orange.png',
    };
    Map<String, String> etatToImage2 = {
      "bloqué": 'assets/images/bande_rouge2.png',
      "normal": 'assets/images/bande_verte2.png',
      "ralentissement": 'assets/images/bande_orange2.png',
    };

    if (sens == "nord" || sens == "sud") {
    return etatToImage2[vo] ?? 'assets/images/bande_verte2.png';
    } else if (sens == "est" || sens == "ouest") {
      return etatToImage[vo] ?? 'assets/images/bande_verte.png';
    } else {
      return 'assets/images/bande_verte.png';
    }
  }
}

    List<RondPoint> rondPoints = [
      RondPoint(nom: 'NDOKOTI', type: "ROND POINT", etat: 'bloqué', nombreDeVoies: 4,
       sensOuest:sensl[7]  //ouest
       , sensEst: sensl[6]//est
       , sensSud: sensl[4]//sud
       , sensNord: sensl[4]//nord
       , ),
      RondPoint(nom: 'DEIDO', type: "ROND POINT", etat: 'bloqué', nombreDeVoies: 4,
       sensOuest:sensl[7]  //ouest
       , sensEst: sensl[6]//est
       , sensSud: sensl[4]//sud
       , sensNord: sensl[5]//nord
       , ),
      RondPoint(nom: 'AKWA', type: "ROND POINT", etat: 'bloqué', nombreDeVoies: 4, 
       sensOuest:sensl[6]  //ouest
       , sensEst: sensl[7]//est
       , sensSud: sensl[5]//sud
       , sensNord: sensl[4]//nord
       ,  ),
      RondPoint(nom: 'BONADJO', type: "ROND POINT", etat: 'normal', nombreDeVoies: 4,
       sensOuest:sensl[3]  //ouest
       , sensEst: sensl[2]//est
       , sensSud: sensl[1]//sud
       , sensNord: sensl[1]//nord
       , ),
      RondPoint(nom: 'NEW BELL', type: "ROND POINT", etat: 'normal', nombreDeVoies: 4,
       sensOuest:sensl[2]  //ouest
       , sensEst: sensl[3]//est
       , sensSud: sensl[0]//sud
       , sensNord: sensl[1]//nord
       , ),
      RondPoint(nom: 'YASSA', type: "ROND POINT", etat: 'ralentissement', nombreDeVoies: 4,
       sensOuest:sensl[10]  //ouest
       , sensEst: sensl[11]//est
       , sensSud: sensl[4]//sud
       , sensNord: sensl[5]//nord
       , ),
      RondPoint(nom: 'PK 14', type: "ROND POINT", etat: 'normal', nombreDeVoies: 4,
       sensOuest:sensl[2]  //ouest
       , sensEst: sensl[3]//est
       , sensSud: sensl[0]//sud
       , sensNord: sensl[0]//nord
       , ),
      RondPoint(nom: 'BONAPRIS O', type: "ROND POINT", etat: 'ralentissement', nombreDeVoies: 4,
       sensOuest:sensl[10]  //ouest
       , sensEst: sensl[11]//est
       , sensSud: sensl[5]//sud
       , sensNord: sensl[5]//nord
       , ),
      RondPoint(nom: "BONA'SADDI", type: "ROND POINT", etat: 'ralentissement', nombreDeVoies: 4,
       sensOuest:sensl[11]  //ouest
       , sensEst: sensl[10]//est
       , sensSud: sensl[9]//sud
       , sensNord: sensl[9]//nord
       , ),
      RondPoint(nom: 'DJOSS', type: "ECHANGEUR", etat: 'normal', nombreDeVoies: 4,
       sensOuest:sensl[3]  //ouest
       , sensEst: sensl[2]//est
       , sensSud: sensl[1]//sud
       , sensNord: sensl[0]//nord
       , ),
      RondPoint(nom: 'BONANBERI', type: "ENTRÉE OUSET", etat: 'bloqué', nombreDeVoies: 4, 
       sensOuest:sensl[6]  //ouest
       , sensEst: sensl[7]//est
       , sensSud: sensl[5]//sud
       , sensNord: sensl[5]//nord
       , ),
      RondPoint(nom: 'ELF', type: "ENTRÉE EST", etat: 'bloqué', nombreDeVoies: 4,
       sensOuest:sensl[6]  //ouest
       , sensEst: sensl[6]//est
       , sensSud: sensl[4]//sud
       , sensNord: sensl[5]//nord
       , ),
/*    RondPoint(nom: 'LOGPOM', type: "ROND POINT", etat: 'normal', nombreDeVoies: 4, sensOuest: '', sensEst: '', sensSud: '', sensNord: '', ),
      RondPoint(nom: 'NYALLA', type: "ROND POINT", etat: 'normal', nombreDeVoies: 4, sensOuest: '', sensEst: '', sensSud: '', sensNord: '', ),
      RondPoint(nom: 'JAPOMA', type: "ROND POINT", etat: 'ralentissement', nombreDeVoies: 4, sensOuest: '', sensEst: '', sensSud: '', sensNord: '', ), */
    ];
List<Sens> sensl = [
  // normal
      Sens(sens: 'nord', etat: 'normal', voie: ["bloqué", "normal", "normal", "ralentissement"] ),
      Sens(sens: 'sud', etat: 'normal', voie: ["ralentissement", "normal", "normal", "normal"] ),
      Sens(sens: 'est', etat: 'normal', voie: ["normal", "normal", "normal","normal"] ),
      Sens(sens: 'ouest', etat: 'normal', voie: ["normal", "normal", "ralentissement", "normal"] ),
      //bloqué
      Sens(sens: 'nord', etat: 'bloqué', voie: ["bloqué", "normal", "bloqué", "ralentissement"] ),
      Sens(sens: 'sud', etat: 'bloqué', voie: ["ralentissement", "normal", "bloqué","bloqué"] ),
      Sens(sens: 'est', etat: 'bloqué', voie: ["bloqué", "bloqué", "ralentissement","bloqué"] ),
      Sens(sens: 'ouest', etat: 'bloqué', voie: ["bloqué", "ralentissement", "bloqué", "ralentissement"] ),
      //ralentissment
      Sens(sens: 'nord', etat: 'ralentissement', voie: ["bloqué", "ralentissement", "ralentissement","ralentissement"] ),
      Sens(sens: 'sud', etat: 'ralentissement', voie: ["ralentissement", "normal", "ralentissement","ralentissement"] ),
      Sens(sens: 'est', etat: 'ralentissement', voie: ["normal", "bloqué", "ralentissement","ralentissement"] ),
      Sens(sens: 'ouest', etat: 'ralentissement', voie: ["ralentissement", "normal", "ralentissement","bloqué"] ),
    ];