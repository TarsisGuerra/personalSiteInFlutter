import 'package:flutter/material.dart';
import 'package:tarsis_site/useful/paleta.dart';

class BodySite extends StatefulWidget {
  const BodySite({super.key});

  @override
  State<BodySite> createState() => _BodySiteState();
}

class _BodySiteState extends State<BodySite> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        sectionSite(
          context,
          nameSection: 'Projetos de Web Design',
          imagePath: 'assets/images/pedrosite.png',
          imagePath2: 'assets/images/getsite.png',
          imagePath3: 'assets/images/vamossite.png',
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        sectionSite(
          context,
          nameSection: 'Projetos de Web Development',
          imagePath: 'assets/images/pedrosite.png',
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        sectionSite(
          context,
          nameSection: 'Projetos de Unity Development',
          imagePath: 'assets/images/robo1.png',
          imagePath2: 'assets/images/robo2.png',
        ),
      ],
    );
  }
}

Widget sectionSite(BuildContext context,
    {required String nameSection,
    required String imagePath,
    String? imagePath2,
    String? imagePath3}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        nameSection,
        style: const TextStyle(
            fontFamily: 'Poppins', fontWeight: FontWeight.w500, fontSize: 24),
      ),
      SizedBox(height: MediaQuery.of(context).size.height * 0.02),
      Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: PaletaCores.mainCinza,
              border: Border.all(color: PaletaCores.mainCinza, width: 1),
            ),
            height: MediaQuery.of(context).size.height * 0.35,
            width: MediaQuery.of(context).size.width * 0.2,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    imagePath,
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.height * 0.35,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 20,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Botão 'Contato' pressionado!");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: PaletaCores.mainCinza,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                    ),
                    child: const Text(
                      'Conferir',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.01),
          if (imagePath2 != null)
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: PaletaCores.mainCinza,
                border: Border.all(color: PaletaCores.mainCinza, width: 1),
              ),
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width * 0.2,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      imagePath2,
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.35,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    right: 10,
                    bottom: 20,
                    child: ElevatedButton(
                      onPressed: () {
                        print("Botão 'Contato' pressionado!");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: PaletaCores.mainCinza,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                      ),
                      child: const Text(
                        'Conferir',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.01),
          if (imagePath3 != null)
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: PaletaCores.mainCinza,
                border: Border.all(color: PaletaCores.mainCinza, width: 1),
              ),
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width * 0.2,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      imagePath3,
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.35,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    right: 10,
                    bottom: 20,
                    child: ElevatedButton(
                      onPressed: () {
                        print("Botão 'Contato' pressionado!");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: PaletaCores.mainCinza,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                      ),
                      child: const Text(
                        'Conferir',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    ],
  );
}
