import 'package:flutter/material.dart';
import 'package:social_media_buttons/social_media_button.dart';
import 'package:tarsis_site/useful/paleta.dart';

class FootSite extends StatefulWidget {
  const FootSite({super.key});

  @override
  State<FootSite> createState() => _FootSiteState();
}

class _FootSiteState extends State<FootSite> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isTablet = screenWidth >= 780 && screenWidth < 1250;
    final isMenor = screenWidth < 780;
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.05),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.25,
        width: double.maxFinite,
        decoration: BoxDecoration(
            color: PaletaCores.mainCinza,
            borderRadius: BorderRadius.circular(30)),
        child: Row(
          children: [
            Container(
              //color: Colors.red,
              padding: EdgeInsets.symmetric(
                horizontal: isMenor
                    ? MediaQuery.of(context).size.height * 0.005
                    : MediaQuery.of(context).size.height * 0.05,
                vertical: MediaQuery.of(context).size.height * 0.025,
              ),
              width: isTablet
                  ? screenWidth * 0.2
                  : isMenor
                      ? screenWidth * 0.4
                      : MediaQuery.of(context).size.width * 0.16,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    image: const AssetImage('assets/images/logotarsis.png'),
                    height: MediaQuery.of(context).size.height * 0.07,
                  ),
                  Text(
                    'Társis César Lira Guerra',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Poppins',
                        fontSize: isTablet
                            ? screenHeight * 0.015
                            : isMenor
                                ? screenHeight * 0.013
                                : screenHeight * 0.015,
                        color: Colors.white),
                  ),
                  //SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Row(
                    children: [
                      SocialMediaButton.github(
                        url: "https://github.com/TarsisGuerra",
                        color: Colors.white,
                        size: isTablet
                            ? screenWidth * 0.016
                            : isMenor
                                ? screenHeight * 0.03
                                : screenWidth * 0.015,
                      ),
                      SocialMediaButton.instagram(
                        url: "https://www.instagram.com/tarsislira/",
                        color: Colors.white,
                        size: isTablet
                            ? screenWidth * 0.016
                            : isMenor
                                ? screenHeight * 0.03
                                : screenWidth * 0.015,
                      ),
                      SocialMediaButton.linkedin(
                        url: "https://www.linkedin.com/in/tarsisguerra/",
                        color: Colors.white,
                        size: isTablet
                            ? screenWidth * 0.016
                            : isMenor
                                ? screenHeight * 0.03
                                : screenWidth * 0.015,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(width: screenWidth * 0.01),
            Container(
              //color: Colors.yellow,
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.035),
              height: double.infinity,
              width: isMenor
                  ? screenHeight * 0.25
                  : MediaQuery.of(context).size.width * 0.3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'E agora?',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: isMenor
                            ? screenHeight * 0.015
                            : screenHeight * 0.02,
                        fontFamily: 'Poppins'),
                  ),
                  Text(
                    'Sinta-se livre para entrar em contato e vamos iniciar um projeto juntos!',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: isMenor
                            ? screenHeight * 0.015
                            : screenHeight * 0.02,
                        fontFamily: 'Poppins'),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Row(
                    children: [
                      const Icon(
                        Icons.email_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(width: screenWidth * 0.005),
                      Text(
                        'tarsisguerra@hotmail.com',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: screenHeight * 0.015,
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
