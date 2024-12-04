import 'package:flutter/material.dart';
import 'package:social_media_buttons/social_media_button.dart';
import 'package:tarsis_site/useful/paleta.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isTablet = screenWidth >= 780 && screenWidth < 1250;
    final isMenor = screenWidth < 780;
    return Padding(
        padding: EdgeInsets.symmetric(vertical: screenWidth * 0.025),
        child: isMenor ? celular(context) : outrosDispo(context));
  }

  Widget outrosDispo(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isTablet = screenWidth >= 780 && screenWidth < 1250;
    final isMenor = screenWidth < 780;
    return Container(
        height: screenHeight * 0.72,
        //decoration: const BoxDecoration(color: Colors.blue),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          // Coluna da esquerda
          Container(
            //height: double.infinity,
            width: isTablet ? screenWidth * 0.2 : screenWidth * 0.13,
            //decoration: const BoxDecoration(color: Colors.orange),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: PaletaCores.mainCinza,
                      border:
                          Border.all(color: PaletaCores.mainCinza, width: 1)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image(
                      image: const AssetImage('assets/images/tarsis.jpg'),
                      height: screenHeight * 0.3,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  'Társis César Lira Guerra',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                      fontSize:
                          isTablet ? screenWidth * 0.015 : screenWidth * 0.01),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Físico, designer, programador e animador 3D',
                  style: TextStyle(
                      fontSize:
                          isTablet ? screenWidth * 0.015 : screenWidth * 0.008,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: screenWidth * 0.025),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SocialMediaButton.github(
                        url: "https://github.com/TarsisGuerra",
                        size:
                            isTablet ? screenWidth * 0.02 : screenWidth * 0.015,
                      ),
                      SocialMediaButton.instagram(
                        url: "https://www.instagram.com/tarsislira/",
                        size:
                            isTablet ? screenWidth * 0.02 : screenWidth * 0.015,
                      ),
                      SocialMediaButton.linkedin(
                        url: "https://www.linkedin.com/in/tarsisguerra/",
                        size:
                            isTablet ? screenWidth * 0.02 : screenWidth * 0.015,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Projetos Recentes',
                    style: TextStyle(
                      fontSize:
                          isTablet ? screenWidth * 0.02 : screenWidth * 0.01,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: PaletaCores.mainCinza,
                    border: Border.all(color: PaletaCores.mainCinza, width: 1),
                  ),
                  height: screenHeight * 0.15,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image(
                          image: AssetImage('assets/images/pedro.png'),
                          width: double.infinity,
                          height: screenHeight * 0.15,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        right: 15,
                        bottom: 10,
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
                          child: Text(
                            'Conferir',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: screenHeight * 0.015,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Container(
            height: double.infinity,
            width: isTablet ? screenWidth * 0.6 : screenWidth * 0.55,
            //decoration: const BoxDecoration(color: Colors.brown),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'O que eu faço?',
                  style: TextStyle(
                      fontSize: screenHeight * 0.045,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: PaletaCores.mainCinza,
                      borderRadius: BorderRadius.circular(30)),
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.01,
                      horizontal: MediaQuery.of(context).size.width * 0.002),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildSkillCard(
                        context,
                        imagePath: 'assets/images/design.png',
                        label: 'Web Design',
                      ),
                      _buildSkillCard(
                        context,
                        imagePath: 'assets/images/web.png',
                        label: 'Web Development',
                      ),
                      _buildSkillCard(
                        context,
                        imagePath: 'assets/images/unity.png',
                        label: 'Unity Development',
                      ),
                      _buildSkillCard(
                        context,
                        imagePath: 'assets/images/maya.png',
                        label: 'Maya 3D Animation',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                Text(
                  'Minha Habilidades',
                  style: TextStyle(
                      fontSize: screenHeight * 0.045,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(height: screenHeight * 0.01),
                Container(
                  height: screenHeight * 0.2,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: PaletaCores.mainCinza,
                      borderRadius: BorderRadius.circular(30)),
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.01,
                      horizontal: MediaQuery.of(context).size.width * 0.002),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildSkillCard2(
                        context,
                        imagePath: 'assets/images/flutterlogo.png',
                        label: 'FLUTTER',
                      ),
                      _buildSkillCard2(
                        context,
                        imagePath: 'assets/images/unitylogo.png',
                        label: 'UNITY',
                      ),
                      _buildSkillCard2(
                        context,
                        imagePath: 'assets/images/mayalogo.png',
                        label: 'MAYA',
                      ),
                      _buildSkillCard2(
                        context,
                        imagePath: 'assets/images/figmalogo.png',
                        label: 'FIGMA',
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ]));
  }

  Widget celular(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isTablet = screenWidth >= 780 && screenWidth < 1250;
    final isMenor = screenWidth < 780;
    return Column(
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: PaletaCores.mainCinza,
                  border: Border.all(color: PaletaCores.mainCinza, width: 1)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image(
                  image: const AssetImage('assets/images/tarsis.jpg'),
                  height: screenHeight * 0.2,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.02),
            Column(
              children: [
                Text(
                  'Társis César Lira Guerra',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                      fontSize: screenWidth * 0.03),
                  textAlign: TextAlign.left,
                ),
                Text(
                  'Físico, designer, programador e animador 3D',
                  style: TextStyle(
                      fontSize: screenWidth * 0.025,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.left,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SocialMediaButton.github(
                        url: "https://github.com/TarsisGuerra",
                        size: screenWidth * 0.05,
                      ),
                      SocialMediaButton.instagram(
                        url: "https://www.instagram.com/tarsislira/",
                        size: screenWidth * 0.05,
                      ),
                      SocialMediaButton.linkedin(
                        url: "https://www.linkedin.com/in/tarsisguerra/",
                        size: screenWidth * 0.05,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        Text(
          'O que eu faço?',
          style: TextStyle(
              fontSize: screenHeight * 0.025,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        Container(
          height: MediaQuery.of(context).size.height * 0.2,
          width: double.infinity,
          decoration: BoxDecoration(
              color: PaletaCores.mainCinza,
              borderRadius: BorderRadius.circular(30)),
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.01,
              horizontal: MediaQuery.of(context).size.width * 0.0015),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildSkillCard(
                context,
                imagePath: 'assets/images/design.png',
                label: 'Web Design',
              ),
              _buildSkillCard(
                context,
                imagePath: 'assets/images/web.png',
                label: 'Web Development',
              ),
              _buildSkillCard(
                context,
                imagePath: 'assets/images/unity.png',
                label: 'Unity Development',
              ),
              _buildSkillCard(
                context,
                imagePath: 'assets/images/maya.png',
                label: 'Maya 3D Animation',
              ),
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.04),
        Text(
          'Minha Habilidades',
          style: TextStyle(
              fontSize: screenHeight * 0.025,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400),
        ),
        SizedBox(height: screenHeight * 0.01),
        Container(
          height: screenHeight * 0.2,
          width: double.infinity,
          decoration: BoxDecoration(
              color: PaletaCores.mainCinza,
              borderRadius: BorderRadius.circular(30)),
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.01,
              horizontal: MediaQuery.of(context).size.width * 0.002),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildSkillCard2(
                context,
                imagePath: 'assets/images/flutterlogo.png',
                label: 'FLUTTER',
              ),
              _buildSkillCard2(
                context,
                imagePath: 'assets/images/unitylogo.png',
                label: 'UNITY',
              ),
              _buildSkillCard2(
                context,
                imagePath: 'assets/images/mayalogo.png',
                label: 'MAYA',
              ),
              _buildSkillCard2(
                context,
                imagePath: 'assets/images/figmalogo.png',
                label: 'FIGMA',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSkillCard(BuildContext context,
      {required String imagePath, required String label}) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isTablet = screenWidth >= 780 && screenWidth < 1250;
    final isMenor = screenWidth < 780;
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: PaletaCores.secCinza,
          borderRadius: BorderRadius.circular(30),
        ),
        height: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                imagePath,
                height: isMenor
                    ? screenHeight * 0.03
                    : MediaQuery.of(context).size.height * 0.05,
                color: Colors.white,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Text(
                label,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: isTablet
                        ? screenWidth * 0.02
                        : isMenor
                            ? screenWidth * 0.029
                            : screenWidth * 0.013,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w200),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSkillCard2(BuildContext context,
      {required String imagePath, required String label}) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isTablet = screenWidth >= 780 && screenWidth < 1250;
    final isMenor = screenWidth < 780;
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        height: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                imagePath,
                height: isMenor ? screenHeight * 0.06 : screenHeight * 0.065,
                color: Colors.white,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Align(
                alignment: Alignment.center,
                child: Text(
                  label,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: isTablet
                          ? screenWidth * 0.02
                          : isMenor
                              ? screenWidth * 0.03
                              : screenWidth * 0.012,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
