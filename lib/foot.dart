import 'package:flutter/material.dart';
import 'package:tarsis_site/useful/paleta.dart';

class FootSite extends StatefulWidget {
  const FootSite({super.key});

  @override
  State<FootSite> createState() => _FootSiteState();
}

class _FootSiteState extends State<FootSite> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.05),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.2,
        width: double.maxFinite,
        decoration: BoxDecoration(
            color: PaletaCores.mainCinza,
            borderRadius: BorderRadius.circular(30)),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width * 0.12,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    image: const AssetImage('assets/images/logotarsis.png'),
                    height: MediaQuery.of(context).size.height * 0.07,
                  ),
                  const Text(
                    'Társis César Lira Guerra',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Poppins',
                        fontSize: 10,
                        color: Colors.white),
                  ),
                  //SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Row(
                    children: [
                      Image(
                        image: const AssetImage('assets/images/git.png'),
                        height: MediaQuery.of(context).size.height * 0.025,
                        color: Colors.white,
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                      Image(
                        image: const AssetImage('assets/images/ig.png'),
                        height: MediaQuery.of(context).size.height * 0.025,
                        color: Colors.white,
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                      Image(
                        image: const AssetImage('assets/images/in.png'),
                        height: MediaQuery.of(context).size.height * 0.025,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03),
              height: double.infinity,
              width: MediaQuery.of(context).size.width * 0.3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'E agora?',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Poppins'),
                  ),
                  const Text(
                    'Sinta-se livre para entrar em contato e vamos iniciar um projeto juntos!',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Poppins'),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Row(
                    children: [
                      const Icon(
                        Icons.email_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.005),
                      const Text(
                        'tarsisguerra@hotmail.com',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Poppins'),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
