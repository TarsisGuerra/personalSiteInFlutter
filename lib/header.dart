import 'package:flutter/material.dart';
import 'package:tarsis_site/useful/paleta.dart';
import 'package:url_launcher/url_launcher.dart';

class Header extends StatelessWidget {
  final Uri _url = Uri.parse(
      'https://www.instagram.com/tarsislira/'); // Substitua pelo seu link.

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Não foi possível abrir o link $_url');
    }
  }

  Header({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isTablet = screenWidth >= 780 && screenWidth < 1250;
    final isMenor = screenWidth < 780;
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: PaletaCores.mainCinza),
        height: screenHeight * 0.1,
        width: double.maxFinite,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05,
                  vertical: MediaQuery.of(context).size.height * 0.025),
              child: Image(
                image: const AssetImage('assets/images/logotarsis.png'),
                height: MediaQuery.of(context).size.height * 0.5,
              ),
            ),
            isMenor
                ? Container()
                : isTablet
                    ? Container()
                    : Row(
                        children: [
                          Text(
                            'Animação',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: screenHeight * 0.02,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w100),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.01),
                          Text(
                            'Web Design',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: screenHeight * 0.02,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w100),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.01),
                          Text(
                            'Web Dev',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: screenHeight * 0.02,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w100),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.01),
                          Text(
                            'Unity Dev',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: screenHeight * 0.02,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w100),
                          )
                        ],
                      ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.025,
                horizontal: MediaQuery.of(context).size.width * 0.05,
              ),
              child: ElevatedButton(
                onPressed: _launchUrl,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ),
                child: Text(
                  'Contato',
                  style: TextStyle(
                    color: PaletaCores.mainCinza,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: screenHeight * 0.018,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
