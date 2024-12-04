import 'package:flutter/material.dart';
import 'package:tarsis_site/useful/paleta.dart';
import 'package:url_launcher/url_launcher.dart';

class BodySite extends StatefulWidget {
  const BodySite({super.key});

  @override
  State<BodySite> createState() => _BodySiteState();
}

class _BodySiteState extends State<BodySite> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isTablet = screenWidth >= 780 && screenWidth < 1250;
    final isMenor = screenWidth < 780;
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
          link1: Uri.parse('https://pedrogois.com'),
          link2: Uri.parse('https://www.getfluentidiomas.com.br/'),
          link3: Uri.parse('https://vamossaradar.com'),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        sectionSite(
          context,
          nameSection: 'Projetos de Web Development',
          imagePath: 'assets/images/pedrosite.png',
          link1: Uri.parse('https://pedrogois.com'),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        sectionSite(
          context,
          nameSection: 'Projetos de Unity Development',
          imagePath: 'assets/images/robo1.png',
          imagePath2: 'assets/images/robo2.png',
          link1: Uri.parse(
              'https://play.google.com/store/apps/details?id=br.robociencia.rocketrc'),
          link2: Uri.parse(
              'https://play.google.com/store/apps/details?id=br.robociencia.rocketrc'),
        ),
      ],
    );
  }
}

Widget sectionSite(
  BuildContext context, {
  required String nameSection,
  required String imagePath,
  String? imagePath2,
  String? imagePath3,
  required Uri link1,
  Uri? link2,
  Uri? link3,
}) {
  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Não foi possível abrir o link $url');
    }
  }

  Widget buildImageButton(String imagePath, Uri link) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isTablet = screenWidth >= 780 && screenWidth < 1250;
    final isMenor = screenWidth < 780;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: PaletaCores.mainCinza,
        border: Border.all(color: PaletaCores.mainCinza, width: 1),
      ),
      height: screenHeight * 0.35,
      width: isMenor ? screenWidth * 0.3 : screenWidth * 0.2,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              imagePath,
              width: isMenor ? screenWidth * 0.3 : screenWidth * 0.2,
              height: screenHeight * 0.35,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            right: 10,
            bottom: 20,
            child: ElevatedButton(
              onPressed: () => _launchUrl(link),
              style: ElevatedButton.styleFrom(
                backgroundColor: PaletaCores.mainCinza,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
    );
  }

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
          buildImageButton(imagePath, link1),
          if (imagePath2 != null && link2 != null)
            SizedBox(width: MediaQuery.of(context).size.width * 0.01),
          if (imagePath2 != null && link2 != null)
            buildImageButton(imagePath2, link2),
          if (imagePath3 != null && link3 != null)
            SizedBox(width: MediaQuery.of(context).size.width * 0.01),
          if (imagePath3 != null && link3 != null)
            buildImageButton(imagePath3, link3),
        ],
      ),
    ],
  );
}
