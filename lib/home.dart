import 'package:flutter/material.dart';
import 'package:tarsis_site/useful/paleta.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.025),
        child: Container(
            height: MediaQuery.of(context).size.height * 0.72,
            //decoration: const BoxDecoration(color: Colors.blue),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Coluna da esquerda
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width * 0.13,
                    //decoration: const BoxDecoration(color: Colors.orange),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: PaletaCores.mainCinza,
                              border: Border.all(
                                  color: PaletaCores.mainCinza, width: 1)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image(
                              image:
                                  const AssetImage('assets/images/tarsis.jpg'),
                              height: MediaQuery.of(context).size.height * 0.33,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01),
                        const Text(
                          'Társis César Lira Guerra',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                              fontSize: 16),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01),
                        const Text(
                          'Físico, designer, programador e animador 3D',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical:
                                  MediaQuery.of(context).size.height * 0.01,
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.025),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image(
                                image:
                                    const AssetImage('assets/images/git.png'),
                                height:
                                    MediaQuery.of(context).size.height * 0.025,
                              ),
                              Image(
                                image: const AssetImage('assets/images/ig.png'),
                                height:
                                    MediaQuery.of(context).size.height * 0.025,
                              ),
                              Image(
                                image: const AssetImage('assets/images/in.png'),
                                height:
                                    MediaQuery.of(context).size.height * 0.025,
                              ),
                            ],
                          ),
                        ),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Projetos Recentes',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: PaletaCores.mainCinza,
                            border: Border.all(
                                color: PaletaCores.mainCinza, width: 1),
                          ),
                          height: MediaQuery.of(context).size.height * 0.17,
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image(
                                  image: AssetImage('assets/images/pedro.png'),
                                  width: double.infinity,
                                  height: MediaQuery.of(context).size.height,
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
                  ),

                  Container(
                    height: double.infinity,
                    width: MediaQuery.of(context).size.width * 0.55,
                    //decoration: const BoxDecoration(color: Colors.brown),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'O que eu faço?',
                          style: TextStyle(
                              fontSize: 36,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.25,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: PaletaCores.mainCinza,
                              borderRadius: BorderRadius.circular(30)),
                          padding: EdgeInsets.symmetric(
                              vertical:
                                  MediaQuery.of(context).size.height * 0.01,
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.002),
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
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04),
                        const Text(
                          'Minha Habilidades',
                          style: TextStyle(
                              fontSize: 36,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.25,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: PaletaCores.mainCinza,
                              borderRadius: BorderRadius.circular(30)),
                          padding: EdgeInsets.symmetric(
                              vertical:
                                  MediaQuery.of(context).size.height * 0.01,
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.002),
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
                ])));
  }

  Widget _buildSkillCard(BuildContext context,
      {required String imagePath, required String label}) {
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
                height: MediaQuery.of(context).size.height * 0.05,
                color: Colors.white,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Text(
                label,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height * 0.03,
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
                height: MediaQuery.of(context).size.height * 0.09,
                color: Colors.white,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Text(
                label,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
